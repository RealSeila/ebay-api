#!/usr/bin/perl

package eBay::API::XML::Call::GetAccount;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetAccount.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetAccount

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetAccount inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetAccount::GetAccountRequestType;
use eBay::API::XML::Call::GetAccount::GetAccountResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetAccount';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetAccount::GetAccountRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetAccount::GetAccountResponseType';
}

#
# input properties
#

=head2 setAccountEntrySortType()

Specifies how account entries should be sorted in
the response, by an element and then in ascending or
descending order.

  RequiredInput: No
#    Argument: 'ns:AccountEntrySortTypeCodeType'

=cut
       
sub setAccountEntrySortType {
   my $self   = shift;
   my $sAccountEntrySortType = shift;
   $self->getRequestDataType()->setAccountEntrySortType($sAccountEntrySortType);
}

=head2 setAccountHistorySelection()

Specifies the report format in which to return account entries.

  RequiredInput: Conditionally
#    Argument: 'ns:AccountHistorySelectionCodeType'

=cut
       
sub setAccountHistorySelection {
   my $self   = shift;
   my $sAccountHistorySelection = shift;
   $self->getRequestDataType()->setAccountHistorySelection($sAccountHistorySelection);
}

=head2 setBeginDate()

Specifies the beginning of a date range during which a credit or debit
occurred. Used when AccountHistorySelection is BetweenSpecifiedDates.
Value must be less than or equal to the value specified in EndDate. The allowed date
formats are YYYY-MM-DD and YYYY-MM-DD HH:mm:ss.
You can retrieve information that is up to 4 months old.

  RequiredInput: Conditionally
#    Argument: 'xs:dateTime'

=cut
       
sub setBeginDate {
   my $self   = shift;
   my $sBeginDate = shift;
   $self->getRequestDataType()->setBeginDate($sBeginDate);
}

=head2 setCurrency()

Specifies the currency used in the account report. Do not specify Currency in the request
unless the following conditions are met. First, the user has or had multiple accounts under
the same UserID. Second, the account identified in the request uses the currency you specify in the request. An error is returned if no account is found that uses the currency you specify in the request.

  RequiredInput: No
#    Argument: 'ns:CurrencyCodeType'

=cut
       
sub setCurrency {
   my $self   = shift;
   my $sCurrency = shift;
   $self->getRequestDataType()->setCurrency($sCurrency);
}

=head2 setEndDate()

Specifies the end of a date range during which a credit or debit
occurred. Used when AccountHistorySelection is BetweenSpecifiedDates.
Value must be greater than or equal to the value specified in BeginDate. The
allowed date formats are YYYY-MM-DD and YYYY-MM-DD HH:mm:ss.

  RequiredInput: Conditionally
#    Argument: 'xs:dateTime'

=cut
       
sub setEndDate {
   my $self   = shift;
   my $sEndDate = shift;
   $self->getRequestDataType()->setEndDate($sEndDate);
}

=head2 setExcludeBalance()

Specifies whether to calculate balances. Default is
false, which calculates balances. The value true means
do not calculate balances. If true, AccountEntry.Balance and
AccountSummary.CurrentBalance are never returned in the response.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut
       
sub setExcludeBalance {
   my $self   = shift;
   my $sExcludeBalance = shift;
   $self->getRequestDataType()->setExcludeBalance($sExcludeBalance);
}

=head2 setExcludeSummary()

Specifies whether to return account summary information in an
AccountSummary node. Default is true, to return AccountSummary.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut
       
sub setExcludeSummary {
   my $self   = shift;
   my $sExcludeSummary = shift;
   $self->getRequestDataType()->setExcludeSummary($sExcludeSummary);
}

=head2 setInvoiceDate()

Specifies the month and year of the invoice requested. The report
includes only the entries that appear on the seller's invoice in the specified month
and year. An entry can occur in one month and appear on the next month's
invoice. Used with SpecifiedInvoice reports.

  RequiredInput: Conditionally
