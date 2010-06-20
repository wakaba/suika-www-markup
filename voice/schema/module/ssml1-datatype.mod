<!-- ...................................................................... -->
<!-- SSML 1 Datatypes Module .............................................. -->
<!-- file: ssml1-datatype.mod
     
     This is Speech Synthesis Markup Language (SSML), Version 1.
     
     Copyright 2004 Wakaba <w@suika.fam.cx>, All Rights Reserved.
     
     Permission to use, copy, modify and distribute this DTD and its
     accompanying documentation for any purpose and without fee is hereby
     granted in perpetuity, provided that the above copyright notice and
     this paragraph appear in all copies.  The copyright holders make no
     representation about the suitability of the DTD for any purpose.
     
     It is provided "as is" without expressed or implied warranty.
     
     Revision: 2004-09-16T04:03:37+00:00 (Generated by mkdtds/1.06)
     
     This DTD module is identified by the SYSTEM identifier:
     
       SYSTEM "http://suika.fam.cx/www/markup/voice/schema/module/ssml1-datatype.mod"
     
     ...................................................................... -->

<!-- Datatypes

     This module defines containers for the datatypes.
-->

<!-- An alphabet name.  /(ipa|x-.*)/. -->
<!ENTITY % ssml1.alphabet.datatype "CDATA">

<!-- List of whitespace separated contourpoints. -->
<!ENTITY % ssml1.contour.datatype "CDATA">

<!-- (Number%,pitch.datatype) -->
<!ENTITY % ssml1.contourpoint.datatype "CDATA">

<!-- Duration.  CSS2 <times>.  /(\+)?([0-9]*\.)?[0-9]+(ms|s)/. -->
<!ENTITY % ssml1.duration.datatype "CDATA">

<!ENTITY % ssml1.gender.datatype "(male|famale|neutral)">

<!-- Descriptive values for height. -->
<!ENTITY % ssml1.height.scale.datatype "(x-high|high|medium|low|x-low|default)">

<!-- /([0-9]+|[0-9]+.[0-9]*|[0-9]*.[0-9]+)Hz/. -->
<!ENTITY % ssml1.hertz.number.datatype "CDATA">

<!-- /[+\-]([0-9]+|[0-9]+.[0-9]*|[0-9]*.[0-9]+)Hz/. -->
<!ENTITY % ssml1.hertz.relative.datatype "CDATA">

<!-- An integer. -->
<!ENTITY % ssml1.integer.datatype "CDATA">

<!ENTITY % ssml1.level.datatype "(strong|moderate|none|reduced)">

<!-- An xsd:decimal more than or equal to zero -->
<!ENTITY % ssml1.number.datatype "CDATA">

<!-- /[+\-]?([0-9]+|[0-9]+.[0-9]*|[0-9]*.[0-9]+)%/. -->
<!ENTITY % ssml1.percent.datatype "CDATA">

<!-- Union of herz.number, herz.relative, percent, semitone or height.scale. -->
<!ENTITY % ssml1.pitch.datatype "CDATA">

<!-- Union of herz.number, herz.relative, percent, semitone or height.scale. -->
<!ENTITY % ssml1.range.datatype "CDATA">

<!-- Union of number, percent or speed.scale. -->
<!ENTITY % ssml1.rate.datatype "CDATA">

<!-- /[+\-]([0-9]+|[0-9]+.[0-9]*|[0-9]*.[0-9]+)/. -->
<!ENTITY % ssml1.relative.datatype "CDATA">

<!-- /[+\-]([0-9]+|[0-9]+.[0-9]*|[0-9]*.[0-9]+)st/. -->
<!ENTITY % ssml1.semitone.datatype "CDATA">

<!-- Descriptive values for speed. -->
<!ENTITY % ssml1.speed.scale.datatype "(x-fast|fast|medium|slow|x-slow|default)">

<!ENTITY % ssml1.strength.datatype "(none|x-weak|weak|medium|strong|x-strong)">

<!-- Version.  Must be "1.0". -->
<!ENTITY % ssml1.version.datatype "NMTOKEN">

<!-- /\S+/. -->
<!ENTITY % ssml1.voicename.datatype "CDATA">

<!-- List of whitespace-separeted voicenames. -->
<!ENTITY % ssml1.voicenames.datatype "CDATA">

<!-- Union of volume.number, relative, percent or volume.scale. -->
<!ENTITY % ssml1.volume.datatype "CDATA">

<!-- A volume of [0.0, 100.0]. -->
<!ENTITY % ssml1.volume.number.datatype "CDATA">

<!-- Descriptive values for volume. -->
<!ENTITY % ssml1.volume.scale.datatype "(silent|x-soft|soft|medium|loud|x-loud|default)">

<!-- IETF Language Tag -->
<!ENTITY % LanguageCode.datatype "NMTOKEN">

<!-- A URI reference -->
<!ENTITY % URI.datatype "CDATA">

<!-- An IRI reference -->
<!ENTITY % xsd.anyURI.datatype "CDATA">

<!-- An integer more than or equal to zero -->
<!ENTITY % xsd.nonNegativeInteger.datatype "CDATA">

<!-- An integer more than zero -->
<!ENTITY % xsd.positiveInteger.datatype "CDATA">


<!-- end of ssml1-datatype.mod -->
