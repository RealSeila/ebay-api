#!/usr/bin/perl

package eBay::API::XML::DataType::SellerType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SellerType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::SellerType

=head1 DESCRIPTION

Information about a user returned in the context of an item's seller.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::SellerType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AddressType;
use eBay::API::XML::DataType::CharityAffiliationDetailsType;
use eBay::API::XML::DataType::ProStoresCheckoutPreferenceType;
use eBay::API::XML::DataType::SchedulingInfoType;
use eBay::API::XML::DataType::Enum::CurrencyCodeType;
use eBay::API::XML::DataType::Enum::MerchandizingPrefCodeType;
use eBay::API::XML::DataType::Enum::SellerBusinessCodeType;
use eBay::API::XML::DataType::Enum::SellerGuaranteeLevelCodeType;
use eBay::API::XML::DataType::Enum::SellerLevelCodeType;
use eBay::API::XML::DataType::Enum::SellerPaymentMethodCodeType;
use eBay::API::XML::DataType::Enum::SiteCodeType;


my @gaProperties = ( [ 'AllowPaymentEdit', 'xs:boolean', '', '', '' ]
	, [ 'BillingCurrency', 'ns:CurrencyCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::CurrencyCodeType', '' ]
	, [ 'CIPBankAccountStored', 'xs:boolean', '', '', '' ]
	, [ 'CharityAffiliationDetails', 'ns:CharityAffiliationDetailsType', ''
	     ,'eBay::API::XML::DataType::CharityAffiliationDetailsType', '1' ]
	, [ 'CharityRegistered', 'xs:boolean', '', '', '' ]
	, [ 'CheckoutEnabled', 'xs:boolean', '', '', '' ]
	, [ 'GoodStanding', 'xs:boolean', '', '', '' ]
	, [ 'LiveAuctionAuthorized', 'xs:boolean', '', '', '' ]
	, [ 'MerchandizingPref', 'ns:MerchandizingPrefCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::MerchandizingPrefCodeType', '' ]
	, [ 'PaisaPayEscrowEMIStatus', 'xs:int', '', '', '' ]
	, [ 'PaisaPayStatus', 'xs:int', '', '', '' ]
	, [ 'PaymentMethod', 'ns:SellerPaymentMethodCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::SellerPaymentMethodCodeType', '' ]
	, [ 'ProStoresPreference', 'ns:ProStoresCheckoutPreferenceType', ''
	     ,'eBay::API::XML::DataType::ProStoresCheckoutPreferenceType', '1' ]
	, [ 'QualifiesForB2BVAT', 'xs:boolean', '', '', '' ]
	, [ 'RegisteredBusinessSeller', 'xs:boolean', '', '', '' ]
	, [ 'SafePaymentExempt', 'xs:boolean', '', '', '' ]
	, [ 'SchedulingInfo', 'ns:SchedulingInfoType', ''
	     ,'eBay::API::XML::DataType::SchedulingInfoType', '1' ]
	, [ 'SellerBusinessType', 'ns:SellerBusinessCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::SellerBusinessCodeType', '' ]
	, [ 'SellerGuaranteeLevel', 'ns:SellerGuaranteeLevelCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::SellerGuaranteeLevelCodeType', '' ]
	, [ 'SellerLevel', 'ns:SellerLevelCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::SellerLevelCodeType', '' ]
	, [ 'SellerPaymentAddress', 'ns:AddressType', ''
	     ,'eBay::API::XML::DataType::AddressType', '1' ]
	, [ 'StoreOwner', 'xs:boolean', '', '', '' ]
	, [ 'StoreSite', 'ns:SiteCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::SiteCodeType', '' ]
	, [ 'StoreURL', 'xs:anyURI', '', '', '' ]
	, [ 'TransactionPercent', 'xs:float', '', '', '' ]
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



=head2 setAllowPaymentEdit()

Indicates whether the user as a seller by default allows buyers to edit the
total cost of an item (while in checkout). (Sellers enable this property in
their My eBay user preferences on the eBay site.)

#    Argument: 'xs:boolean'

=cut

sub setAllowPaymentEdit {
  my $self = shift;
  $self->{'AllowPaymentEdit'} = shift
}

=head2 isAllowPaymentEdit()

  Calls: GetBidderList
  Returned: Always

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

  Calls: GetItem
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll
  Context: Seller

  Calls: GetSellerList
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll
           GranularityLevel: Fine

  Context: SellerInfo

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Always
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isAllowPaymentEdit {
  my $self = shift;
  return $self->{'AllowPaymentEdit'};
}


=head2 setBillingCurrency()

Currency type in which the user is billed seller fees.

#    Argument: 'ns:CurrencyCodeType'

=cut

sub setBillingCurrency {
  my $self = shift;
  $self->{'BillingCurrency'} = shift
}

=head2 getBillingCurrency()

#    Returns: 'ns:CurrencyCodeType'

=cut

sub getBillingCurrency {
  my $self = shift;
  return $self->{'BillingCurrency'};
}


=head2 setCIPBankAccountStored()

If true, indicates that the user has stored bank account information with eBay
in order to use the "CIP in checkout" feature. Applicable to all eBay sites
that support CIP as a payment method.

#    Argument: 'xs:boolean'

=cut

sub setCIPBankAccountStored {
  my $self = shift;
  $self->{'CIPBankAccountStored'} = shift
}

=head2 isCIPBankAccountStored()

  Calls: GetBidderList
  Returned: Always

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

  Calls: GetSellerList
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll
           GranularityLevel: Fine

  Context: SellerInfo

  Calls: GetItem
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll
  Context: Seller

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Always
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isCIPBankAccountStored {
  my $self = shift;
  return $self->{'CIPBankAccountStored'};
}


=head2 setCharityAffiliationDetails()

Contains information about the seller's charity affiliations detail.
Returned if the user is affiliated with one or more
charities. Seller must be registered with the eBay Giving
Works provider to be affiliated with a charity non-profit
organization.

SeeLink: URL: http://givingworks.ebay.com/
Title: eBay Giving Works Program

#    Argument: 'ns:CharityAffiliationDetailsType'

=cut

sub setCharityAffiliationDetails {
  my $self = shift;
  $self->{'CharityAffiliationDetails'} = shift
}

=head2 getCharityAffiliationDetails()

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'ns:CharityAffiliationDetailsType'

=cut

sub getCharityAffiliationDetails {
  my $self = shift;
  return $self->_getDataTypeInstance( 'CharityAffiliationDetails'
		,'eBay::API::XML::DataType::CharityAffiliationDetailsType');
}


=head2 setCharityRegistered()

Indicates whether or not the seller is a registered charity
seller. If CharityRegistered is false, the user must
register with the eBay Giving Works provider to list items
with eBay Giving Works.

SeeLink: URL: http://givingworks.ebay.com/sell/
Title: eBay Giving Works for Seller

#    Argument: 'xs:boolean'

=cut

sub setCharityRegistered {
  my $self = shift;
  $self->{'CharityRegistered'} = shift
}

=head2 isCharityRegistered()

  Calls: GetUser
  Returned: Always
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isCharityRegistered {
  my $self = shift;
  return $self->{'CharityRegistered'};
}


=head2 setCheckoutEnabled()

Indicates whether the user as a seller has the option set to default new
item listings to go through checkout. (Sellers enable this property in
their My eBay user preferences on the eBay site.)

#    Argument: 'xs:boolean'

=cut

sub setCheckoutEnabled {
  my $self = shift;
  $self->{'CheckoutEnabled'} = shift
}

=head2 isCheckoutEnabled()

  Calls: GetBidderList
  Returned: Always

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

  Calls: GetItem
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll
  Context: Seller

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Always
  Details: DetailLevel: none, ReturnAll

  Calls: GetSellerList
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll
           GranularityLevel: Fine

  Context: SellerInfo

#    Returns: 'xs:boolean'

=cut

sub isCheckoutEnabled {
  my $self = shift;
  return $self->{'CheckoutEnabled'};
}


=head2 setGoodStanding()

If true, indicates that the user is in good standing with eBay. (One of the
requirements for listing a new item with Immediate Payment.)

#    Argument: 'xs:boolean'

=cut

sub setGoodStanding {
  my $self = shift;
  $self->{'GoodStanding'} = shift
}

=head2 isGoodStanding()

  Calls: GetBidderList
  Returned: Always

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

  Calls: GetItem
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll
  Context: Seller

  Calls: GetSellerList
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll
           GranularityLevel: Fine

  Context: SellerInfo

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Always
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isGoodStanding {
  my $self = shift;
  return $self->{'GoodStanding'};
}


=head2 setLiveAuctionAuthorized()

If true, the user is authorized to list lot items to the eBay Live Auctions
site.

#    Argument: 'xs:boolean'

=cut

sub setLiveAuctionAuthorized {
  my $self = shift;
  $self->{'LiveAuctionAuthorized'} = shift
}

=head2 isLiveAuctionAuthorized()

  Calls: GetBidderList
  Returned: Always

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

  Calls: GetItem
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll
  Context: Seller

  Calls: GetSellerList
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll
           GranularityLevel: Fine

  Context: SellerInfo

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Always
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isLiveAuctionAuthorized {
  my $self = shift;
  return $self->{'LiveAuctionAuthorized'};
}


=head2 setMerchandizingPref()

Indicates whether the seller participates in the
Merchandising Manager feature. If so, the seller can
set up rules for cross-promoting items from the seller's store.
If not, eBay cross-promotes items as the seller's items are
being viewed or purchased.

#    Argument: 'ns:MerchandizingPrefCodeType'

=cut

sub setMerchandizingPref {
  my $self = shift;
  $self->{'MerchandizingPref'} = shift
}

=head2 getMerchandizingPref()

  Calls: GetBidderList
  Returned: Always

  Calls: GetSellerList
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll
           GranularityLevel: Fine

  Context: SellerInfo

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

  Calls: GetItem
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll
  Context: Seller

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Always
  Details: DetailLevel: none, ReturnAll

#    Returns: 'ns:MerchandizingPrefCodeType'

=cut

sub getMerchandizingPref {
  my $self = shift;
  return $self->{'MerchandizingPref'};
}


=head2 setPaisaPayEscrowEMIStatus()

Indicates the seller's PaisaPayEscrowEMI (Equal Monthly Installment) registration status. India site only.<br>
0 - Seller not registered<br>
1 - Seller registered<br>
7 - Seller eligible<br>

#    Argument: 'xs:int'

=cut

sub setPaisaPayEscrowEMIStatus {
  my $self = shift;
  $self->{'PaisaPayEscrowEMIStatus'} = shift
}

=head2 getPaisaPayEscrowEMIStatus()

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:int'

=cut

sub getPaisaPayEscrowEMIStatus {
  my $self = shift;
  return $self->{'PaisaPayEscrowEMIStatus'};
}


=head2 setPaisaPayStatus()

Indicates the seller's PaisaPay and PaisapayEscrow registration status. India site only.<br>
0 - Seller not registered<br>
1 - Seller registered<br>
2 - Seller registered but registration suspended<br>
3 - Seller registered but outbound payment suspended<br>

#    Argument: 'xs:int'

=cut

sub setPaisaPayStatus {
  my $self = shift;
  $self->{'PaisaPayStatus'} = shift
}

=head2 getPaisaPayStatus()

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:int'

=cut

sub getPaisaPayStatus {
  my $self = shift;
  return $self->{'PaisaPayStatus'};
}


=head2 setPaymentMethod()

#    Argument: 'ns:SellerPaymentMethodCodeType'

=cut

sub setPaymentMethod {
  my $self = shift;
  $self->{'PaymentMethod'} = shift
}

=head2 getPaymentMethod()

#    Returns: 'ns:SellerPaymentMethodCodeType'

=cut

sub getPaymentMethod {
  my $self = shift;
  return $self->{'PaymentMethod'};
}


=head2 setProStoresPreference()

Details about the checkout preferences related to the ProStores store. Returned
only if set.

#    Argument: 'ns:ProStoresCheckoutPreferenceType'

=cut

sub setProStoresPreference {
  my $self = shift;
  $self->{'ProStoresPreference'} = shift
}

=head2 getProStoresPreference()

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'ns:ProStoresCheckoutPreferenceType'

=cut

sub getProStoresPreference {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ProStoresPreference'
		,'eBay::API::XML::DataType::ProStoresCheckoutPreferenceType');
}


