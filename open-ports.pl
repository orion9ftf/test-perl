#!/usr/bin/perl
use strict;
use warnings;
use IO::Socket;

# Verifica que se haya proporcionado un argumento
if (@ARGV != 1) {
    die "Uso: $0 [IP o sitio web]\n";
}

my $host = $ARGV[0];

# Lista de puertos a escanear (puedes ajustar según tus necesidades)
my @ports = (20, 21, 22, 23, 25, 53, 80, 110, 139, 143, 443, 445, 3306, 3389, 8080);

print "Escaneando puertos en $host...\n";

foreach my $port (@ports) {
    my $socket = IO::Socket::INET->new(
        PeerAddr => $host,
        PeerPort => $port,
        Proto    => 'tcp',
        Timeout  => 2
    );

    if ($socket) {
        print "Puerto $port está abierto\n";
        close($socket);
    } else {
        print "Puerto $port está cerrado\n";
    }
}

print "Escaneo completado.\n";

