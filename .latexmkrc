$aux_dir = './aux/';
$out_dir = './';

if ($^O =~ m/MSWin/ || $^O eq 'dos' || $^O eq 'Cygwin')
{
  $ENV{'TEXINPUTS'}=$aux_dir . ';' . $out_dir . ';';
  $ENV{'BSTINPUTS'}=$aux_dir . ';' . $out_dir . ';';
  $ENV{'OPENTYPEFONTS'}='.;';
  $ENV{'TTFONTS'}='.;';
} else {
  $ENV{'TEXINPUTS'}=$aux_dir . ':' . $out_dir . ':';
  $ENV{'BSTINPUTS'}=$aux_dir . ':' . $out_dir . ':';
  $ENV{'OPENTYPEFONTS'}='.:';
  $ENV{'TTFONTS'}='.:';
}

$bibtex_fudge=0;
# force using xelatex
# $pdf_mode=1;
# $pdflatex="xelatex %O %P";

# use xelatex - xdv -> pdf - not working due to bugs in 4.61
$pdf_mode=5;
&alt_tex_cmds;

#@default_files = ('example-cv');