=head2 setQualifiesForB2BVAT()

Indicates whether the user is subject to VAT. Users who have registered with
eBay as VAT-exempt are not subject to VAT.

#    Argument: 'xs:boolean'

=cut

sub setQualifiesForB2BVAT {
  my $self = shift;
  $self->{'QualifiesForB2BVAT'} = shift
}

=head2 isQualifiesForB2BVAT()

  Calls: GetBidderList
  Returned: Always

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

  Calls: GetItem
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll
  Context: Seller

  Calls: GetSellerList
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll
           GranularityLevel: Fine

  Context: SellerInfo

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Always
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isQualifiesForB2BVAT {
  my $self = shift;
  return $self->{'QualifiesForB2BVAT'};
}


=head2 setRegisteredBusinessSeller()

If true, the user is registered as a vehicle dealer on the eBay Motors site.

#    Argument: 'xs:boolean'

=cut

sub setRegisteredBusinessSeller {
  my $self = shift;
  $self->{'RegisteredBusinessSeller'} = shift
}

=head2 isRegisteredBusinessSeller()

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isRegisteredBusinessSeller {
  my $self = shift;
  return $self->{'RegisteredBusinessSeller'};
}


=head2 setSafePaymentExempt()

If true, the user is currently exempt from the requirement to offer at least
one safe payment method (PayPal/PaisaPay or one of the credit cards specified
in Item.PaymentMethods) when listing items. This value should only return true
for sellers who have registered before January 17, 2007. Otherwise, it should
return false. This setting overrides both the site and category values for
SafePaymentRequired.

