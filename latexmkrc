## Copyright (C) 2022 Alessandro "Sgorblex" Clerici Lorenzini and Edoardo "Miniman" Della Rossa
#
# This work may be distributed and/or modified under the
# conditions of the LaTeX Project Public License, either version 1.3
# of this license or (at your option) any later version.
# The latest version of this license is in
#   http://www.latex-project.org/lppl.txt
# and version 1.3 or later is part of all distributions of LaTeX
# version 2005/12/01 or later.
#
# This work has the LPPL maintenance status `maintained'.
#
# The Current Maintainer of this work is Alessandro Clerici Lorenzini
#
# This work consists of the files listed in work.txt


push @generated_exts, 'synctex', 'synctex.gz';
$clean_ext = "*-eps-converted-to.pdf %R.synctex.gz";

$pdflatex = 'pdflatex -interaction=batchmode';
$latex = 'latex -interaction=batchmode';

add_cus_dep('puml', 'eps', 0, 'puml2eps');
sub puml2eps {
	return system("plantuml -teps \"$_[0].puml\"");
}


$cleanup_includes_cusdep_generated = 1;

# stolen from https://github.com/e-dschungel/latexmk-config/blob/master/latexmkrc
sub cleanup1 {
    my $dir = ( shift );
    foreach (@_) { 
        (my $name = (/%R/ || /[\*\.\?]/) ? $_ : "%R.$_") =~ s/%R/$dir$root_filename/;
        unlink_or_move( glob( "$name" ) );
    }
}

