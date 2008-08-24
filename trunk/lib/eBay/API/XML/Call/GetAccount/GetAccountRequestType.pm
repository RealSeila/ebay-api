#!/usr/bin/perl

package eBay::API::XML::Call::GetAccount::GetAccountRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetAccountRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetAccount::GetAccountRequestType

=head1 DESCRIPTION

Enables a seller to retreive his or her own account data. Returns account
data in a report format the user selects. Also returns summary data for the account.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetAccount::GetAccountRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::ItemIDType;
use eBay::API::XML::DataType::PaginationType;
use eBay::API::XML::DataType::Enum::AccountEntrySortTypeCodeType;
use eBay::API::XML::DataType::Enum::AccountHistorySelectionCodeType;
use eBay::API::XML::DataType::Enum::CurrencyCodeType;


my @gaProperties = ( [ 'AccountEntrySortType', 'ns:AccountEntrySortTypeCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::AccountEntrySortTypeCodeType', '' ]
	, [ 'AccountHistorySelection', 'ns:AccountHistorySelectionCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::AccountHistorySelectionCodeType', '' ]
	, [ 'BeginDate', 'xs:dateTime', '', '', '' ]
	, [ 'Currency', 'ns:CurrencyCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::CurrencyCodeType', '' ]
	, [ 'EndDate', 'xs:dateTime', '', '', '' ]
	, [ 'ExcludeBalance', 'xs:boolean', '', '', '' ]
	, [ 'ExcludeSummary', 'xs:boolean', '', '', '' ]
	, [ 'InvoiceDate', 'xs:dateTime', '', '', '' ]
	, [ 'ItemID', 'ns:ItemIDType', ''
	     ,'eBay::API::XML::DataType::ItemIDType', '1' ]
	, [ 'Pagination', 'ns:PaginationType', ''
	     ,'eBay::API::XML::DataType::PaginationType', '1' ]
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



=head2 setAccountEntrySortType()

Specifies how account entries should be sorted in
the response, by an element and then in ascending or
descending order.

  RequiredInput: No
#    Argument: 'ns:AccountEntrySortTypeCodeType'

=cut

sub setAccountEntrySortType {
  my $self = shift;
  $self->{'AccountEntrySortType'} = shift
}

=head2 getAccountEntrySortType()

#    Returns: 'ns:AccountEntrySortTypeCodeType'

=cut

sub getAccountEntrySortType {
  my $self = shift;
  return $self->{'AccountEntrySortType'};
}


=head2 setAccountHistorySelection()

Specifies the report format in which to return account entries.

  RequiredInput: Conditionally
#    Argument: 'ns:AccountHistorySelectionCodeType'

=cut

sub setAccountHistorySelection {
  my $self = shift;
  $self->{'AccountHistorySelection'} = shift
}

=head2 getAccountHistorySelection()

#    Returns: 'ns:AccountHistorySelectionCodeType'

=cut

sub getAccountHistorySelection {
  my $self = shift;
  return $self->{'AccountHistorySelection'};
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
  my $self = shift;
  $self->{'BeginDate'} = shift
}

=head2 getBeginDate()

#    Returns: 'xs:dateTime'

=cut

sub getBeginDate {
  my $self = shift;
  return $self->{'BeginDate'};
}


=head2 setCurrency()

Specifies the currency used in the account report. Do not specify Currency in the request
unless the following conditions are met. First, the user has or had multiple accounts under
the same UserID. Second, the account identified in the request uses the currency you specify in the request. An error is returned if no account is found that uses the currency you specify in the request.

  RequiredInput: No
#    Argument: 'ns:CurrencyCodeType'

=cut

sub setCurrency {
  my $self = shift;
  $self->{'Currency'} = shift
}

=head2 getCurrency()

#    Returns: 'ns:CurrencyCodeType'

=cut

sub getCurrency {
  my $self = shift;
  return $self->{'Currency'};
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
  my $self = shift;
  $self->{'EndDate'} = shift
}

=head2 getEndDate()

#    Returns: 'xs:dateTime'

=cut

sub getEndDate {
  my $self = shift;
  return $self->{'EndDate'};
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
  my $self = shift;
  $self->{'ExcludeBalance'} = shift
}

=head2 isExcludeBalance()

#    Returns: 'xs:boolean'

=cut

sub isExcludeBalance {
  my $self = shift;
  return $self->{'ExcludeBalance'};
}


=head2 setExcludeSummary()

Specifies whether to return account summary information in an
AccountSummary node. Default is true, to return AccountSummary.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setExcludeSummary {
  my $self = shift;
  $self->{'ExcludeSummary'} = shift
}

=head2 isExcludeSummary()

#    Returns: 'xs:boolean'

=cut

sub isExcludeSummary {
  my $self = shift;
  return $self->{'ExcludeSummary'};
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
  my $self = shift;
  $self->{'InvoiceDate'} = shift
}

=head2 getInvoiceDate()

#    Returns: 'xs:dateTime'

=cut

sub getInvoiceDate {
  my $self = shift;
  return $self->{'InvoiceDate'};
}


=head2 setItemID()

Specifies the item ID for which to return account entries. If ItemID is used, all other filters in the request
are ignored. If the specified item does not exist or if the requesting user is not the seller of the item, an error is returned.

  RequiredInput: No
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


=head2 setPagination()

Controls pagination of the response. For this request, the valid values
of Pagination.EntriesPerPage are 0 to 2000, with a default of 500.

  RequiredInput: No
#    Argument: 'ns:PaginationType'

=cut

sub setPagination {
  my $self = shift;
  $self->{'Pagination'} = shift
}

=head2 getPagination()

#    Returns: 'ns:PaginationType'

=cut

sub getPagination {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Pagination'
		,'eBay::API::XML::DataType::PaginationType');
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