Default: false

#    Argument: 'xs:boolean'

=cut

sub setSafePaymentExempt {
  my $self = shift;
  $self->{'SafePaymentExempt'} = shift
}

=head2 isSafePaymentExempt()

  Calls: GetBidderList
  Returned: Always
  Details: DetailLevel: none, ReturnAll
  Context: Seller

  Calls: GetItem
  Returned: Always
  Details: DetailLevel: none, ItemReturnAttributes, ItemReturnDescription,ReturnAll
  Context: Seller

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

  Calls: GetUser
  Returned: Always
  Details: DetailLevel: none, ReturnSummary, ReturnAll

  Calls: GetSellerList
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll
           GranularityLevel: Fine

  Context: Seller

#    Returns: 'xs:boolean'

=cut

sub isSafePaymentExempt {
  my $self = shift;
  return $self->{'SafePaymentExempt'};
}


=head2 setSchedulingInfo()

Container for scheduling limits for the user.
Conveys the minimum and maximum
minutes the user may schedule listings in advance, as well as the maximum
number of items the user may schedule.

#    Argument: 'ns:SchedulingInfoType'

=cut

sub setSchedulingInfo {
  my $self = shift;
  $self->{'SchedulingInfo'} = shift
}

=head2 getSchedulingInfo()

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'ns:SchedulingInfoType'