#    Argument: 'xs:dateTime'

=cut
       
sub setInvoiceDate {
   my $self   = shift;
   my $sInvoiceDate = shift;
   $self->getRequestDataType()->setInvoiceDate($sInvoiceDate);
}

=head2 setItemID()

Specifies the item ID for which to return account entries. If ItemID is used, all other filters in the request
are ignored. If the specified item does not exist or if the requesting user is not the seller of the item, an error is returned.

  RequiredInput: No
#    Argument: 'ns:ItemIDType'

=cut
       
sub setItemID {
   my $self   = shift;
   my $pItemID = shift;
   $self->getRequestDataType()->setItemID($pItemID);
}

=head2 setPagination()

Controls pagination of the response. For this request, the valid values
of Pagination.EntriesPerPage are 0 to 2000, with a default of 500.

  RequiredInput: No
#    Argument: 'ns:PaginationType'

=cut
       
sub setPagination {
   my $self   = shift;
   my $pPagination = shift;
   $self->getRequestDataType()->setPagination($pPagination);
}



#
# output properties
#

=head2 getAccountEntries()

Contains individual account entries, according to the report's scope and date range.
Each account entry represents one credit, debit, or administrative account action.

  Returned: Conditionally
#    Returns: 'ns:AccountEntriesType'

=cut
       
sub getAccountEntries {
   my $self = shift;
   return $self->getResponseDataType()->getAccountEntries();
}

=head2 getAccountID()

Specifies the seller's unique account number.

  Returned: Always
#    Returns: 'xs:string'

=cut
       
sub getAccountID {
   my $self = shift;
   return $self->getResponseDataType()->getAccountID();
}

=head2 getAccountSummary()

Contains summary data for the seller's account, such as the overall
balance, bank account and credit card information, and amount and
date of any past due balances. Can also contain data for
one or more additional accounts, if the user has changed country
of residence.

  Returned: Conditionally
#    Returns: 'ns:AccountSummaryType'

=cut
       
sub getAccountSummary {
   my $self = shift;
   return $self->getResponseDataType()->getAccountSummary();
}

=head2 getCurrency()

Indicates the currency used for monetary amounts in the report.

  Returned: Always
#    Returns: 'ns:CurrencyCodeType'

=cut
       
sub getCurrency {
   my $self = shift;
   return $self->getResponseDataType()->getCurrency();
}

=head2 getEntriesPerPage()

Specifies the number of items that are being returned per virtual page of date.
Value is the same as that specified in Pagination.EntriesPerPage.

  Returned: Always
#    Returns: 'xs:int'

=cut
       
sub getEntriesPerPage {
   my $self = shift;
   return $self->getResponseDataType()->getEntriesPerPage();
}

=head2 isHasMoreEntries()

Indicates whether there are more items yet to be retrieved. Additional calls
must be made to retrieve those items.

  Returned: Conditionally
#    Returns: 'xs:boolean'

=cut
       
sub isHasMoreEntries {
   my $self = shift;
   return $self->getResponseDataType()->isHasMoreEntries();
}

=head2 getPageNumber()

Indicates which page of data was just returned. Value is the same as the value
specified in Pagination.PageNumber. If PageNumber in the request is higher than
the total number of pages, the call fails with an error.)

  Returned: Always
#    Returns: 'xs:int'

=cut
       
sub getPageNumber {
   my $self = shift;
   return $self->getResponseDataType()->getPageNumber();
}

=head2 getPaginationResult()

Contains the total number of pages (TotalNumberOfPages) and the total
number of account entries (TotalNumberOfEntries) that can be returned
on repeated calls with the same format and report criteria.

  Returned: Always
#    Returns: 'ns:PaginationResultType'

=cut
       
sub getPaginationResult {
   my $self = shift;
   return $self->getResponseDataType()->getPaginationResult();
}





1;   
