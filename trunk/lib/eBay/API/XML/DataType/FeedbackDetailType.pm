#!/usr/bin/perl

package eBay::API::XML::DataType::FeedbackDetailType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. FeedbackDetailType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::FeedbackDetailType

=head1 DESCRIPTION

Detailed feedback information for a user. Conveys the score for the
feedback, the textual comment, and other information.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::FeedbackDetailType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AmountType;
use eBay::API::XML::DataType::ItemIDType;
use eBay::API::XML::DataType::UserIDType;
use eBay::API::XML::DataType::Enum::CommentTypeCodeType;
use eBay::API::XML::DataType::Enum::TradingRoleCodeType;


my @gaProperties = ( [ 'CommentReplaced', 'xs:boolean', '', '', '' ]
	, [ 'CommentText', 'xs:string', '', '', '' ]
	, [ 'CommentTime', 'xs:dateTime', '', '', '' ]
	, [ 'CommentType', 'ns:CommentTypeCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::CommentTypeCodeType', '' ]
	, [ 'CommentingUser', 'ns:UserIDType', ''
	     ,'eBay::API::XML::DataType::UserIDType', '1' ]
	, [ 'CommentingUserScore', 'xs:int', '', '', '' ]
	, [ 'Countable', 'xs:boolean', '', '', '' ]
	, [ 'FeedbackID', 'xs:string', '', '', '' ]
	, [ 'FeedbackResponse', 'xs:string', '', '', '' ]
	, [ 'FollowUpReplaced', 'xs:boolean', '', '', '' ]
	, [ 'Followup', 'xs:string', '', '', '' ]
	, [ 'ItemID', 'ns:ItemIDType', ''
	     ,'eBay::API::XML::DataType::ItemIDType', '1' ]
	, [ 'ItemPrice', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'ItemTitle', 'xs:string', '', '', '' ]
	, [ 'ResponseReplaced', 'xs:boolean', '', '', '' ]
	, [ 'Role', 'ns:TradingRoleCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::TradingRoleCodeType', '' ]
	, [ 'TransactionID', 'xs:string', '', '', '' ]
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



=head2 setCommentReplaced()

Indicates whether eBay replaced the comment with a message
that the comment was removed.

#    Argument: 'xs:boolean'

=cut

sub setCommentReplaced {
  my $self = shift;
  $self->{'CommentReplaced'} = shift
}

=head2 isCommentReplaced()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isCommentReplaced {
  my $self = shift;
  return $self->{'CommentReplaced'};
}


=head2 setCommentText()

Text message left by user specified in CommentingUser. Used to provide a more
in-depth description of the user's opinion of their transaction with the user
about whom they left feedback. Returned as text in the language that the
comment was originally left in.
Returned for a detail level of ReturnAll (if the parent is returned).

MaxLength: 80 (125 for Taiwan)

#    Argument: 'xs:string'

=cut

sub setCommentText {
  my $self = shift;
  $self->{'CommentText'} = shift
}

=head2 getCommentText()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

#    Returns: 'xs:string'

=cut

sub getCommentText {
  my $self = shift;
  return $self->{'CommentText'};
}


=head2 setCommentTime()

Date and time (in GMT) that the feedback was submitted to eBay.
Returned for a detail level of ReturnAll (if the parent is returned).

#    Argument: 'xs:dateTime'

=cut

sub setCommentTime {
  my $self = shift;
  $self->{'CommentTime'} = shift
}

=head2 getCommentTime()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

#    Returns: 'xs:dateTime'

=cut

sub getCommentTime {
  my $self = shift;
  return $self->{'CommentTime'};
}


=head2 setCommentType()

Type of feedback. Can be Positive, Neutral, Negative, or Withdrawn (see the
CommentTypeCodeType code list). Positive feedbacks add to the user's total
feedback score, negative feedbacks lower the score, and neutral feedbacks do
not affect the score (but do affect the overall picture of the user's online
reputation).
Returned for a detail level of ReturnAll (if the parent is returned).

#    Argument: 'ns:CommentTypeCodeType'

=cut

sub setCommentType {
  my $self = shift;
  $self->{'CommentType'} = shift
}

=head2 getCommentType()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

#    Returns: 'ns:CommentTypeCodeType'

=cut

sub getCommentType {
  my $self = shift;
  return $self->{'CommentType'};
}


=head2 setCommentingUser()

eBay user ID for the user who left the feedback.
Returned for a detail level of ReturnAll (if the parent is returned).

#    Argument: 'ns:UserIDType'

=cut

sub setCommentingUser {
  my $self = shift;
  $self->{'CommentingUser'} = shift
}

=head2 getCommentingUser()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

#    Returns: 'ns:UserIDType'

=cut

sub getCommentingUser {
  my $self = shift;
  return $self->_getDataTypeInstance( 'CommentingUser'
		,'eBay::API::XML::DataType::UserIDType');
}


=head2 setCommentingUserScore()

Feedback score of the user indicated in CommentingUser.
Returned for a detail level of ReturnAll (if the parent is returned).

#    Argument: 'xs:int'

=cut

sub setCommentingUserScore {
  my $self = shift;
  $self->{'CommentingUserScore'} = shift
}

=head2 getCommentingUserScore()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

#    Returns: 'xs:int'

=cut

sub getCommentingUserScore {
  my $self = shift;
  return $self->{'CommentingUserScore'};
}


=head2 setCountable()

Specifies if a user's feedback score is or is not countable. This field is
returned only when a user's feedback score is not countable (value is false).
<br><br>
Only feedback left by verified users can count toward the aggregate score of
another user. If a user is not verified and leaves a feedback, then later becomes verified,
that feedback will still not be counted. Or, if a user is verified and at some
later date changes to unverified status, the feedback left while the user was
verified remains countable. So you cannot determine a user's current
verification status from whether or not feedback they've left is or was
countable. Whether or not feedback is countable has nothing to do with the
verification status of the one receiving the comment, only the one leaving
the feedback.

SeeLink: URL: io_GetUser.html#Response.User.SiteVerfied
Title: (GetUser) ItemDetails
Default: true

#    Argument: 'xs:boolean'

=cut

sub setCountable {
  my $self = shift;
  $self->{'Countable'} = shift
}

=head2 isCountable()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isCountable {
  my $self = shift;
  return $self->{'Countable'};
}


=head2 setFeedbackID()

Unique identifier for the feedback entry.
Returned for a detail level of ReturnAll (if the parent is returned).

#    Argument: 'xs:string'

=cut

sub setFeedbackID {
  my $self = shift;
  $self->{'FeedbackID'} = shift
}

=head2 getFeedbackID()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

#    Returns: 'xs:string'

=cut

sub getFeedbackID {
  my $self = shift;
  return $self->{'FeedbackID'};
}


=head2 setFeedbackResponse()

Textual comment that the user targeted by feedback may leave in response or
rebuttal to the feedback. (Cannot be submitted
or edited via the API.)

MaxLength: 80 (125 for Taiwan)

#    Argument: 'xs:string'

=cut

sub setFeedbackResponse {
  my $self = shift;
  $self->{'FeedbackResponse'} = shift
}

=head2 getFeedbackResponse()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

#    Returns: 'xs:string'

=cut

sub getFeedbackResponse {
  my $self = shift;
  return $self->{'FeedbackResponse'};
}


=head2 setFollowUpReplaced()

Indicates whether eBay replaced the follow-up with a message
that the follow-up was removed.

#    Argument: 'xs:boolean'

=cut

sub setFollowUpReplaced {
  my $self = shift;
  $self->{'FollowUpReplaced'} = shift
}

=head2 isFollowUpReplaced()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isFollowUpReplaced {
  my $self = shift;
  return $self->{'FollowUpReplaced'};
}


=head2 setFollowup()

Explanation a user can give to a response.
(Cannot be submitted or edited via the API.)
Returned for a detail level of ReturnAll (if the parent is returned).

MaxLength: 80 (125 for Taiwan)

#    Argument: 'xs:string'

=cut

sub setFollowup {
  my $self = shift;
  $self->{'Followup'} = shift
}

=head2 getFollowup()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

#    Returns: 'xs:string'

=cut

sub getFollowup {
  my $self = shift;
  return $self->{'Followup'};
}


=head2 setItemID()

The ID that uniquely identifies the item listing.
Returned for a detail level of ReturnAll (if the parent is returned).

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

#    Argument: 'ns:ItemIDType'

=cut

sub setItemID {
  my $self = shift;
  $self->{'ItemID'} = shift
}

=head2 getItemID()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

#    Returns: 'ns:ItemIDType'

=cut

sub getItemID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ItemID'
		,'eBay::API::XML::DataType::ItemIDType');
}