=cut

sub getSchedulingInfo {
  my $self = shift;
  return $self->_getDataTypeInstance( 'SchedulingInfo'
		,'eBay::API::XML::DataType::SchedulingInfoType');
}


=head2 setSellerBusinessType()

Type of seller account. This value is returned if the German
(ID 77), UK (ID 3), Ireland (ID 205), or eBay Motors (ID 100) sites are specified.

#    Argument: 'ns:SellerBusinessCodeType'

=cut

sub setSellerBusinessType {
  my $self = shift;
  $self->{'SellerBusinessType'} = shift
}

=head2 getSellerBusinessType()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'ns:SellerBusinessCodeType'

=cut

sub getSellerBusinessType {
  my $self = shift;
  return $self->{'SellerBusinessType'};
}


=head2 setSellerGuaranteeLevel()

Maximum level of Motor's Seller guarantee the seller is authorized to offer.

#    Argument: 'ns:SellerGuaranteeLevelCodeType'

=cut

sub setSellerGuaranteeLevel {
  my $self = shift;
  $self->{'SellerGuaranteeLevel'} = shift
}

=head2 getSellerGuaranteeLevel()

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'ns:SellerGuaranteeLevelCodeType'

=cut

sub getSellerGuaranteeLevel {
  my $self = shift;
  return $self->{'SellerGuaranteeLevel'};
}


