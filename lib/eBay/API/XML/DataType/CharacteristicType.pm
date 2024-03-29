#!/usr/bin/perl

package eBay::API::XML::DataType::CharacteristicType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. CharacteristicType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::CharacteristicType

=head1 DESCRIPTION

A salient aspect or feature of an item. Used to describe an item in a
standard way so that buyers can find it more easily. An individual,
standardized characteristic that is common to all items within the
specified characteristics set. Applicable when working with Item
Specifics (Attributes) and Pre-filled Item Information (Catalogs)
functionality. See the eBay Web Services guide for more information.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::CharacteristicType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::LabelType;
use eBay::API::XML::DataType::ValType;
use eBay::API::XML::DataType::Enum::SortOrderCodeType;


my @gaProperties = ( [ 'AttributeID', 'xs:int', '', '', '' ]
	, [ 'DateFormat', 'xs:string', '', '', '' ]
	, [ 'DisplaySequence', 'xs:string', '', '', '' ]
	, [ 'DisplayUOM', 'xs:string', '', '', '' ]
	, [ 'Label', 'ns:LabelType', ''
	     ,'eBay::API::XML::DataType::LabelType', '1' ]
	, [ 'SortOrder', 'ns:SortOrderCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::SortOrderCodeType', '' ]
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

Constant value that identifies the characteristic in a language-independent way.
Unique within the characteristic set.

#    Argument: 'xs:int'

=cut

sub setAttributeID {
  my $self = shift;
  $self->{'AttributeID'} = shift
}

=head2 getAttributeID()

  Calls: GetProductFamilyMembers
         GetProductSearchPage
         GetProductSearchResults
  Returned: Always
  Details: DetailLevel: ReturnAll

#    Returns: 'xs:int'

=cut

sub getAttributeID {
  my $self = shift;
  return $self->{'AttributeID'};
}


=head2 setDateFormat()

Applicable when working with Pre-filled Item Information (Catalogs) functionality.
Returned if the characteristic is a Date data type. Specifies the pattern
to use when presenting the date to a user. Possible values:
Day/Month/Year, Month/Year, Year Only.
For example, the Year Only format would indicate that the date
should be a value like 1999.
Output only.

#    Argument: 'xs:string'

=cut

sub setDateFormat {
  my $self = shift;
  $self->{'DateFormat'} = shift
}

=head2 getDateFormat()

  Calls: GetProductSearchPage
  Returned: Conditionally
  Details: DetailLevel: ReturnAll
  Context: SortCharacteristics

  Calls: GetProductFamilyMembers
         GetProductSearchResults
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getDateFormat {
  my $self = shift;
  return $self->{'DateFormat'};
}


=head2 setDisplaySequence()

The suggested order in which the characteristic should be presented
to the user in a list. Indicates the relative position of the sort
key in the list of characteristics. The characteristic with the
lowest display sequence is considered the default sort key in calls
to GetProductSearchResults. Aside from that, usage of this display
sequence information is optional. For example, in an application
with a graphical user interface, a characteristic with a display
sequence of 2 could be presented before one with a display sequence
of 3 in a drop-down list. If multiple sort characteristics are
returned for a characteristic set, compare their display sequence
values to determine the lowest available value (usually 0) and the
overall sequence.

#    Argument: 'xs:string'

=cut

sub setDisplaySequence {
  my $self = shift;
  $self->{'DisplaySequence'} = shift
}

=head2 getDisplaySequence()

  Calls: GetProductFamilyMembers
         GetProductSearchPage
         GetProductSearchResults
  Returned: Always
  Details: DetailLevel: ReturnAll

#    Returns: 'xs:string'

=cut

sub getDisplaySequence {
  my $self = shift;
  return $self->{'DisplaySequence'};
}


=head2 setDisplayUOM()

Applicable when working with Pre-filled Item Information (Catalogs) functionality.
The unit of measure (e.g., Inch) to use when the characteristic is numeric indicates a measurement.
Not returned if not applicable.
Output only.

#    Argument: 'xs:string'

=cut

sub setDisplayUOM {
  my $self = shift;
  $self->{'DisplayUOM'} = shift
}

=head2 getDisplayUOM()

  Calls: GetProductSearchPage
  Returned: Conditionally
  Details: DetailLevel: ReturnAll
  Context: SortCharacteristics

  Calls: GetProductFamilyMembers
         GetProductSearchResults
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getDisplayUOM {
  my $self = shift;
  return $self->{'DisplayUOM'};
}


=head2 setLabel()

Applicable when working with Pre-filled Item Information (Catalogs) functionality.
The label to display when presenting the attribute to a user.
Not necessarily the same as the attribute's label as defined in the
characteristic set (i.e., the label could be overridden by the catalog).

#    Argument: 'ns:LabelType'

=cut

sub setLabel {
  my $self = shift;
  $self->{'Label'} = shift
}

=head2 getLabel()

  Calls: GetProductFamilyMembers
         GetProductSearchPage
         GetProductSearchResults
  Returned: Always
  Details: DetailLevel: ReturnAll

#    Returns: 'ns:LabelType'

=cut

sub getLabel {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Label'
		,'eBay::API::XML::DataType::LabelType');
}


=head2 setSortOrder()

Applicable when working with Pre-filled Item Information (Catalogs) functionality.
Indicates the order in which eBay's search engine will sort the results if you
pass this characteristic as a sort attribute in GetProductSearchResults.
You cannot change the sort order of a characteristic when you perform a search.
(Of course, you can change the sort order when you present results in your own application.)
In GetProductSearchPage, if SortOrder is not returned at all, it means the results will be returned
in the order in which they are stored on eBay (which can be useful for
international sites that use ideographic characters).
Output only.

#    Argument: 'ns:SortOrderCodeType'

=cut

sub setSortOrder {
  my $self = shift;
  $self->{'SortOrder'} = shift
}

=head2 getSortOrder()

  Calls: GetProductSearchPage
  Returned: Conditionally
  Details: DetailLevel: ReturnAll
  Context: SortCharacteristics

#    Returns: 'ns:SortOrderCodeType'

=cut

sub getSortOrder {
  my $self = shift;
  return $self->{'SortOrder'};
}


=head2 setValueList()

List of one or more valid values for the characteristic.

#    Argument: reference to an array  
                      of 'ns:ValType'

=cut

sub setValueList {
  my $self = shift;
  $self->{'ValueList'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getValueList()

  Calls: GetProductFamilyMembers
         GetProductSearchResults
  Returned: Always

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
