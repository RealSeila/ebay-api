#!/usr/bin/perl

package eBay::API::XML::DataType::AttributeArrayType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. AttributeArrayType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::AttributeArrayType

=head1 DESCRIPTION

Reserved for future use.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::AttributeArrayType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AttributeType;


my @gaProperties = ( [ 'Attribute', 'ns:AttributeType', '1'
	     ,'eBay::API::XML::DataType::AttributeType', '1' ]
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



=head2 setAttribute()

Only applicable to Half.com. Not applicable to eBay listings.
You can revise this field for Half.com listings.

  Calls: AddItem
         VerifyAddItem
  RequiredInput: Yes

  Calls: ReviseItem
  RequiredInput: No

#    Argument: reference to an array  
                      of 'ns:AttributeType'

=cut

sub setAttribute {
  my $self = shift;
  $self->{'Attribute'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getAttribute()

  Calls: GetOrders
  Returned: Always
  Details: DetailLevel: none

#    Returns: reference to an array  
                      of 'ns:AttributeType'

=cut

sub getAttribute {
  my $self = shift;
  return $self->_getDataTypeArray('Attribute');
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
