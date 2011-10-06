use AnyEvent::HTTP;


my $req;
$req = http_request 
    HEAD    => 'https://www.google.com.hk',
    headers => { 'user-agent' => 'King 1.0', },
    timeout => 30,
    sub {
        my ( $body,$header ) = @_;
        use Data::Dumper;
        print Dumper $header;
    }
; 

undef $ref;

