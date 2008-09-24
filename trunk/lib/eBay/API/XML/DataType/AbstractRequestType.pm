#!/usr/bin/perl

package eBay::API::XML::DataType::AbstractRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. AbstractRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::AbstractRequestType

=head1 DESCRIPTION

Base type definition of the request payload, which can carry any type of payload
content plus optional versioning information and detail level requirements. All
concrete request types (e.g., AddItemRequestType) are derived from the abstract
request type. The naming convention we use for the concrete type names is the name
of the service (the verb or call name) followed by "RequestType":
VerbNameRequestType



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::AbstractRequestType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::BotBlockRequestType;
use eBay::API::XML::DataType::UUIDType;
use eBay::API::XML::DataType::XMLRequesterCredentialsType;
use eBay::API::XML::DataType::Enum::DetailLevelCodeType;
use eBay::API::XML::DataType::Enum::ErrorHandlingCodeType;
use eBay::API::XML::DataType::Enum::WarningLevelCodeType;


my @gaProperties = ( [ 'BotBlock', 'ns:BotBlockRequestType', ''
	     ,'eBay::API::XML::DataType::BotBlockRequestType', '1' ]
	, [ 'DetailLevel', 'ns:DetailLevelCodeType', '1'
	     ,'eBay::API::XML::DataType::Enum::DetailLevelCodeType', '' ]
	, [ 'EndUserIP', 'xs:string', '', '', '' ]
	, [ 'ErrorHandling', 'ns:ErrorHandlingCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::ErrorHandlingCodeType', '' ]
	, [ 'ErrorLanguage', 'xs:string', '', '', '' ]
	, [ 'InvocationID', 'ns:UUIDType', ''
	     ,'eBay::API::XML::DataType::UUIDType', '1' ]
	, [ 'MessageID', 'xs:string', '', '', '' ]
	, [ 'OutputSelector', 'xs:string', '1', '', '' ]
	, [ 'RequesterCredentials', 'ns:XMLRequesterCredentialsType', ''
	     ,'eBay::API::XML::DataType::XMLRequesterCredentialsType', '1' ]
	, [ 'Version', 'xs:string', '', '', '' ]
	, [ 'WarningLevel', 'ns:WarningLevelCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::WarningLevelCodeType', '' ]
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



=head2 setBotBlock()

Container for a token and for user input.

  Calls: PlaceOffer
  RequiredInput: Conditionally

#    Argument: 'ns:BotBlockRequestType'

=cut

sub setBotBlock {
  my $self = shift;
  $self->{'BotBlock'} = shift
}

=head2 getBotBlock()

#    Returns: 'ns:BotBlockRequestType'

=cut

sub getBotBlock {
  my $self = shift;
  return $self->_getDataTypeInstance( 'BotBlock'
		,'eBay::API::XML::DataType::BotBlockRequestType');
}


=head2 setDetailLevel()

Detail levels are instructions that define standard subsets of
data to return for particular data components (e.g., each
Item, Transaction, or User) within the response payload.
For example, a particular detail level might cause the
response to include buyer-related data in every result
(e.g., for every Item), but no seller-related data.
Specifying a detail level is like using a
predefined attribute list in the SELECT clause of an SQL query.
Use the DetailLevel element to specify the required detail level
that the client application needs pertaining to the data components
that are applicable to the request.<br>
<br>
The DetailLevelCodeType defines the
global list of available detail levels for all request types.
Most request types support certain detail
levels or none at all. If you pass a detail level that exists
in the schema but that isn't valid for a particular request,
eBay ignores it processes the request without it.
For each request type, see the detail level tables in the
Input/Output Reference to determine which detail levels are
applicable and which elements are returned for each applicable
detail level. (Some detail level tables are still in the
eBay Web Services guide. They will be moved to the
Input/Output Reference in a future release.)<br>
<br>Note that DetailLevel is required input for
GetMyMessages. <br>
<br>
With GetSellerList and other calls that retrieve large data sets,
please avoid using ReturnAll when possible. For example, if you use
GetSellerList, use a GranularityLevel or use the
GetSellerEvents call instead. If you do use ReturnAll with
GetSellerList, use a small EntriesPerPage value and a short
EndTimeFrom/EndTimeTo range for better performance.

PresentDetails: Yes

  Calls: GetMyMessages
  RequiredInput: No
  OnlyTheseValues: ReturnSummary, ReturnHeaders, ReturnMessages

  Calls: GetAdFormatLeads
         GetAttributesCS
         GetAttributesXSL
         GetBestOffers
         GetCategories
         GetCategory2CS
         GetCategoryMappings
         GetFeedback
         GetOrders
         GetProductFinder
         GetProductFinderXSL
         GetProductSearchPage
         GetSellerEvents
         GetTaxTable
  RequiredInput: No
  OnlyTheseValues: ReturnAll, none

  Calls: GetCategoryFeatures
         GetMyeBayBuying
         GetMyeBaySelling
         GetUser
         GetUserDisputes
  RequiredInput: No
  OnlyTheseValues: ReturnAll, ReturnSummary, none

  Calls: GetItemTransactions
         GetSellerList
         GetSellerTransactions
  RequiredInput: No
  OnlyTheseValues: ItemReturnDescription, ReturnAll, none

  Calls: GetOrderTransactions
  RequiredInput: No
  OnlyTheseValues: ItemReturnDescription, ReturnAll, none

  Calls: GetItem
  RequiredInput: No
  OnlyTheseValues: ItemReturnAttributes, ItemReturnDescription, ReturnAll, none

  Calls: GetSearchResults
  RequiredInput: No
  OnlyTheseValues: ItemReturnAttributes, ItemReturnCategories, ReturnAll, none

#    Argument: reference to an array  
                      of 'ns:DetailLevelCodeType'

=cut

sub setDetailLevel {
  my $self = shift;
  $self->{'DetailLevel'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getDetailLevel()

#    Returns: reference to an array  
                      of 'ns:DetailLevelCodeType'

=cut

sub getDetailLevel {
  my $self = shift;
  return $self->_getDataTypeArray('DetailLevel');
}


=head2 setEndUserIP()

The public IP address of the machine from which the request is sent.
Your application captures that IP address and includes it in
a call request. eBay evaluates requests for safety (also see
the BotBlock container
in the request and response of this call).

  Calls: PlaceOffer
  RequiredInput: Yes

#    Argument: 'xs:string'

=cut

sub setEndUserIP {
  my $self = shift;
  $self->{'EndUserIP'} = shift
}

=head2 getEndUserIP()

#    Returns: 'xs:string'

=cut

sub getEndUserIP {
  my $self = shift;
  return $self->{'EndUserIP'};
}


=head2 setErrorHandling()

Error tolerance level for the call. This is a preference
that specifies how eBay should handle requests that contain
invalid data or that could partially fail. This gives you some control
over whether eBay returns warnings or blocking errors
and how eBay processes the invalid data.<br>
<br>
For AddItem and related calls, this field is only applicable when
the listing includes Item Specifics and Pre-filled Item Information
(such as AttributeSetArray and ProductListingDetails).

  Calls: AddItem
         AddLiveAuctionItem
         RelistItem
         ReviseItem
         ReviseLiveAuctionItem
         VerifyAddItem
  RequiredInput: No
  Default: BestEffort
  SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=AttributeErrorHandling, Title: Attribute Error Handling

  Calls: CompleteSale
  RequiredInput: No
  Default: FailOnError
  OnlyTheseValues: BestEffort, FailOnError

#    Argument: 'ns:ErrorHandlingCodeType'

=cut

sub setErrorHandling {
  my $self = shift;
  $self->{'ErrorHandling'} = shift
}

=head2 getErrorHandling()

#    Returns: 'ns:ErrorHandlingCodeType'

=cut

sub getErrorHandling {
  my $self = shift;
  return $self->{'ErrorHandling'};
}


=head2 setErrorLanguage()

Use ErrorLanguage to return error strings for the call in a different language
from the language commonly associated with the site that the requesting user
is registered with. Specify the standard RFC 3066 language identification tag
(e.g., en_US).
<br>
ID--- country<br>
----- -----<br>
de_AT Austria<br>
de_CH Switzerland<br>
de_DE Germany <br>
en_AU Australia <br>
en_CA Canada <br>
en_GB United Kingdom<br>
en_SG Singapore<br>
en_US United States <br>
es_ES Spain <br>
fr_BE Belgium (French)<br>
fr_CA Canada (French) <br>
fr_FR France <br>
it_IT Italy <br>
nl_BE Belgium (Dutch)<br>
nl_NL Netherlands <br>
zh_CN China<br>
en_IN India<br>
en_IE Ireland<br>
zh_HK Hong Kong

SeeLink: URL: http://www.ietf.org/rfc/rfc3066.txt
Title: Tags for the Identification of Languages

  Calls:   RequiredInput: No
  AllCalls: 

#    Argument: 'xs:string'

=cut

sub setErrorLanguage {
  my $self = shift;
  $self->{'ErrorLanguage'} = shift
}

=head2 getErrorLanguage()

#    Returns: 'xs:string'

=cut

sub getErrorLanguage {
  my $self = shift;
  return $self->{'ErrorLanguage'};
}


=head2 setInvocationID()

A unique identifer for a particular call. If the same InvocationID is passed
in after it has been passed in once on a call that succeeded for a particular
application and user, then an error will be returned. The identifier can
only contain digits from 0-9 and letters from A-F. The
identifier must be 32 characters long.  For example,
1FB02B2-9D27-3acb-ABA2-9D539C374228.

MaxLength: 32

  Calls: AddOrder
         AddToItemDescription
         PlaceOffer
         ReviseCheckoutStatus
         ReviseItem
  RequiredInput: No

#    Argument: 'ns:UUIDType'

=cut

sub setInvocationID {
  my $self = shift;
  $self->{'InvocationID'} = shift
}

=head2 getInvocationID()

#    Returns: 'ns:UUIDType'

=cut

sub getInvocationID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'InvocationID'
		,'eBay::API::XML::DataType::UUIDType');
}


=head2 setMessageID()

In most cases, all calls support a MessageID element in the request and a
CorrelationID element in the response. If you pass a message ID in a request,
we will return the same value in CorrelationID in the response. You can use
this for tracking that a response is returned for every request and to match
particular responses to particular requests. If you do not pass MessageID in
the request, CorrelationID is not returned. <br>
<br>
<span class="tablenote"><b>Note:</b>
GetCategories, GetAttributesCS, GetCategory2CS, GetAttributesXSL,
GetProductFinder, GetProductFinderXSL, and GetProductSearchPage
are designed to retrieve very large sets of metadata
that change once a day or less often. To improve performance,
these calls return cached responses when you request all available data
(with no filters). When this occurs, the MessageID and CorrelationID
fields aren't applicable.
However, if you specify an input filter to reduce the amount of data
returned, the calls retrieve the latest data (not cached).
When this occurs, MessageID and CorrelationID are applicable.
</span>

  Calls:   RequiredInput: No
  AllCalls: 

#    Argument: 'xs:string'

=cut

sub setMessageID {
  my $self = shift;
  $self->{'MessageID'} = shift
}

=head2 getMessageID()

#    Returns: 'xs:string'

=cut

sub getMessageID {
  my $self = shift;
  return $self->{'MessageID'};
}


=head2 setOutputSelector()

You can use the OutputSelector field to restrict the data returned by this call.
When you make a call such as GetItem that retrieves data from eBay,
the OutputSelector field is useful for restricting the data returned.
This field makes the call response easier to use, especially when a large payload
would be returned. If you use the OutputSelector field, the output data
will include only the fields you specified in the request.
For example, if you are using GetItem and you want the item data
in the response to be restricted to the ViewItemURL
(the URL where a user can view the listing) and BuyItNowPrice, then
within the GetItem request, specify those output fields.
To use this field, see the information at the following link.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=ConfiguringOutputRetrieveData
Title: Selecting Fields to Retrieve

  Calls: GetAccount
         GetAdFormatLeads
         GetAllBidders
         GetBestOffers
         GetBidderList
         GetCategories
         GetCategoryFeatures
         GetCategoryListings
         GetCrossPromotions
         GetFeedback
         GetHighBidders
         GetItem
         GetItemsAwaitingFeedback
         GetItemShipping
         GetItemTransactions
         GetMemberMessages
         GetMyeBayBuying
         GetMyeBaySelling
         GetMyMessages
         GetNotificationPreferences
         GetOrders
         GetOrderTransactions
         GetProducts
         GetSearchResults
         GetSellerEvents
         GetSellerList
         GetSellerPayments
         GetSellerTransactions
  RequiredInput: No

#    Argument: reference to an array  
                      of 'xs:string'

=cut

sub setOutputSelector {
  my $self = shift;
  $self->{'OutputSelector'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getOutputSelector()

#    Returns: reference to an array  
                      of 'xs:string'

=cut

sub getOutputSelector {
  my $self = shift;
  return $self->_getDataTypeArray('OutputSelector');
}


=head2 setRequesterCredentials()

Authentication information for the user on whose behalf the application is
making the request. Only registered eBay users are allowed to make API calls. To
verify that a user is registered, your application needs to pass a user-specific
value called an "authentication token" in the request. This is equivalent to
signing in on the eBay Web site. As API calls do not pass session information,
you need to pass the user's authentication token every time you invoke a call on
their behalf. All calls require an authentication token, except the calls you
use to retrieve a token in the first place. (For such calls, you use the eBay
member's username and password instead.)

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=AuthNAuth
Title: Authentication & Authorization

  Calls:   RequiredInput: Yes
  AllCalls: 

#    Argument: 'ns:XMLRequesterCredentialsType'

=cut

sub setRequesterCredentials {
  my $self = shift;
  $self->{'RequesterCredentials'} = shift
}

=head2 getRequesterCredentials()

#    Returns: 'ns:XMLRequesterCredentialsType'

=cut

sub getRequesterCredentials {
  my $self = shift;
  return $self->_getDataTypeInstance( 'RequesterCredentials'
		,'eBay::API::XML::DataType::XMLRequesterCredentialsType');
}


=head2 setVersion()

The version number of the API code that you are
programming against (e.g., 549).
The version you specify for a call has these basic effects:<br>
- It indicates the version of the code lists and other
data that eBay should use to process your request.<br>
- It indicates the schema version you are using.<br>
You need to use a version that is greater than or equal to the
lowest supported version.<br>
<br>
<b>For the SOAP API:</b> If you are using the SOAP API,
this field is required. Specify the version of the WSDL your
application is using.<br>
<br>
<b>For the XML API:</b> If you are using the XML API,
this field has no effect. Instead, specify the version in the
X-EBAY-API-COMPATIBILITY-LEVEL HTTP header.
(If you specify Version in the body of an XML API request and it
is different from the value in the HTTP header, eBay returns an
informational warning that the value in the HTTP header was used
instead.)

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=HTTPHeaders
Title: HTTP Headers (XML API Only)
, URL: ../../HowTo/eBayWS/eBaySchemaVersioning.html
Title: eBay Schema Versioning Strategy
, URL: ../../HowTo/eBayWS/eBaySchemaVersioning.html#VersionSupportSchedule
Title: Lowest Supported Version


  Calls:   RequiredInput: Conditionally
  AllCalls: 

#    Argument: 'xs:string'

=cut

sub setVersion {
  my $self = shift;
  $self->{'Version'} = shift
}

=head2 getVersion()

#    Returns: 'xs:string'

=cut

sub getVersion {
  my $self = shift;
  return $self->{'Version'};
}


=head2 setWarningLevel()

Controls whether or not to return warnings when the application passes
unrecognized or deprecated elements in a request.<br>
<br>
An unrecognized element is one that is not defined in any supported
version of the schema. Schema element names are case-sensitive,
so using WarningLevel can also help you remove any potential hidden
bugs within your application due to incorrect case or spelling in
field names before you put your application into the
Production environment.<br>
<br>
WarningLevel only validates elements; it doesn't validate
XML attributes. It also doesn't control warnings related to
user-entered strings or numbers, or warnings for
logical errors.<br>
<br>
We recommend that you only use this during development and debugging.
Do not use this in requests in your production code.

SeeLink: URL: https://ebay.custhelp.com/cgi-bin/ebay.cfg/php/enduser/std_adp.php?p_faqid=499
Title: Warning Level

  Calls:   RequiredInput: No
  AllCalls: 

#    Argument: 'ns:WarningLevelCodeType'

=cut

sub setWarningLevel {
  my $self = shift;
  $self->{'WarningLevel'} = shift
}

=head2 getWarningLevel()

#    Returns: 'ns:WarningLevelCodeType'

=cut

sub getWarningLevel {
  my $self = shift;
  return $self->{'WarningLevel'};
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
