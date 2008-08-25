#!/usr/bin/perl

package eBay::API::XML::Call::AddTransactionConfirmationItem::AddTransactionConfirmationItemRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. AddTransactionConfirmationItemRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::AddTransactionConfirmationItem::AddTransactionConfirmationItemRequestType

=head1 DESCRIPTION

Ends the listing specified by ItemID (if listed for at least 24 hours) and creates
a new Transaction Confirmation Request (TCR) for an item, enabling the TCR
recipient to purchase the item. A TCR can be sent by a seller to any one of the
following: a bidder, a best offer buyer, a member who has asked the seller a
question, or any member with a postal code. This call can also be used to verify
whether a new TCR can be created. Applies to the US eBay Motors site (except Parts
and Accessories category).



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::AddTransactionConfirmationItem::AddTransactionConfirmationItemRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::AmountType;
use eBay::API::XML::DataType::ItemIDType;
use eBay::API::XML::DataType::UserIDType;
use eBay::API::XML::DataType::Enum::RecipientRelationCodeType;
use eBay::API::XML::DataType::Enum::SecondChanceOfferDurationCodeType;


my @gaProperties = ( [ 'Comments', 'xs:string', '', '', '' ]
	, [ 'ItemID', 'ns:ItemIDType', ''
	     ,'eBay::API::XML::DataType::ItemIDType', '1' ]
	, [ 'ListingDuration', 'ns:SecondChanceOfferDurationCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::SecondChanceOfferDurationCodeType', '' ]
	, [ 'NegotiatedPrice', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'RecipientPostalCode', 'xs:string', '', '', '' ]
	, [ 'RecipientRelationType', 'ns:RecipientRelationCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::RecipientRelationCodeType', '' ]
	, [ 'RecipientUserID', 'ns:UserIDType', ''
	     ,'eBay::API::XML::DataType::UserIDType', '1' ]
	, [ 'VerifyEligibilityOnly', 'xs:string', '', '', '' ]
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



=head2 setComments()

Comments the seller wants to send to the recipient (bidder, best offer
buyer, member with an ASQ question, or member with a postal code).

  RequiredInput: No
#    Argument: 'xs:string'

=cut

sub setComments {
  my $self = shift;
  $self->{'Comments'} = shift
}

=head2 getComments()

#    Returns: 'xs:string'

=cut

sub getComments {
  my $self = shift;
  return $self->{'Comments'};
}


=head2 setItemID()

The ItemID of the item that the seller wants to end in order to create a
Transaction Confirmation Request (TCR).

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


=head2 setListingDuration()

Specifies the length of time the item in the Transaction Confirmation
Request (TCR) will be available for purchase.

  RequiredInput: Yes
#    Argument: 'ns:SecondChanceOfferDurationCodeType'

=cut

sub setListingDuration {
  my $self = shift;
  $self->{'ListingDuration'} = shift
}

=head2 getListingDuration()

#    Returns: 'ns:SecondChanceOfferDurationCodeType'

=cut

sub getListingDuration {
  my $self = shift;
  return $self->{'ListingDuration'};
}


=head2 setNegotiatedPrice()

The amount the offer recipient must pay to buy the item
specified in the Transaction Confirmation Request (TCR).
A negotiated amount between the buyer and the seller.

  RequiredInput: Yes
#    Argument: 'ns:AmountType'

=cut

sub setNegotiatedPrice {
  my $self = shift;
  $self->{'NegotiatedPrice'} = shift
}

=head2 getNegotiatedPrice()

#    Returns: 'ns:AmountType'

=cut

sub getNegotiatedPrice {
  my $self = shift;
  return $self->_getDataTypeInstance( 'NegotiatedPrice'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setRecipientPostalCode()

Specifies the postal code of the user to whom the seller is offering the
Transaction Confirmation Request. Required only if the user does not meet
the other options listed in RecipientRelationCodeType. An error is
returned if RecipientUserID and RecipientPostalCode do not match for more
than 3 times for a seller per day.

  RequiredInput: No
#    Argument: 'xs:string'

=cut

sub setRecipientPostalCode {
  my $self = shift;
  $self->{'RecipientPostalCode'} = shift
}

=head2 getRecipientPostalCode()

#    Returns: 'xs:string'

=cut

sub getRecipientPostalCode {
  my $self = shift;
  return $self->{'RecipientPostalCode'};
}


=head2 setRecipientRelationType()

Specifies the current relationship between the seller and the potential
buyer. A seller can make a Transaction Confirmation Request (TCR) for an
item to a potential buyer if the buyer meets one of several criteria. A
TCR is sent by a seller to one of the following: a bidder, a best offer
buyer, a member with an ASQ question, or any member with a postal code.
See the values and annotations in RecipientRelationCodeType.

  RequiredInput: Yes
#    Argument: 'ns:RecipientRelationCodeType'

=cut

sub setRecipientRelationType {
  my $self = shift;
  $self->{'RecipientRelationType'} = shift
}

=head2 getRecipientRelationType()

#    Returns: 'ns:RecipientRelationCodeType'

=cut

sub getRecipientRelationType {
  my $self = shift;
  return $self->{'RecipientRelationType'};
}


=head2 setRecipientUserID()

Specifies the user to whom the seller is offering the Transaction
Confirmation Request.

  RequiredInput: Yes
#    Argument: 'ns:UserIDType'

=cut

sub setRecipientUserID {
  my $self = shift;
  $self->{'RecipientUserID'} = shift
}

=head2 getRecipientUserID()

#    Returns: 'ns:UserIDType'

=cut

sub getRecipientUserID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'RecipientUserID'
		,'eBay::API::XML::DataType::UserIDType');
}


=head2 setVerifyEligibilityOnly()

If true, specifies that the seller is verifying whether a new Transaction
Confirmation Request (TCR) can be created. Thus, if this value is passed
as true, then no Transaction Confirmation Request is actually made. If
VerifyEligibilityOnly is not passed, or is false, a Transaction
Confirmation Request is actually made.

  RequiredInput: No
#    Argument: 'xs:string'

=cut

sub setVerifyEligibilityOnly {
  my $self = shift;
  $self->{'VerifyEligibilityOnly'} = shift
}

=head2 getVerifyEligibilityOnly()

#    Returns: 'xs:string'

=cut

sub getVerifyEligibilityOnly {
  my $self = shift;
  return $self->{'VerifyEligibilityOnly'};
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