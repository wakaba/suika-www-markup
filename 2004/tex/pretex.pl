#!/usr/bin/perl
use strict;
use Encode;
sub c{
  $_ = shift;
  s/\x{3001}/, /g;
  s/\x{3002}/. /g;
  s{\\sourcecode\s*(?:\[([^\[\]]*)\]\s*)?{([^{}]+)}}{
    my %opt = map {$_->[1] = 1 unless defined $_->[1]; @$_}
              map {[split /\s*=\s*/, $_, 2]} split /\s*,\s*/, $1;
    my $filename = $2;
    open my $file, '<', $filename or die "$0: $filename: $!";
    my $source = '';
    my $line = 1;
    for (<$file>) {
      s/\t/        /g and warn "$0: $filename\[$line]: TAB found";
      $source .= sprintf '%3d %s', $line++, $_;
    }
    $opt{size} ||= 'tiny';
    "% $&\n\\begin{$opt{size}}\\begin{verbatim}\n$source\n\\end{verbatim}\\end{$opt{size}}\n";
  }ge;
  $_;
}
while(<>){
  print encode(q<iso-2022-jp>,c(decode(q<iso-2022-jp>,$_)))
}


=head1 NAME

pretex.pl - Preprocessor for Japanese LaTeX document

=head1 SYNOPSIS

  $ perl pretex.pl a.pretex > a.tex

=head1 DESCRIPTION

This script preprocesses LaTeX document.  This script is
written to satisfy author's need only.

=head1 FEATURES

=over 4

=item Replacement of COMMA and FULL STOP

In science community, use of COMMA and FULL STOP, rather than
IDEOGRAPHIC COMMA and IDEOGRAPHIC FULL STOP, is often encouraged.
This filter script substitutes IDEOGRAPHIC COMMA and IDEOGRAPHIC FULL STOP
to COMMA and FULL STOP, followed by a SPACE.

=item Command C<\sourcecode{filename}>

This filter script puts content of external plain text file
as C<verbatim> block, in place <\sourcecode> pseudo-command happens.

=back

Note that input document must be written in ISO-2022-JP.

=head1 AUTHOR

Wakaba <w@suika.fam.cx>

=head1 LICENSE

Copyright 2004 Wakaba <w@suika.fam.cx>

This program is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

=cut

# $Date: 2004/06/13 03:53:35 $