=head2 setSellerLevel()

The user's eBay PowerSeller tier. Possible values are enumerated in the
SellerLevelCodeType code list.

#    Argument: 'ns:SellerLevelCodeType'

=cut

sub setSellerLevel {
  my $self = shift;
  $self->{'SellerLevel'} = shift
}

=head2 getSellerLevel()

  Calls: GetBidderList
  Returned: Always

  Calls: GetSellerList
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll
           GranularityLevel: Fine

  Context: SellerInfo

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

  Calls: GetItem
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll
  Context: Seller

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Always
  Details: DetailLevel: none, ReturnAll

#    Returns: 'ns:SellerLevelCodeType'

=cut

sub getSellerLevel {
  my $self = shift;
  return $self->{'SellerLevel'};
}


=head2 setSellerPaymentAddress()

Address used by eBay for purposes of billing the user for seller fees.

#    Argument: 'ns:AddressType'

=cut

sub setSellerPaymentAddress {
  my $self = shift;
  $self->{'SellerPaymentAddress'} = shift
}

=head2 getSellerPaymentAddress()

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

#    Returns: 'ns:AddressType'

=cut

sub getSellerPaymentAddress {
  my $self = shift;
  return $self->_getDataTypeInstance( 'SellerPaymentAddress'
		,'eBay::API::XML::DataType::AddressType');
}


=head2 setStoreOwner()

Indicates whether the user has an eBay Store (boolean value).

#    Argument: 'xs:boolean'

=cut

sub setStoreOwner {
  my $self = shift;
  $self->{'StoreOwner'} = shift
}

=head2 isStoreOwner()

  Calls: GetBidderList
  Returned: Always

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll
           GranularityLevel: Fine

  Context: SellerInfo

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

  Calls: GetItem
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll
  Context: Seller

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Always
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isStoreOwner {
  my $self = shift;
  return $self->{'StoreOwner'};
}


=head2 setStoreSite()

The site associated with the seller's eBay Store.

#    Argument: 'ns:SiteCodeType'

=cut

sub setStoreSite {
  my $self = shift;
  $self->{'StoreSite'} = shift
}

=head2 getStoreSite()

  Calls: GetUser
  Returned: Conditionally

#    Returns: 'ns:SiteCodeType'

=cut

sub getStoreSite {
  my $self = shift;
  return $self->{'StoreSite'};
}


=head2 setStoreURL()

URL for the user's eBay Store, if the user is a Store owner. Blank if not.

#    Argument: 'xs:anyURI'

=cut

sub setStoreURL {
  my $self = shift;
  $self->{'StoreURL'} = shift
}

=head2 getStoreURL()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Always
  Details: DetailLevel: none, ReturnAll

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll
           GranularityLevel: Fine

  Context: SellerInfo

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:anyURI'

=cut

sub getStoreURL {
  my $self = shift;
  return $self->{'StoreURL'};
}


=head2 setTransactionPercent()

Percentage of the number of times a member has sold successfully vs.
the number of times a member has bought an item in the preceding 365 days.

#    Argument: 'xs:float'

=cut

sub setTransactionPercent {
  my $self = shift;
  $self->{'TransactionPercent'} = shift
}

=head2 getTransactionPercent()

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:float'

=cut

sub getTransactionPercent {
  my $self = shift;
  return $self->{'TransactionPercent'};
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
