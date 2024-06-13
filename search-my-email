#!/usr/bin/perl
use strict;
use warnings;

# Verifica que se haya proporcionado un argumento
if (@ARGV != 2) {
    die "Uso: $0 <email> <directorio>\n";
}

my $email = $ARGV[0];
my $directory = $ARGV[1];

# Abre el directorio y lee los archivos
opendir(my $dh, $directory) or die "No se puede abrir el directorio $directory: $!\n";
my @files = readdir($dh);
closedir($dh);

print "Buscando el email $email en los archivos del directorio $directory...\n";

foreach my $file (@files) {
    next if ($file =~ /^\./); # Ignora archivos ocultos y directorios . y ..

    my $filepath = "$directory/$file";

    # Verifica si es un archivo
    next unless (-f $filepath);

    open(my $fh, '<', $filepath) or die "No se puede abrir el archivo $filepath: $!\n";

    while (my $line = <$fh>) {
        if ($line =~ /\b\Q$email\E\b/) {
            print "Encontrado en $filepath: $line";
        }
    }

    close($fh);
}

print "Búsqueda completada.\n";

