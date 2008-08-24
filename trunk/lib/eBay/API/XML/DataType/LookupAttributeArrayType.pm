#!/usr/bin/perl

package eBay::API::XML::DataType::LookupAttributeArrayType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. LookupAttributeArrayType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::LookupAttributeArrayType

=head1 DESCRIPTION

Only valid when using AddItem for items in Media categories (Books, DVD and
Movies, Music, and Video Game categories). You can pass either
AttributeSetArrayType or LookupAttributeArrayType, but you cannot pass both
containers in the same request. See the eBay Web Services guide for additional
information.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::LookupAttributeArrayType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::LookupAttributeType;


my @gaProperties = ( [ 'LookupAttribute', 'ns:LookupAttributeType', '1'
	     ,'eBay::API::XML::DataType::LookupAttributeType', '1' ]
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



=head2 setLookupAttribute()

The condition of the item.

  Calls: AddItem
         GetItemRecommendations
         RelistItem
         VerifyAddItem
  RequiredInput: No

#    Argument: reference to an array  
                      of 'ns:LookupAttributeType'

=cut

sub setLookupAttribute {
  my $self = shift;
  $self->{'LookupAttribute'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getLookupAttribute()

#    Returns: reference to an array  
                      of 'ns:LookupAttributeType'

=cut

sub getLookupAttribute {
  my $self = shift;
  return $self->_getDataTypeArray('LookupAttribute');
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