=head2 setItemPrice()

The final price for the item, associated with
the currency identified by the currencyId attribute of the AmountType.
This value can be returned as part of the Detailed Seller Ratings feature.
Not returned if a listing ended more than 90 days ago.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=DetailedSellerRatings
Title: Detailed Seller Ratings

#    Argument: 'ns:AmountType'

=cut

sub setItemPrice {
  my $self = shift;
  $self->{'ItemPrice'} = shift
}

=head2 getItemPrice()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

#    Returns: 'ns:AmountType'

=cut

sub getItemPrice {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ItemPrice'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setItemTitle()

Name of the listing for which feedback was provided. Returned as CDATA. This
value can be returned as part of the Detailed Seller Ratings feature.
Not returned if a listing ended more than 90 days ago.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=DetailedSellerRatings
Title: Detailed Seller Ratings
MaxLength: 55

#    Argument: 'xs:string'

=cut

sub setItemTitle {
  my $self = shift;
  $self->{'ItemTitle'} = shift
}

=head2 getItemTitle()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

#    Returns: 'xs:string'

=cut

sub getItemTitle {
  my $self = shift;
  return $self->{'ItemTitle'};
}


=head2 setResponseReplaced()

Indicates whether eBay replaced the response with a message
that the response was removed.

#    Argument: 'xs:boolean'

=cut

sub setResponseReplaced {
  my $self = shift;
  $self->{'ResponseReplaced'} = shift
}

=head2 isResponseReplaced()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isResponseReplaced {
  my $self = shift;
  return $self->{'ResponseReplaced'};
}


=head2 setRole()

Indicates whether the user who was the feedback recipient was a Buyer or the
Seller for that transaction.
Returned for a detail level of ReturnAll (if the parent is returned).

#    Argument: 'ns:TradingRoleCodeType'

=cut

sub setRole {
  my $self = shift;
  $self->{'Role'} = shift
}

=head2 getRole()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

#    Returns: 'ns:TradingRoleCodeType'

=cut

sub getRole {
  my $self = shift;
  return $self->{'Role'};
}


=head2 setTransactionID()

Unique identifier for the transaction about which
this feedback entry was left.
This field is not returned in the case of TransactionIDs from Chinese auction listings,
because a value of zero is used for TransactionIDs in such cases.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, transaction IDs are usually 9 to 12 digits.)

#    Argument: 'xs:string'

=cut

sub setTransactionID {
  my $self = shift;
  $self->{'TransactionID'} = shift
}

=head2 getTransactionID()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

#    Returns: 'xs:string'

=cut

sub getTransactionID {
  my $self = shift;
  return $self->{'TransactionID'};
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
