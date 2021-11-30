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

