#!/usr/bin/perl

package eBay::API::XML::Call::GeteBayOfficialTime::GeteBayOfficialTimeResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GeteBayOfficialTimeResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GeteBayOfficialTime::GeteBayOfficialTimeResponseType

=head1 DESCRIPTION

The Timestamp field indicates the official eBay system time in GMT.
For information about converting between GMT and other time zones,
see "Time Values" in the Data Types appendix in the eBay Web Services guide.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GeteBayOfficialTime::GeteBayOfficialTimeResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");



my @gaProperties = ( 
                    );
push @gaProperties, @{eBay::API::XML::ResponseDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::ResponseDataType::getAttributesList()};

=head1 Subroutines:

=cut

sub new {
  my $classname = shift;
  my %args = @_;
  my $self = $classname->SUPER::new(%args);
  return $self;
}

sub isScalar {
   return 0; 
}






##  Attribute and Property lists
sub getPropertiesList {
   my $self = shift;
   return \@gaProperties;
}

sub getAttributesList {
   my $self = shift;
   return \@gaAttributes;
}



1;   
