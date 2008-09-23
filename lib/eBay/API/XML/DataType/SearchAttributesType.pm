#!/usr/bin/perl

package eBay::API::XML::DataType::SearchAttributesType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SearchAttributesType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::SearchAttributesType

=head1 DESCRIPTION

A product or item aspect or feature that can be used as a criterion in a search
for catalog content or for listed items.
For example, "Format" might be a criterion for searching the catalogs for
Pre-filled Item Information related to hardcover books.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::SearchAttributesType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::ValType;
use eBay::API::XML::DataType::Enum::DateSpecifierCodeType;
use eBay::API::XML::DataType::Enum::RangeCodeType;


my @gaProperties = ( [ 'AttributeID', 'xs:int', '', '', '' ]
	, [ 'DateSpecifier', 'ns:DateSpecifierCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::DateSpecifierCodeType', '' ]
	, [ 'RangeSpecifier', 'ns:RangeCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::RangeCodeType', '' ]
	, [ 'ValueList', 'ns:ValType', '1'
	     ,'eBay::API::XML::DataType::ValType', '1' ]
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



=head2 setAttributeID()

Unique identifier for the attribute within the characteristic set.
Required if SearchAttributes is specified.

  Calls: GetSearchResults
  RequiredInput: Conditionally

  Calls: GetProductSearchResults
  RequiredInput: Yes

#    Argument: 'xs:int'

=cut

sub setAttributeID {
  my $self = shift;
  $self->{'AttributeID'} = shift
}

=head2 getAttributeID()

#    Returns: 'xs:int'

=cut

sub getAttributeID {
  my $self = shift;
  return $self->{'AttributeID'};
}


=head2 setDateSpecifier()

Specifies the date sub-component that the attribute represents.
This only applies to date attributes.
Required when searching by date attributes.
Allows for separate text fields or drop-down lists to be rendered for
each sub-component. For example, the day, month, and year can be
rendered as separate drop-down lists.

Default: 
  Calls: GetSearchResults
         GetProductSearchResults
  RequiredInput: Conditionally

#    Argument: 'ns:DateSpecifierCodeType'

=cut

sub setDateSpecifier {
  my $self = shift;
  $self->{'DateSpecifier'} = shift
}

=head2 getDateSpecifier()

#    Returns: 'ns:DateSpecifierCodeType'

=cut

sub getDateSpecifier {
  my $self = shift;
  return $self->{'DateSpecifier'};
}


=head2 setRangeSpecifier()

Indicates that the attribute represents the high or low end in a range,
such as a date range or a price range.
Required when searching on ranges.

Default: 
  Calls: GetSearchResults
         GetProductSearchResults
  RequiredInput: Conditionally

#    Argument: 'ns:RangeCodeType'

=cut

sub setRangeSpecifier {
  my $self = shift;
  $self->{'RangeSpecifier'} = shift
}

=head2 getRangeSpecifier()

#    Returns: 'ns:RangeCodeType'

=cut

sub getRangeSpecifier {
  my $self = shift;
  return $self->{'RangeSpecifier'};
}


=head2 setValueList()

Container for the list of one or more valid values that the
user has selected for
the searchable attribute. If multiple values are specified,
the search engine
applies "OR" logic to the query (i.e., at least one of the
specified values must match).
Required if SearchAttributes is specified.

  Calls: GetSearchResults
         GetProductSearchResults
  RequiredInput: Conditionally

#    Argument: reference to an array  
                      of 'ns:ValType'

=cut

sub setValueList {
  my $self = shift;
  $self->{'ValueList'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getValueList()

#    Returns: reference to an array  
                      of 'ns:ValType'

=cut

sub getValueList {
  my $self = shift;
  return $self->_getDataTypeArray('ValueList');
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