#!/usr/bin/perl

package eBay::API::XML::Call::GetItemTransactions;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetItemTransactions.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetItemTransactions

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetItemTransactions inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetItemTransactions::GetItemTransactionsRequestType;
use eBay::API::XML::Call::GetItemTransactions::GetItemTransactionsResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetItemTransactions';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetItemTransactions::GetItemTransactionsRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetItemTransactions::GetItemTransactionsResponseType';
}

#
# input properties
#

=head2 setIncludeContainingOrder()

Whether to retrieve the order information.
Default is false.
Will not return the ContainingOrder information for an Express transaction that was part of an Express order.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut
       
sub setIncludeContainingOrder {
   my $self   = shift;
   my $sIncludeContainingOrder = shift;
   $self->getRequestDataType()->setIncludeContainingOrder($sIncludeContainingOrder);
}

=head2 setIncludeFinalValueFee()

Indicates whether to include final value fees in the response.
For most listing types, the fee is returned in Transaction.FinalValueFee.
For Dutch auctions that end with bids (not Buy It Now purchases), the fee
is returned in Item.SellingStatus.FinalValueFee.
The Final Value Fee for FixedPriceItem, StoresFixedPrice, and Buy It Now
Dutch listing types is returned on a transaction by transaction basis.
For all other listing types, including Chinese and Dutch (no Buy It Now
purchases), the Final Value Fee is returned when the listing status is
Completed.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut
       
sub setIncludeFinalValueFee {
   my $self   = shift;
   my $sIncludeFinalValueFee = shift;
   $self->getRequestDataType()->setIncludeFinalValueFee($sIncludeFinalValueFee);
}

=head2 setItemID()

Unique item ID for the item for which to retrieve transactions.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

  RequiredInput: Yes
#    Argument: 'ns:ItemIDType'

=cut
       
sub setItemID {
   my $self   = shift;
   my $pItemID = shift;
   $self->getRequestDataType()->setItemID($pItemID);
}

=head2 setModTimeFrom()

Also see NumberOfDays which, if used, takes precedence over ModTimeFrom and
ModTimeTo. If you prefer to use ModTimeFrom and
ModTimeTo, you specify the time range within which
retrieved transactions' statuses were modified.
ModTimeFrom is the earlier (older) date and ModTimeTo is the later (more recent) date.
If you specify this value, and do not specify the other end of the range,
then the time range is 30 days.
The time range between ModTimeFrom to ModTimeTo
cannot be greater than 30 days.

  RequiredInput: No
#    Argument: 'xs:dateTime'

=cut
       
sub setModTimeFrom {
   my $self   = shift;
   my $sModTimeFrom = shift;
   $self->getRequestDataType()->setModTimeFrom($sModTimeFrom);
}

=head2 setModTimeTo()

Also see NumberOfDays which, if used, takes precedence over ModTimeFrom and
ModTimeTo. If you prefer to use ModTimeFrom and
ModTimeTo, you specify the time range within which
retrieved transactions' statuses were modified.
ModTimeFrom is the earlier (older) date and ModTimeTo is the later (more recent) date.
If you specify this value, and do not specify the other end of the range,
then the time range is 30 days.
The time range between ModTimeFrom to ModTimeTo
cannot be greater than 30 days.

  RequiredInput: No
#    Argument: 'xs:dateTime'

=cut
       
sub setModTimeTo {
   my $self   = shift;
   my $sModTimeTo = shift;
   $self->getRequestDataType()->setModTimeTo($sModTimeTo);
}

=head2 setNumberOfDays()

NumberOfDays enables you to specify the number of days' worth
of new and modified transactions that you want to retrieve.
The call response contains the transactions
whose status was modified within the
specified number of days since the API call was made.
NumberOfDays is often preferable to using
the ModTimeFrom and ModTimeTo filters because you only need to specify
one value.
If you use NumberOfDays, then ModTimeFrom and ModTimeTo are ignored.
For this field, one day is defined as 24 hours.

Max: 30

  RequiredInput: No
#    Argument: 'xs:int'

=cut
       
sub setNumberOfDays {
   my $self   = shift;
   my $sNumberOfDays = shift;
   $self->getRequestDataType()->setNumberOfDays($sNumberOfDays);
}

=head2 setPagination()

Child elements control pagination of the output. Use its EntriesPerPage
property to control the number of transactions to return per call and its
PageNumber property to specify the page of data to return.

  RequiredInput: No
#    Argument: 'ns:PaginationType'

=cut
       
sub setPagination {
   my $self   = shift;
   my $pPagination = shift;
   $self->getRequestDataType()->setPagination($pPagination);
}

=head2 setPlatform()

