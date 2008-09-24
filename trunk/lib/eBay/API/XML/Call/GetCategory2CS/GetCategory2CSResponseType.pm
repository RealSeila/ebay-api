#!/usr/bin/perl

package eBay::API::XML::Call::GetCategory2CS::GetCategory2CSResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetCategory2CSResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetCategory2CS::GetCategory2CSResponseType

=head1 DESCRIPTION

Returns data that indicates the categories that are mapped to characteristics sets,
for the eBay site to which the call was routed.
Retrieves all mappings or just the one that matches the category ID passed as input.
The data is returned in a CategoryArrayType object, which can contain multiple mappings.
The response also contains information about categories for which the mappings have changed.<br>
<br>
<span class="tablenote"><b>Note:</b> The Pre-filled Item Information feature depends on the Item Specifics feature.
This means the set of catalog-enabled categories is a subset of the categories
that are mapped to characteristic sets. That is, there are no catalog-enabled categories
that are not mapped to characteristic sets.</span>



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetCategory2CS::GetCategory2CSResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::CategoryArrayType;
use eBay::API::XML::DataType::SiteWideCharacteristicsType;


my @gaProperties = ( [ 'AttributeSystemVersion', 'xs:string', '', '', '' ]
	, [ 'MappedCategoryArray', 'ns:CategoryArrayType', ''
	     ,'eBay::API::XML::DataType::CategoryArrayType', '1' ]
	, [ 'SiteWideCharacteristicSets', 'ns:SiteWideCharacteristicsType', '1'
	     ,'eBay::API::XML::DataType::SiteWideCharacteristicsType', '1' ]
	, [ 'UnmappedCategoryArray', 'ns:CategoryArrayType', ''
	     ,'eBay::API::XML::DataType::CategoryArrayType', '1' ]
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



=head2 setAttributeSystemVersion()

Current version of the mappings for the site.
This value changes each time changes are made to the mappings.
The current version value is not necessarily greater than the previous
value. Therefore, when comparing versions, only compare whether the
value has changed.

#    Argument: 'xs:string'

=cut

sub setAttributeSystemVersion {
  my $self = shift;
  $self->{'AttributeSystemVersion'} = shift
}

=head2 getAttributeSystemVersion()

  Returned: Always
  Details: DetailLevel: none, ReturnAll
#    Returns: 'xs:string'

=cut

sub getAttributeSystemVersion {
  my $self = shift;
  return $self->{'AttributeSystemVersion'};
}


=head2 setMappedCategoryArray()

Contains data about categories that are mapped to characteristics sets.
Use this data to determine:<br>
- The names and IDs of the characteristics sets<br>
- The availability of the Pre-filled Item Information feature for listings in that category
(i.e., whether the category is catalog-enabled)<br>
- For catalog-enabled categories, the available product search methods<br>
- The current version information for the complete mapping<br>
- The version information for each characteristics set

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=AttrGC2CS
Title: Retrieving Category-to-Meta-Data Mappings

#    Argument: 'ns:CategoryArrayType'

=cut

sub setMappedCategoryArray {
  my $self = shift;
  $self->{'MappedCategoryArray'} = shift
}

=head2 getMappedCategoryArray()

  Returned: Conditionally
  Details: DetailLevel: ReturnAll
#    Returns: 'ns:CategoryArrayType'

=cut

sub getMappedCategoryArray {
  my $self = shift;
  return $self->_getDataTypeInstance( 'MappedCategoryArray'
		,'eBay::API::XML::DataType::CategoryArrayType');
}


=head2 setSiteWideCharacteristicSets()

A list of one or more characteristics sets mapped to the category, if any. Use this
information when working with Item Specifics (Attributes) and Pre-filled Item
Information (Catalogs) functionality.

#    Argument: reference to an array  
                      of 'ns:SiteWideCharacteristicsType'

=cut

sub setSiteWideCharacteristicSets {
  my $self = shift;
  $self->{'SiteWideCharacteristicSets'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getSiteWideCharacteristicSets()

  Returned: Conditionally
  Details: DetailLevel: ReturnAll
#    Returns: reference to an array  
                      of 'ns:SiteWideCharacteristicsType'

=cut

sub getSiteWideCharacteristicSets {
  my $self = shift;
  return $self->_getDataTypeArray('SiteWideCharacteristicSets');
}


=head2 setUnmappedCategoryArray()

Contains data about categories (if any) whose characteristics set mappings have changed
since the version specified in the request. When a characteristics set mapping
changes, the data appears in both the UnmappedCategoryArray object
(to indicate that the change occurred) and the MappedCategoryArray object.

#    Argument: 'ns:CategoryArrayType'

=cut

sub setUnmappedCategoryArray {
  my $self = shift;
  $self->{'UnmappedCategoryArray'} = shift
}

=head2 getUnmappedCategoryArray()

  Returned: Conditionally
  Details: DetailLevel: ReturnAll
#    Returns: 'ns:CategoryArrayType'

=cut

sub getUnmappedCategoryArray {
  my $self = shift;
  return $self->_getDataTypeInstance( 'UnmappedCategoryArray'
		,'eBay::API::XML::DataType::CategoryArrayType');
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
