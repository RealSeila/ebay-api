#!/usr/bin/perl

package eBay::API::XML::Call::GetCategoryMappings::GetCategoryMappingsResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetCategoryMappingsResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetCategoryMappings::GetCategoryMappingsResponseType

=head1 DESCRIPTION

Returns a map of old category IDs and corresponding active category IDs defined
for the site to which the request was sent. Typically used to update an older item
definition with a new category ID prior to listing the item.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetCategoryMappings::GetCategoryMappingsResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::CategoryMappingType;


my @gaProperties = ( [ 'CategoryMapping', 'ns:CategoryMappingType', '1'
	     ,'eBay::API::XML::DataType::CategoryMappingType', '1' ]
	, [ 'CategoryVersion', 'xs:string', '', '', '' ]
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



=head2 setCategoryMapping()

Mapping between an old category ID and an active category ID. Returned when
category mappings exist and the value of CategoryVersion is different from
the current version on the site.

#    Argument: reference to an array  
                      of 'ns:CategoryMappingType'

=cut

sub setCategoryMapping {
  my $self = shift;
  $self->{'CategoryMapping'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getCategoryMapping()

  Returned: Conditionally
  Details: DetailLevel: ReturnAll
#    Returns: reference to an array  
                      of 'ns:CategoryMappingType'

=cut

sub getCategoryMapping {
  my $self = shift;
  return $self->_getDataTypeArray('CategoryMapping');
}


=head2 setCategoryVersion()

Version value assigned to the current category mapping data for the site.
Compare this value to the version value the application stored with the mappings
the last time the application executed the call. If the versions are the same,
the data has not changed since the last time the data was retrieved and stored.

#    Argument: 'xs:string'

=cut

sub setCategoryVersion {
  my $self = shift;
  $self->{'CategoryVersion'} = shift
}

=head2 getCategoryVersion()

  Returned: Always
  Details: DetailLevel: none, ReturnAll
#    Returns: 'xs:string'

=cut

sub getCategoryVersion {
  my $self = shift;
  return $self->{'CategoryVersion'};
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
