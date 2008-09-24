#!/usr/bin/perl

package eBay::API::XML::DataType::ExpressHistogramDomainDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ExpressHistogramDomainDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ExpressHistogramDomainDetailsType

=head1 DESCRIPTION

Identifies a domain and provides statistics for items and
catalog products found in that domain.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ExpressHistogramDomainDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'BreadCrumb', 'xs:string', '', '', '' ]
	, [ 'ImageURL', 'xs:anyURI', '', '', '' ]
	, [ 'ItemCount', 'xs:int', '', '', '' ]
	, [ 'Name', 'xs:string', '', '', '' ]
	, [ 'ProductCount', 'xs:int', '', '', '' ]
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



=head2 setBreadCrumb()

The fully qualified display name of the domain, as it would appear in the
Express Web site user interface.
For example, a fully qualified aisle breadcrumb would include the
department's display name and the aisle's display name.
The names can contain spaces, and a greater-than character (">") is used
as the delimiter; for example:
Consumer Electronics > Cell Phones & PDAs > PDA Accessories.
As with all string data types, reserved characters like ">" are escaped
in the raw response.<br>
<br>
Note: The potential max length will be documented in a future release.

#    Argument: 'xs:string'

=cut

sub setBreadCrumb {
  my $self = shift;
  $self->{'BreadCrumb'} = shift
}

=head2 getBreadCrumb()

#    Returns: 'xs:string'

=cut

sub getBreadCrumb {
  my $self = shift;
  return $self->{'BreadCrumb'};
}


=head2 setImageURL()

The image associated with the department, aisle, or product, if any.
All domains should be associated with an image. However, there may be
rare cases when an image is not available.

#    Argument: 'xs:anyURI'

=cut

sub setImageURL {
  my $self = shift;
  $self->{'ImageURL'} = shift
}

=head2 getImageURL()

#    Returns: 'xs:anyURI'

=cut

sub getImageURL {
  my $self = shift;
  return $self->{'ImageURL'};
}


=head2 setItemCount()

The number of matching items that were found in the specified department,
aisle, or product type at the moment when your request was processed. An item
can belong to multiple departments, aisles, or product types at any given
time. (So you should not expect the sum of the item counts in aisles and
product types to equal the item count in a parent department.) Also, this
value will not necessarily match the number of items returned in the response
(even if you retrieve all pages), because ItemArray returns deduped
items.<br>
<br>
If HistogramDetails==Coarse and you don't specify DepartmentName, AisleName,
or ProductTypeName in the request, Express only counts items found in matching
departments. In this particular case, ItemCount could be 0 in all domain
histogram results when the only matching items are in stand-alone product
types or aisles (because they aren't grouped into departments).

#    Argument: 'xs:int'

=cut

sub setItemCount {
  my $self = shift;
  $self->{'ItemCount'} = shift
}

=head2 getItemCount()

#    Returns: 'xs:int'

=cut

sub getItemCount {
  my $self = shift;
  return $self->{'ItemCount'};
}


=head2 setName()

The domain name, with no spaces. Use this to determine DepartmentName,
AisleName, and/or ProductTypeName values to pass in the request.

#    Argument: 'xs:string'

=cut

sub setName {
  my $self = shift;
  $self->{'Name'} = shift
}

=head2 getName()

#    Returns: 'xs:string'

=cut

sub getName {
  my $self = shift;
  return $self->{'Name'};
}


=head2 setProductCount()

The number of matching eBay catalog products that were found in the specified
department, aisle, or product type at the moment when your request was
processed.<br>
<br>
If HistogramDetails==Coarse and you don't specify DepartmentName, AisleName,
or ProductTypeName in the request, Express only counts catalog products found
in matching departments. In this particular case, ProductCount could be 0 in
all domain histogram results when the only matching catalog products are in
stand-alone product types or aisles (because they aren't grouped into
departments).

#    Argument: 'xs:int'

=cut

sub setProductCount {
  my $self = shift;
  $self->{'ProductCount'} = shift
}

=head2 getProductCount()

#    Returns: 'xs:int'

=cut

sub getProductCount {
  my $self = shift;
  return $self->{'ProductCount'};
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
