#!/usr/bin/perl

package eBay::API::XML::Call::GeteBayDetails::GeteBayDetailsRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GeteBayDetailsRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GeteBayDetails::GeteBayDetailsRequestType

=head1 DESCRIPTION

Retrieves eBay IDs and codes (e.g., site IDs and shipping service
codes), enumerated data (e.g., payment methods), and other common eBay
meta-data. This call enables you to keep certain data up to date in your
applications without referring to the schema, the documentation, or the
eBay online help. Other data is returned for your reference, but you may
need to refer to the schema or the documentation for information about
valid values and usage.
<br><br> In some cases, the data returned in the response
will vary according to the site that you use for the request.
<br><br> If you use GeteBayDetails in preparation for
listing in the US Motors Parts and Accessories categories,
use site ID 0 (which is the site ID of the US site) when you call GeteBayDetails.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GeteBayDetails::GeteBayDetailsRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::Enum::DetailNameCodeType;


my @gaProperties = ( [ 'DetailName', 'ns:DetailNameCodeType', '1'
	     ,'eBay::API::XML::DataType::Enum::DetailNameCodeType', '' ]
                    );
push @gaProperties, @{eBay::API::XML::RequestDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::RequestDataType::getAttributesList()};

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



=head2 setDetailName()

A designation of what kind of information you wish returned
for the specified eBay site. If omitted, all details are
returned.
The possible values for input (the enumeration values of
DetailNameCodeType) are the same name as fields returned by
the response. See the documentation for the
GeteBayDetails response to better understand the DetailName
options.

  RequiredInput: No
#    Argument: reference to an array  
                      of 'ns:DetailNameCodeType'

=cut

sub setDetailName {
  my $self = shift;
  $self->{'DetailName'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getDetailName()

#    Returns: reference to an array  
                      of 'ns:DetailNameCodeType'

=cut

sub getDetailName {
  my $self = shift;
  return $self->_getDataTypeArray('DetailName');
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