Name of the eBay co-branded site upon which the transaction was made.
This will serve as a filter for the transactions to get emitted in the response.

  RequiredInput: No
#    Argument: 'ns:TransactionPlatformCodeType'

=cut
       
sub setPlatform {
   my $self   = shift;
   my $sPlatform = shift;
   $self->getRequestDataType()->setPlatform($sPlatform);
}

=head2 setTransactionID()

Identifies one transaction for a listing.
For Chinese auctions listings (single-item listings for which there can be
only one transaction), TransactionID is always 0, and for multi-quantity
listings (for which there can be multiple transactions), TransactionID has
a non-0 value.
To determine the valid transaction IDs
for a listing, you typically need to have previously executed GetItemTransactionsCall
or GetSellerTransactionsCall and stored all the listing's transactions.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, transaction IDs are usually 9 to 12 digits.)

  RequiredInput: No
#    Argument: 'xs:string'

=cut
       
sub setTransactionID {
   my $self   = shift;
   my $sTransactionID = shift;
   $self->getRequestDataType()->setTransactionID($sTransactionID);
}



#
# output properties
#

=head2 isHasMoreTransactions()

Indicates whether there are additional transactions to retrieve.
That is, indicates whether more pages of data are available to be
returned, given the filters that were specified in the request.
Returns false for the last page of data.

  Returned: Always
  Details: DetailLevel: none, ReturnAll, ItemReturnDescription
#    Returns: 'xs:boolean'

=cut
       
sub isHasMoreTransactions {
   my $self = shift;
   return $self->getResponseDataType()->isHasMoreTransactions();
}

=head2 getItem()

Item object that spawned the transaction. It is a purchase from this item's listing
that the transaction represents.

  Returned: Always
  Details: DetailLevel: none, ReturnAll, ItemReturnDescription
#    Returns: 'ns:ItemType'

=cut
       
sub getItem {
   my $self = shift;
   return $self->getResponseDataType()->getItem();
}

=head2 getPageNumber()

Page number for the page of transactions the response returned.

  Returned: Always
  Details: DetailLevel: none, ReturnAll, ItemReturnDescription
#    Returns: 'xs:int'

=cut
       
sub getPageNumber {
   my $self = shift;
   return $self->getResponseDataType()->getPageNumber();
}

=head2 getPaginationResult()

Contains the total number of pages (TotalNumberOfPages) and the total number
of entries (TotalNumberOfEntries) that could be returned given repeated calls
that use the same selection criteria as the call that returned this response.

  Returned: Always
  Details: DetailLevel: none, ReturnAll, ItemReturnDescription
#    Returns: 'ns:PaginationResultType'

=cut
       
sub getPaginationResult {
   my $self = shift;
   return $self->getResponseDataType()->getPaginationResult();
}

=head2 isPayPalPreferred()

Indicates whether the item's seller has the preference enabled that shows
that the seller prefers PayPal as the method of payment for an item. This
preference is indicated on an item's View Item page and is intended to
influence a buyer to use PayPal
to pay for the item.

  Returned: Always
  Details: DetailLevel: none, ReturnAll, ItemReturnDescription
#    Returns: 'xs:boolean'

=cut
       
sub isPayPalPreferred {
   my $self = shift;
   return $self->getResponseDataType()->isPayPalPreferred();
}

=head2 getReturnedTransactionCountActual()

Number of transactions retrieved in the current page of results just returned.
May be a lower value than TransactionsPerPage if the page returned is the last
page and more than one page of data exists.

  Returned: Always
  Details: DetailLevel: none, ReturnAll, ItemReturnDescription
#    Returns: 'xs:int'

=cut
       
sub getReturnedTransactionCountActual {
   my $self = shift;
   return $self->getResponseDataType()->getReturnedTransactionCountActual();
}

=head2 getTransactionArray()

List of Transaction objects representing the transactions resulting
from the listing. Each Transaction object contains the data for one purchase
(of one or more items in the same listing). The Transaction.Item field is not
returned because the Item object is returned at the root level of the response.
See the reference guide for more information about the fields that are returned.

  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll, ItemReturnDescription
#    Returns: 'ns:TransactionArrayType'

=cut
       
sub getTransactionArray {
   my $self = shift;
   return $self->getResponseDataType()->getTransactionArray();
}

=head2 getTransactionsPerPage()

Number of transactions returned per page (per call). May be a higher value
than ReturnedTransactionCountActual if the page returned is the last page
and more than one page of data exists.

  Returned: Always
  Details: DetailLevel: none, ReturnAll, ItemReturnDescription
#    Returns: 'xs:int'

=cut
       
sub getTransactionsPerPage {
   my $self = shift;
   return $self->getResponseDataType()->getTransactionsPerPage();
}





1;   
