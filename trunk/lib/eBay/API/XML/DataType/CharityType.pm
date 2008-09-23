#!/usr/bin/perl

package eBay::API::XML::DataType::CharityType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. CharityType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::CharityType

=head1 DESCRIPTION

Identifies a Giving Works listing and benefiting nonprofit charity organization.
Currently supported through the US and eBay Motors sites only. The Ad Format and
Mature Audiences categories are not supported.
Not applicable for US eBay Motors, international, Real Estate, and Tickets.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::CharityType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::Enum::CharityStatusCodeType;


my @gaProperties = ( [ 'CharityID', 'xs:string', '', '', '' ]
	, [ 'CharityListing', 'xs:boolean', '', '', '' ]
	, [ 'CharityName', 'xs:string', '', '', '' ]
	, [ 'CharityNumber', 'xs:int', '', '', '' ]
	, [ 'DonationPercent', 'xs:float', '', '', '' ]
	, [ 'LogoURL', 'xs:string', '', '', '' ]
	, [ 'Mission', 'xs:string', '', '', '' ]
	, [ 'Status', 'ns:CharityStatusCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::CharityStatusCodeType', '' ]
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



=head2 setCharityID()

A unique identification number assigned by eBay to
registered nonprofit charity organizations. Required input
when listing Giving Works items.

  Calls: AddItem
         GetItemRecommendations
         RelistItem
         VerifyAddItem
  RequiredInput: Conditionally

#    Argument: 'xs:string'

=cut

sub setCharityID {
  my $self = shift;
  $self->{'CharityID'} = shift
}

=head2 getCharityID()

  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetItem
         GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'xs:string'

=cut

sub getCharityID {
  my $self = shift;
  return $self->{'CharityID'};
}


=head2 setCharityListing()

If true, indicates that the seller has chosen to use
eBay Giving Works to donate a percentage of the item's
purchase price to a selected nonprofit organization.

#    Argument: 'xs:boolean'

=cut

sub setCharityListing {
  my $self = shift;
  $self->{'CharityListing'} = shift
}

=head2 isCharityListing()

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isCharityListing {
  my $self = shift;
  return $self->{'CharityListing'};
}


=head2 setCharityName()

The name of the benefiting nonprofit charity organization selected by the
charity seller.

MaxLength: 150

#    Argument: 'xs:string'

=cut

sub setCharityName {
  my $self = shift;
  $self->{'CharityName'} = shift
}

=head2 getCharityName()

  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

  Calls: GetItem
         GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

#    Returns: 'xs:string'

=cut

sub getCharityName {
  my $self = shift;
  return $self->{'CharityName'};
}


=head2 setCharityNumber()

A unique identification number assigned to a nonprofit
charity organization by the dedicated provider of
eBay Giving Works. Being superseded by CharityID. Max 10
digits.

  Calls: AddItem
         GetItemRecommendations
         RelistItem
         VerifyAddItem
  RequiredInput: No

#    Argument: 'xs:int'

=cut

sub setCharityNumber {
  my $self = shift;
  $self->{'CharityNumber'} = shift
}

=head2 getCharityNumber()

  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetItem
         GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'xs:int'

=cut

sub getCharityNumber {
  my $self = shift;
  return $self->{'CharityNumber'};
}


=head2 setDonationPercent()

The percentage of the purchase price that the
seller chooses to donate to the selected nonprofit
organization. This percentage is displayed in the Giving
Works item listing. Possible values: 10.0 to 100.0.
Percentages must increment by 5.0. Minimum donation
percentages may be required for Giving Works listings, see
http://pages.ebay.com/help/sell/selling-nonprofit.html for
details. DonationPercent is required input when listing
Giving Works items.

  Calls: AddItem
         GetItemRecommendations
         RelistItem
         VerifyAddItem
  RequiredInput: Conditionally

#    Argument: 'xs:float'

=cut

sub setDonationPercent {
  my $self = shift;
  $self->{'DonationPercent'} = shift
}

=head2 getDonationPercent()

  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetItem
         GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'xs:float'

=cut

sub getDonationPercent {
  my $self = shift;
  return $self->{'DonationPercent'};
}


=head2 setLogoURL()

The URL of the nonprofit charity organization. This
URL is displayed in the Giving Works item listing.

#    Argument: 'xs:string'

=cut

sub setLogoURL {
  my $self = shift;
  $self->{'LogoURL'} = shift
}

=head2 getLogoURL()

  Calls: GetItem
         GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

  Calls: GetBidderList
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getLogoURL {
  my $self = shift;
  return $self->{'LogoURL'};
}


=head2 setMission()

The stated mission of the nonprofit charity
organization. This mission is displayed in the Giving Works
item listing.

MaxLength: 511

#    Argument: 'xs:string'

=cut

sub setMission {
  my $self = shift;
  $self->{'Mission'} = shift
}

=head2 getMission()

  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetItem
         GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

#    Returns: 'xs:string'

=cut

sub getMission {
  my $self = shift;
  return $self->{'Mission'};
}


=head2 setStatus()

The status of the nonprofit charity organization.

#    Argument: 'ns:CharityStatusCodeType'

=cut

sub setStatus {
  my $self = shift;
  $self->{'Status'} = shift
}

=head2 getStatus()

  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetItem
         GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

#    Returns: 'ns:CharityStatusCodeType'

=cut

sub getStatus {
  my $self = shift;
  return $self->{'Status'};
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
