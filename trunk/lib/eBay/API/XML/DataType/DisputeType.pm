#!/usr/bin/perl

package eBay::API::XML::DataType::DisputeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. DisputeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::DisputeType

=head1 DESCRIPTION

Contains all information describing a dispute.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::DisputeType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::DisputeIDType;
use eBay::API::XML::DataType::DisputeMessageType;
use eBay::API::XML::DataType::DisputeResolutionType;
use eBay::API::XML::DataType::ItemType;
use eBay::API::XML::DataType::UserIDType;
use eBay::API::XML::DataType::Enum::DisputeCreditEligibilityCodeType;
use eBay::API::XML::DataType::Enum::DisputeExplanationCodeType;
use eBay::API::XML::DataType::Enum::DisputeReasonCodeType;
use eBay::API::XML::DataType::Enum::DisputeRecordTypeCodeType;
use eBay::API::XML::DataType::Enum::DisputeStateCodeType;
use eBay::API::XML::DataType::Enum::DisputeStatusCodeType;
use eBay::API::XML::DataType::Enum::TradingRoleCodeType;


my @gaProperties = ( [ 'BuyerUserID', 'ns:UserIDType', ''
	     ,'eBay::API::XML::DataType::UserIDType', '1' ]
	, [ 'DisputeCreatedTime', 'xs:dateTime', '', '', '' ]
	, [ 'DisputeCreditEligibility', 'ns:DisputeCreditEligibilityCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::DisputeCreditEligibilityCodeType', '' ]
	, [ 'DisputeExplanation', 'ns:DisputeExplanationCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::DisputeExplanationCodeType', '' ]
	, [ 'DisputeID', 'ns:DisputeIDType', ''
	     ,'eBay::API::XML::DataType::DisputeIDType', '1' ]
	, [ 'DisputeMessage', 'ns:DisputeMessageType', '1'
	     ,'eBay::API::XML::DataType::DisputeMessageType', '1' ]
	, [ 'DisputeModifiedTime', 'xs:dateTime', '', '', '' ]
	, [ 'DisputeReason', 'ns:DisputeReasonCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::DisputeReasonCodeType', '' ]
	, [ 'DisputeRecordType', 'ns:DisputeRecordTypeCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::DisputeRecordTypeCodeType', '' ]
	, [ 'DisputeResolution', 'ns:DisputeResolutionType', '1'
	     ,'eBay::API::XML::DataType::DisputeResolutionType', '1' ]
	, [ 'DisputeState', 'ns:DisputeStateCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::DisputeStateCodeType', '' ]
	, [ 'DisputeStatus', 'ns:DisputeStatusCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::DisputeStatusCodeType', '' ]
	, [ 'Escalation', 'xs:boolean', '', '', '' ]
	, [ 'Item', 'ns:ItemType', ''
	     ,'eBay::API::XML::DataType::ItemType', '1' ]
	, [ 'OtherPartyName', 'xs:string', '', '', '' ]
	, [ 'OtherPartyRole', 'ns:TradingRoleCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::TradingRoleCodeType', '' ]
	, [ 'PurchaseProtection', 'xs:boolean', '', '', '' ]
	, [ 'SellerUserID', 'ns:UserIDType', ''
	     ,'eBay::API::XML::DataType::UserIDType', '1' ]
	, [ 'TransactionID', 'xs:string', '', '', '' ]
	, [ 'UserRole', 'ns:TradingRoleCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::TradingRoleCodeType', '' ]
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



=head2 setBuyerUserID()

The eBay user ID of the buyer involved in the dispute.

#    Argument: 'ns:UserIDType'

=cut

sub setBuyerUserID {
  my $self = shift;
  $self->{'BuyerUserID'} = shift
}

=head2 getBuyerUserID()

  Calls: GetDispute
  Returned: Always

#    Returns: 'ns:UserIDType'

=cut

sub getBuyerUserID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'BuyerUserID'
		,'eBay::API::XML::DataType::UserIDType');
}


=head2 setDisputeCreatedTime()

The date and time the dispute was created, in GMT.

#    Argument: 'xs:dateTime'

