use strict;
use File::Spec;
use Test::More;
use lib qw(lib);

my @tests = ();
my @files = <lib/eBay/API/XML/Call/*.pm>;

foreach my $file ( @files ) {
    my( $v, $dir, $filename ) = File::Spec->splitpath( $file );

    my $call = $filename;
    $call =~ s/\.pm$//;

    push( @tests, "eBay::API::XML::Call::$call" );
    push( @tests, "eBay::API::XML::Call::${call}::${call}RequestType" );
    push( @tests, "eBay::API::XML::Call::${call}::${call}RequestType" );

}

plan tests => scalar( @tests );

foreach my $m ( @tests ) {
    use_ok( $m );
}