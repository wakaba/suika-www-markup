const XHTML1NS = 'http://www.w3.org/1999/xhtml';
const HLinkNS = 'http://www.w3.org/2002/06/hlink';
const XLinkNS = 'http://www.w3.org/1999/xlink';
const tempNS = 'urn:x-suika-fam-cx:markup:temporary';

function linkizeHTML (doc) {
  var eLinks = doc.getElementsByTagNameNS (XHTML1NS, 'link');
  for (var i = 0; i < eLinks.length; i++) {
    if (eLinks[i].getAttribute ('type').toLowerCase () == 'application/x-hlink+xml'
     && eLinks[i].getAttribute ('rel') == 'stylesheet' //.match (/stylesheet/i)
     ) {
      linkizeByHTMLLinkElement (eLinks[i]);
    }
  }
}

function linkizeByHTMLLinkElement (eLink) {
  var oHLink = eLink.ownerDocument.createElementNS (XHTML1NS, 'object');
  oHLink.setAttributeNS (tempNS, 'HLinkStatus', 100);
  oHLink.setAttribute ('data', eLink.getAttribute ('href'));
  //oHLink.setAttribute ('type', 'application/xml');
  oHLink.style.display = 'block';
  oHLink.style.width = 0;
  oHLink.style.height = 0;
  oHLink.addEventListener ('load', function () {
    var hlink = oHLink.contentDocument.getElementsByTagNameNS (HLinkNS, 'hlink');
    for (var k = 0; k < hlink.length; k++) {
      linkizeElement (hlink[k]);
    }
  }, false);
  eLink.ownerDocument.documentElement.appendChild (oHLink);
}

function linkizeElement (e) {
          var elementNS = e.getAttribute ('namespace');
          var elementType = e.getAttribute ('element');
          var linkAttr = [];
          var linkAttrList = new Array ('locator', 'effect', 'actuate', 'mediaType');
          for (var i = 0; i < linkAttrList.length; i++) {
            linkAttr[linkAttrList[i]] = [];
            linkAttr[linkAttrList[i]].value = e.getAttribute (linkAttrList[i]);
            if (linkAttr[linkAttrList[i]].value
             && linkAttr[linkAttrList[i]].value.substr (0,1) == '@') {
              linkAttr[linkAttrList[i]].attrName = linkAttr[linkAttrList[i]].value.substr (1);
              linkAttr[linkAttrList[i]].value = undefined;
            }
          }
          var linkElements = document.getElementsByTagNameNS (elementNS, elementType);
          for (var i = 0; i < linkElements.length; i++) {
            var elFlag = 1*linkElements[i].getAttributeNS (tempNS, 'HLinkStatus');
            if (elFlag < 20) {
              var myLinkAttr = [];
              for (var j = 0; j < linkAttrList.length; j++) {
                myLinkAttr[linkAttrList[j]] = linkAttr[linkAttrList[j]].value;
                if (linkAttr[linkAttrList[j]].attrName
                 && linkElements[i].hasAttribute
                      (linkAttr[linkAttrList[j]].attrName)) {
                  myLinkAttr[linkAttrList[j]] = linkElements[i].getAttribute
                                                (linkAttr[linkAttrList[j]].attrName);
                }
              }
              if (myLinkAttr.locator != undefined) {
                if (myLinkAttr.effect == 'embed' && myLinkAttr.actuate == 'onLoad'
                 && myLinkAttr.locator != '' && myLinkAttr.locator.substr (0,1) != '#') {
                  var oEl = linkElements[i].ownerDocument.createElementNS (XHTML1NS, 'object');
                  linkElements[i].setAttributeNS (tempNS, 'HLinkStatus', elFlag+1);
                  oEl.setAttributeNS (tempNS, 'HLinkStatus', 100);
                  oEl.setAttribute ('data', myLinkAttr.locator);
                  oEl.setAttribute ('type', myLinkAttr.mediaType);
                  while (linkElements[i].childNodes.length) {
                    oEl.appendChild (linkElements[i].firstChild);
                    //linkElements[i].removeChild (linkElements[i].firstChild);
                  }
                  linkElements[i].appendChild(oEl);
                } else {
                  linkElements[i].setAttributeNS (tempNS, 'HLinkStatus', elFlag+1);
                  linkElements[i].setAttributeNS (XLinkNS, 'type', 'simple');
                  if (myLinkAttr.effect == 'submit' || myLinkAttr.effect == 'map')
                    myLinkAttr.effect = 'other';
                  linkElements[i].setAttributeNS (XLinkNS, 'show', myLinkAttr.effect);
                  if (myLinkAttr.actuate == 'onRequestSecondary')
                    myLinkAttr.actuate = 'other';
                  linkElements[i].setAttributeNS (XLinkNS, 'actuate', myLinkAttr.actuate);
                  if (!myLinkAttr.locator) myLinkAttr.locator = '#';
                  linkElements[i].setAttributeNS (XLinkNS, 'href', myLinkAttr.locator);
                }
              }
            }
          }
}
