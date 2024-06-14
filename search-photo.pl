#!/usr/bin/perl
use strict;
use warnings;

if (@ARGV < 2) {
    die "Uso: $0 <ruta_de_imagen> <url1> <url2> ... <urlN>\n";
}

my $image_path = shift @ARGV;
my @urls = @ARGV;

my $url_list = join(' ', @urls);

# Llama al script de Python
my $command = "python3 face_recognition_search.py $image_path $url_list";
my $output = `$command`;

print "Resultados de la búsqueda:\n";
print $output;

