#!/usr/bin/perl

package eBay::API::XML::DataType::ReviewType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ReviewType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ReviewType

=head1 DESCRIPTION

A product review written by an eBay member.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ReviewType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::UserIDType;


my @gaProperties = ( [ 'CreationTime', 'xs:dateTime', '', '', '' ]
	, [ 'Rating', 'xs:int', '', '', '' ]
	, [ 'Text', 'xs:string', '', '', '' ]
	, [ 'Title', 'xs:string', '', '', '' ]
	, [ 'URL', 'xs:anyURI', '', '', '' ]
	, [ 'UserID', 'ns:UserIDType', ''
	     ,'eBay::API::XML::DataType::UserIDType', '1' ]
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



=head2 setCreationTime()

The time and date when the reviewer posted the review.

#    Argument: 'xs:dateTime'

=cut

sub setCreationTime {
  my $self = shift;
  $self->{'CreationTime'} = shift
}

=head2 getCreationTime()

  Calls: GetProducts
  Returned: Conditionally

#    Returns: 'xs:dateTime'

=cut

sub getCreationTime {
  my $self = shift;
  return $self->{'CreationTime'};
}


=head2 setRating()

The eBay member's rating of the product.

Max: 5
Min: 0

#    Argument: 'xs:int'

=cut

sub setRating {
  my $self = shift;
  $self->{'Rating'} = shift
}

=head2 getRating()

  Calls: GetProducts
  Returned: Conditionally

#    Returns: 'xs:int'

=cut

sub getRating {
  my $self = shift;
  return $self->{'Rating'};
}


=head2 setText()

The text of the review. If the review is longer than
2000 characters, the text is cut off and it ends with "...".
See Review.URL for a link to the full text of the review.

SeeLink: URL: #Response.Product.ReviewDetails.Review.URL
Title: (GetProducts) Product.ReviewDetails.Review.URL
MaxLength: 2000

#    Argument: 'xs:string'

=cut

sub setText {
  my $self = shift;
  $self->{'Text'} = shift
}

=head2 getText()

  Calls: GetProducts
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getText {
  my $self = shift;
  return $self->{'Text'};
}


=head2 setTitle()

The title of the review.

MaxLength: 55

#    Argument: 'xs:string'

=cut

sub setTitle {
  my $self = shift;
  $self->{'Title'} = shift
}

=head2 getTitle()

  Calls: GetProducts
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getTitle {
  my $self = shift;
  return $self->{'Title'};
}


=head2 setURL()

A link to the full review on the eBay Web site.
This URL optimized for natural search: "_W0QQ" is like "?"
(question mark), "QQ" is like "&" (ampersand),
and "Z" is like "=" (equals sign).<br>
<br>
<span class="tablenote"><b>Note:</b>
For a link to all reviews for the product, remove the upvr parameter
from this URL. See the eBay Web Services guide for an example.
</span>

#    Argument: 'xs:anyURI'

=cut

sub setURL {
  my $self = shift;
  $self->{'URL'} = shift
}

=head2 getURL()

  Calls: GetProducts
  Returned: Conditionally

#    Returns: 'xs:anyURI'

=cut

sub getURL {
  my $self = shift;
  return $self->{'URL'};
}


=head2 setUserID()

The reviewer's eBay user ID.

#    Argument: 'ns:UserIDType'

=cut

sub setUserID {
  my $self = shift;
  $self->{'UserID'} = shift
}

=head2 getUserID()

  Calls: GetProducts
  Returned: Conditionally

#    Returns: 'ns:UserIDType'

=cut

sub getUserID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'UserID'
		,'eBay::API::XML::DataType::UserIDType');
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
