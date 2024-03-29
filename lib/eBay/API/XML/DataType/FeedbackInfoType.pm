#!/usr/bin/perl

package eBay::API::XML::DataType::FeedbackInfoType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. FeedbackInfoType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::FeedbackInfoType

=head1 DESCRIPTION

Information used to add a feedback note for a user.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::FeedbackInfoType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::UserIDType;
use eBay::API::XML::DataType::Enum::CommentTypeCodeType;


my @gaProperties = ( [ 'CommentText', 'xs:string', '', '', '' ]
	, [ 'CommentType', 'ns:CommentTypeCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::CommentTypeCodeType', '' ]
	, [ 'TargetUser', 'ns:UserIDType', ''
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



=head2 setCommentText()

Textual comment that explains, clarifies, or justifies the feedback
rating specified in CommentType. Still displayed if feedback is withdrawn.

  Calls: CompleteSale
  RequiredInput: No

#    Argument: 'xs:string'

=cut

sub setCommentText {
  my $self = shift;
  $self->{'CommentText'} = shift
}

=head2 getCommentText()

  Calls: GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'xs:string'

=cut

sub getCommentText {
  my $self = shift;
  return $self->{'CommentText'};
}


=head2 setCommentType()

Rating of the feedback being left (e.g., Positive). Sellers cannot leave neutral or negative feedback for buyers.

  Calls: CompleteSale
  RequiredInput: No
  OnlyTheseValues: Positive

#    Argument: 'ns:CommentTypeCodeType'

=cut

sub setCommentType {
  my $self = shift;
  $self->{'CommentType'} = shift
}

=head2 getCommentType()

  Calls: GetItemsAwaitingFeedback
  Returned: Conditionally
  Context: FeedbackReceived

  Calls: GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: WonList
           DeletedFromWonList

  Calls: GetMyeBaySelling
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: SoldList
           DeletedFromSoldList

#    Returns: 'ns:CommentTypeCodeType'

=cut

sub getCommentType {
  my $self = shift;
  return $self->{'CommentType'};
}


=head2 setTargetUser()

Recipient user for whom the feedback is being left.

  Calls: CompleteSale
  RequiredInput: No

#    Argument: 'ns:UserIDType'

=cut

sub setTargetUser {
  my $self = shift;
  $self->{'TargetUser'} = shift
}

=head2 getTargetUser()

  Calls: GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'ns:UserIDType'

=cut

sub getTargetUser {
  my $self = shift;
  return $self->_getDataTypeInstance( 'TargetUser'
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
