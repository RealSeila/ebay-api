#!/usr/bin/perl

package eBay::API::XML::DataType::LabelType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. LabelType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::LabelType

=head1 DESCRIPTION

Applicable when working with Pre-filled Item Information (Catalogs) functionality.
The label to display when presenting the attribute to a user.
Not necessarily the same as the attribute's label as defined in the
characteristic set (i.e., the label could be overridden by the catalog).



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::LabelType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'Name', 'xs:string', '', '', '' ]
                    );
push @gaProperties, @{eBay::API::XML::BaseDataType::getPropertiesList()};

my @gaAttributes = ( [ 'visible', 'xs:boolean', '', '', '' ]
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



=head2 setName()

The label to display when presenting the attribute to a user 
(e.g., "Title" or "Manufacturer"). <br>
<br>
The label is defined for the product, and is therefore not 
necessarily the same as the label that is defined in the characteristic set 
returned by another call like GetAttributesCS.<br>
<br>
<b>For GetProductSearchPage</b>: If the attribute's label is "Keyword", 
it means you can enter the attribute's ID and a string value in the 
SearchAttributes node of GetProductSearchResults, 
and then eBay will search for the string against one or more attributes in the catalog. 
For example, for strollers, GetProductSearchPage only returns a Keyword attribute 
instead of separate Brand, Product Type, and Model attributes (for the US site).
So, you can use the single Keyword attribute to search against all of those attributes.<br>
<br>

#    Argument: 'xs:string'

=cut

sub setName {
  my $self = shift;
  $self->{'Name'} = shift
}

=head2 getName()

  Calls: GetProductFamilyMembers
         GetProductSearchPage
         GetProductSearchResults
  Returned: Always
  Details: DetailLevel: ReturnAll

  Calls: GetProducts
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getName {
  my $self = shift;
  return $self->{'Name'};
}




=head2 setVisible()

If true, the label name is visible on the eBay site. If false, the label is not visible.
Usage of this information is optional. You are not required to display labels in
the same manner as eBay.

#    Argument: 'xs:boolean'

=cut

sub setVisible {
  my $self = shift;
  $self->{'visible'} = shift
}

=head2 isVisible()

  Calls: GetProductFamilyMembers
         GetProductSearchPage
         GetProductSearchResults
  Returned: Always
  Details: DetailLevel: ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isVisible {
  my $self = shift;
  return $self->{'visible'};
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