=cut

sub setDisputeCreatedTime {
  my $self = shift;
  $self->{'DisputeCreatedTime'} = shift
}

=head2 getDisputeCreatedTime()

  Calls: GetDispute
  Returned: Always

  Calls: GetUserDisputes
  Returned: Conditionally
  Details: DetailLevel: ReturnSummary, ReturnAll, none

#    Returns: 'xs:dateTime'

=cut

sub getDisputeCreatedTime {
  my $self = shift;
  return $self->{'DisputeCreatedTime'};
}


=head2 setDisputeCreditEligibility()

Whether the dispute is currently eligible for Final Value Fee credit.
The value is usually Ineligible until 7 days after the
dispute was created, unless a fee exception applies.

#    Argument: 'ns:DisputeCreditEligibilityCodeType'

=cut

sub setDisputeCreditEligibility {
  my $self = shift;
  $self->{'DisputeCreditEligibility'} = shift
}

=head2 getDisputeCreditEligibility()

  Calls: GetDispute
  Returned: Always

  Calls: GetUserDisputes
  Returned: Conditionally
  Details: DetailLevel: ReturnSummary, ReturnAll, none

#    Returns: 'ns:DisputeCreditEligibilityCodeType'

=cut

sub getDisputeCreditEligibility {
  my $self = shift;
  return $self->{'DisputeCreditEligibility'};
}


=head2 setDisputeExplanation()

The detailed explanation for the dispute. Valid values
depend on the value of DisputeReason. See DisputeExplanationCodeList
for details.

#    Argument: 'ns:DisputeExplanationCodeType'

=cut

sub setDisputeExplanation {
  my $self = shift;
  $self->{'DisputeExplanation'} = shift
}

=head2 getDisputeExplanation()

  Calls: GetDispute
  Returned: Always

  Calls: GetUserDisputes
  Returned: Conditionally
  Details: DetailLevel: ReturnSummary, ReturnAll, none

#    Returns: 'ns:DisputeExplanationCodeType'

=cut

sub getDisputeExplanation {
  my $self = shift;
  return $self->{'DisputeExplanation'};
}


=head2 setDisputeID()

The unique identifier of a dispute, returned by the eBay site
when the dispute is created.

#    Argument: 'ns:DisputeIDType'

=cut

sub setDisputeID {
  my $self = shift;
  $self->{'DisputeID'} = shift
}

=head2 getDisputeID()

  Calls: GetDispute
  Returned: Always

  Calls: GetUserDisputes
  Returned: Conditionally
  Details: DetailLevel: ReturnSummary, ReturnAll, none

#    Returns: 'ns:DisputeIDType'

=cut

sub getDisputeID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'DisputeID'
		,'eBay::API::XML::DataType::DisputeIDType');
}


=head2 setDisputeMessage()

A response or message posted to a dispute, either by
an application or by a user on the eBay site.

#    Argument: reference to an array  
                      of 'ns:DisputeMessageType'

=cut

