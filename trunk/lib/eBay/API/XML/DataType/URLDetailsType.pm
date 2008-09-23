#!/usr/bin/perl

package eBay::API::XML::DataType::URLDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. URLDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::URLDetailsType

=head1 DESCRIPTION

Details about a specific eBay URL.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::URLDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::Enum::URLTypeCodeType;


my @gaProperties = ( [ 'URL', 'xs:anyURI', '', '', '' ]
	, [ 'URLType', 'ns:URLTypeCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::URLTypeCodeType', '' ]
                    );
push @gaProperties, @{eBay::API::XML::BaseDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::BaseDataType::getAttributesList()};

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



=head2 setURL()

A commonly used eBay URL. Applications use some of these URLs (such as the View Item URL)
to launch eBay Web site pages in a browser.<br><br>
Logo URLs are required to be used in certain types of applications.
See your API license agreement. Also see this page for logo usage rules:<br>
http://developer.ebay.com/join/licenses/apilogousage

#    Argument: 'xs:anyURI'

=cut

sub setURL {
  my $self = shift;
  $self->{'URL'} = shift
}

=head2 getURL()

  Calls: GeteBayDetails
  Returned: Conditionally

#    Returns: 'xs:anyURI'

=cut

sub getURL {
  my $self = shift;
  return $self->{'URL'};
}


=head2 setURLType()

A compressed, representative title for the eBay URL.

#    Argument: 'ns:URLTypeCodeType'

=cut

sub setURLType {
  my $self = shift;
  $self->{'URLType'} = shift
}

=head2 getURLType()

  Calls: GeteBayDetails
  Returned: Conditionally

#    Returns: 'ns:URLTypeCodeType'

=cut

sub getURLType {
  my $self = shift;
  return $self->{'URLType'};
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
