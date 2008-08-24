#!/usr/bin/perl

package eBay::API::XML::DataType::TransactionArrayType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. TransactionArrayType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::TransactionArrayType

=head1 DESCRIPTION

Contains an array of transactions.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::TransactionArrayType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::TransactionType;


my @gaProperties = ( [ 'Transaction', 'ns:TransactionType', '1'
	     ,'eBay::API::XML::DataType::TransactionType', '1' ]
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



=head2 setTransaction()

Information about one transaction.
Also applicable to Half.com (for GetOrders).

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=WorkingWithCombinedPayment
Title: Working with Combined Payment

  Calls: AddOrder
  RequiredInput: Yes

#    Argument: reference to an array  
                      of 'ns:TransactionType'

=cut

sub setTransaction {
  my $self = shift;
  $self->{'Transaction'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getTransaction()

  Calls: GetOrders
  Returned: Always
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

  Calls: GetItemsAwaitingFeedback
  Returned: Conditionally

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: WonList

  Calls: GetMyeBaySelling
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: SoldList

#    Returns: reference to an array  
                      of 'ns:TransactionType'

=cut

sub getTransaction {
  my $self = shift;
  return $self->_getDataTypeArray('Transaction');
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