sub setDisputeMessage {
  my $self = shift;
  $self->{'DisputeMessage'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getDisputeMessage()

  Calls: GetDispute
  Returned: Always

  Calls: GetUserDisputes
  Returned: Conditionally
  Details: DetailLevel: ReturnAll, none

#    Returns: reference to an array  
                      of 'ns:DisputeMessageType'

=cut

sub getDisputeMessage {
  my $self = shift;
  return $self->_getDataTypeArray('DisputeMessage');
}


=head2 setDisputeModifiedTime()

The date and time the dispute was modified, in GMT.

#    Argument: 'xs:dateTime'

=cut

sub setDisputeModifiedTime {
  my $self = shift;
  $self->{'DisputeModifiedTime'} = shift
}

=head2 getDisputeModifiedTime()

  Calls: GetDispute
  Returned: Always

  Calls: GetUserDisputes
  Returned: Conditionally
  Details: DetailLevel: ReturnSummary, ReturnAll, none

#    Returns: 'xs:dateTime'

=cut

sub getDisputeModifiedTime {
  my $self = shift;
  return $self->{'DisputeModifiedTime'};
}


=head2 setDisputeReason()

The top-level reason for the dispute. The value of DisputeReason
determines which values of DisputeExplanation are valid.
See DisputeExplanationCodeList for details.

#    Argument: 'ns:DisputeReasonCodeType'

=cut

sub setDisputeReason {
  my $self = shift;
  $self->{'DisputeReason'} = shift
}

=head2 getDisputeReason()

  Calls: GetDispute
  Returned: Always

  Calls: GetUserDisputes
  Returned: Conditionally
  Details: DetailLevel: ReturnSummary, ReturnAll, none

#    Returns: 'ns:DisputeReasonCodeType'

=cut

sub getDisputeReason {
  my $self = shift;
  return $self->{'DisputeReason'};
}


=head2 setDisputeRecordType()

The type of dispute.

#    Argument: 'ns:DisputeRecordTypeCodeType'

=cut

sub setDisputeRecordType {
  my $self = shift;
  $self->{'DisputeRecordType'} = shift
}

=head2 getDisputeRecordType()

  Calls: GetDispute
  Returned: Always

  Calls: GetUserDisputes
  Returned: Conditionally
  Details: DetailLevel: ReturnSummary, ReturnAll, none

#    Returns: 'ns:DisputeRecordTypeCodeType'

=cut

sub getDisputeRecordType {
  my $self = shift;
  return $self->{'DisputeRecordType'};
}


=head2 setDisputeResolution()

The action resulting from the dispute resolution. The
action might include a Final Value Fee credit to the seller, a strike
to the buyer, a reversal, or an appeal.

#    Argument: reference to an array  
                      of 'ns:DisputeResolutionType'

=cut

sub setDisputeResolution {
  my $self = shift;
  $self->{'DisputeResolution'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getDisputeResolution()

  Calls: GetUserDisputes
  Returned: Conditionally
  Details: DetailLevel: ReturnAll, none

#    Returns: reference to an array  
                      of 'ns:DisputeResolutionType'

=cut

sub getDisputeResolution {
  my $self = shift;
  return $self->_getDataTypeArray('DisputeResolution');
}


=head2 setDisputeState()

The internal state of the dispute. The value determines
which values of DisputeActivity are valid when responding
to a dispute.

#    Argument: 'ns:DisputeStateCodeType'

=cut

sub setDisputeState {
  my $self = shift;
  $self->{'DisputeState'} = shift
}

=head2 getDisputeState()

  Calls: GetDispute
  Returned: Always

  Calls: GetUserDisputes
  Returned: Conditionally
  Details: DetailLevel: ReturnSummary, ReturnAll, none

#    Returns: 'ns:DisputeStateCodeType'

=cut

sub getDisputeState {
  my $self = shift;
  return $self->{'DisputeState'};
}


=head2 setDisputeStatus()

The status of the dispute, which provides additional
information about the dispute state.

#    Argument: 'ns:DisputeStatusCodeType'

=cut

sub setDisputeStatus {
  my $self = shift;
  $self->{'DisputeStatus'} = shift
}

=head2 getDisputeStatus()

  Calls: GetDispute
  Returned: Always

  Calls: GetUserDisputes
  Returned: Conditionally
  Details: DetailLevel: ReturnSummary, ReturnAll, none

#    Returns: 'ns:DisputeStatusCodeType'

=cut

sub getDisputeStatus {
  my $self = shift;
  return $self->{'DisputeStatus'};
}


=head2 setEscalation()

Whether the buyer can close a dispute unhappy and escalate it
to the eBay Standard Purchase Protection Program. To escalate, the buyer
must be eligible for the PPP. Used in Item Not Received disputes.

#    Argument: 'xs:boolean'

=cut

sub setEscalation {
  my $self = shift;
  $self->{'Escalation'} = shift
}

=head2 isEscalation()

  Calls: GetDispute
  Returned: Always

#    Returns: 'xs:boolean'

=cut

sub isEscalation {
  my $self = shift;
  return $self->{'Escalation'};
}


=head2 setItem()

Information about the item that spawned the transaction.
The transaction is a purchase from this item's listing.

#    Argument: 'ns:ItemType'

=cut

sub setItem {
  my $self = shift;
  $self->{'Item'} = shift
}

=head2 getItem()

  Calls: GetDispute
  Returned: Always

  Calls: GetUserDisputes
  Returned: Conditionally
  Details: DetailLevel: ReturnSummary, ReturnAll, none

#    Returns: 'ns:ItemType'

=cut

sub getItem {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Item'
		,'eBay::API::XML::DataType::ItemType');
}


=head2 setOtherPartyName()

The user name of the person involved in the dispute who
is not taking action or requesting information. The role is
either Buyer or Seller.

#    Argument: 'xs:string'

=cut

sub setOtherPartyName {
  my $self = shift;
  $self->{'OtherPartyName'} = shift
}

=head2 getOtherPartyName()

  Calls: GetUserDisputes
  Returned: Conditionally
  Details: DetailLevel: ReturnSummary, ReturnAll, none

#    Returns: 'xs:string'

=cut

sub getOtherPartyName {
  my $self = shift;
  return $self->{'OtherPartyName'};
}


=head2 setOtherPartyRole()

The role of the person involved in the dispute who is
not taking action or requesting information. The role is
either Buyer or Seller.

#    Argument: 'ns:TradingRoleCodeType'

=cut

sub setOtherPartyRole {
  my $self = shift;
  $self->{'OtherPartyRole'} = shift
}

=head2 getOtherPartyRole()

  Calls: GetUserDisputes
  Returned: Conditionally
  Details: DetailLevel: ReturnSummary, ReturnAll, none

#    Returns: 'ns:TradingRoleCodeType'

=cut

sub getOtherPartyRole {
  my $self = shift;
  return $self->{'OtherPartyRole'};
}


=head2 setPurchaseProtection()

Whether the buyer is eligible for the eBay Standard Purchase Protection
Program. The eligibility rules are described in the eBay site online help.
Used in Item Not Received disputes.

#    Argument: 'xs:boolean'

=cut

sub setPurchaseProtection {
  my $self = shift;
  $self->{'PurchaseProtection'} = shift
}

=head2 isPurchaseProtection()

  Calls: GetDispute
  Returned: Always

#    Returns: 'xs:boolean'

=cut

sub isPurchaseProtection {
  my $self = shift;
  return $self->{'PurchaseProtection'};
}


=head2 setSellerUserID()

The eBay user ID of the seller involved in the dispute.

#    Argument: 'ns:UserIDType'

=cut

sub setSellerUserID {
  my $self = shift;
  $self->{'SellerUserID'} = shift
}

=head2 getSellerUserID()

  Calls: GetDispute
  Returned: Always

#    Returns: 'ns:UserIDType'

=cut

sub getSellerUserID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'SellerUserID'
		,'eBay::API::XML::DataType::UserIDType');
}


=head2 setTransactionID()

The unique identifier of the transaction under dispute.
The transaction is created when the winning bidder commits to
purchasing the item but before the bidder pays.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, transaction IDs are usually 9 to 12 digits.)

#    Argument: 'xs:string'

=cut

sub setTransactionID {
  my $self = shift;
  $self->{'TransactionID'} = shift
}

=head2 getTransactionID()

  Calls: GetDispute
  Returned: Always

  Calls: GetUserDisputes
  Returned: Conditionally
  Details: DetailLevel: ReturnSummary, ReturnAll, none

#    Returns: 'xs:string'

=cut

sub getTransactionID {
  my $self = shift;
  return $self->{'TransactionID'};
}


=head2 setUserRole()

The role of the person involved in the dispute who is taking action or
requesting information. The role is either Buyer or Seller.

#    Argument: 'ns:TradingRoleCodeType'

=cut

sub setUserRole {
  my $self = shift;
  $self->{'UserRole'} = shift
}

=head2 getUserRole()

  Calls: GetUserDisputes
  Returned: Conditionally
  Details: DetailLevel: ReturnSummary, ReturnAll, none

#    Returns: 'ns:TradingRoleCodeType'

=cut

sub getUserRole {
  my $self = shift;
  return $self->{'UserRole'};
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