#!/usr/bin/perl

package eBay::API::XML::Call::VerifyAddSecondChanceItem::VerifyAddSecondChanceItemRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. VerifyAddSecondChanceItemRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::VerifyAddSecondChanceItem::VerifyAddSecondChanceItemRequestType

=head1 DESCRIPTION

Simulates the creation of a new Second Chance Offer
listing of an item without actually creating a listing.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::VerifyAddSecondChanceItem::VerifyAddSecondChanceItemRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::AmountType;
use eBay::API::XML::DataType::ItemIDType;
use eBay::API::XML::DataType::UserIDType;
use eBay::API::XML::DataType::Enum::SecondChanceOfferDurationCodeType;


my @gaProperties = ( [ 'BuyItNowPrice', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'Duration', 'ns:SecondChanceOfferDurationCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::SecondChanceOfferDurationCodeType', '' ]
	, [ 'ItemID', 'ns:ItemIDType', ''
	     ,'eBay::API::XML::DataType::ItemIDType', '1' ]
	, [ 'RecipientBidderUserID', 'ns:UserIDType', ''
	     ,'eBay::API::XML::DataType::UserIDType', '1' ]
	, [ 'SellerMessage', 'xs:string', '', '', '' ]
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



=head2 setBuyItNowPrice()

Specifies the amount the offer recipient must pay to purchase the item
from the second chance offer listing. Use only when the original item was
an eBay Motors (or in some categories on U.S. and international sites for
high-priced items, such as items in many U.S. and Canada Business and
Industrial categories) and it ended unsold because the reserve price was
not met. Call fails with an error for any other item conditions.

  RequiredInput: No
#    Argument: 'ns:AmountType'

=cut

sub setBuyItNowPrice {
  my $self = shift;
  $self->{'BuyItNowPrice'} = shift
}

=head2 getBuyItNowPrice()

#    Returns: 'ns:AmountType'

=cut

sub getBuyItNowPrice {
  my $self = shift;
  return $self->_getDataTypeInstance( 'BuyItNowPrice'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setDuration()

Specifies the length of time the second chance offer listing will be
active. The recipient bidder has that much time to purchase the item or
the listing expires.

  RequiredInput: Yes
#    Argument: 'ns:SecondChanceOfferDurationCodeType'

=cut

sub setDuration {
  my $self = shift;
  $self->{'Duration'} = shift
}

=head2 getDuration()

#    Returns: 'ns:SecondChanceOfferDurationCodeType'

=cut

sub getDuration {
  my $self = shift;
  return $self->{'Duration'};
}


=head2 setItemID()

Specifies the item ID for the original, ended listing from which the
second chance offer item comes. A new ItemID is returned for the second
chance offer item.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

  RequiredInput: Yes
#    Argument: 'ns:ItemIDType'

=cut

sub setItemID {
  my $self = shift;
  $self->{'ItemID'} = shift
}

=head2 getItemID()

#    Returns: 'ns:ItemIDType'

=cut

sub getItemID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ItemID'
		,'eBay::API::XML::DataType::ItemIDType');
}


=head2 setRecipientBidderUserID()

Specifies the bidder from the original, ended listing to whom the seller
is extending the second chance offer. Specify only one
RecipientBidderUserID per call. If multiple users are specified (each in a
RecipientBidderUserID node), only the last one specified receives the
offer.

  RequiredInput: Yes
#    Argument: 'ns:UserIDType'

=cut

sub setRecipientBidderUserID {
  my $self = shift;
  $self->{'RecipientBidderUserID'} = shift
}

=head2 getRecipientBidderUserID()

#    Returns: 'ns:UserIDType'

=cut

sub getRecipientBidderUserID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'RecipientBidderUserID'
		,'eBay::API::XML::DataType::UserIDType');
}


=head2 setSellerMessage()

Message content. Cannot contain HTML, asterisks, or quotes. This content
is included in the second chance offer email sent to the recipient, which
can be retrieved with GetMyMessages.

MaxLength: 1000

  RequiredInput: No
#    Argument: 'xs:string'

=cut

sub setSellerMessage {
  my $self = shift;
  $self->{'SellerMessage'} = shift
}

=head2 getSellerMessage()

#    Returns: 'xs:string'

=cut

sub getSellerMessage {
  my $self = shift;
  return $self->{'SellerMessage'};
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
