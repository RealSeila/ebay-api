#!/usr/bin/perl

package eBay::API::XML::Call::GetUserContactDetails;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetUserContactDetails.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetUserContactDetails

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetUserContactDetails inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetUserContactDetails::GetUserContactDetailsRequestType;
use eBay::API::XML::Call::GetUserContactDetails::GetUserContactDetailsResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetUserContactDetails';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetUserContactDetails::GetUserContactDetailsRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetUserContactDetails::GetUserContactDetailsResponseType';
}

#
# input properties
#

=head2 setContactID()

An eBay ID that uniquely identifies a given
user. The same as the contact's eBay username.
Either the seller's or bidder's username may be
specified here, as long as a bidding
relationship exists between them. That is, the
bidder must be bidding on the seller's active
item, or an eBay user must have made an offer on
the item via Best Offer.

  RequiredInput: Yes
#    Argument: 'xs:string'

=cut
       
sub setContactID {
   my $self   = shift;
   my $sContactID = shift;
   $self->getRequestDataType()->setContactID($sContactID);
}

=head2 setItemID()

An eBay ID that uniquely identifies a given
item. Must be a currently active item.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

  RequiredInput: Yes
#    Argument: 'xs:string'

=cut
       
sub setItemID {
   my $self   = shift;
   my $sItemID = shift;
   $self->getRequestDataType()->setItemID($sItemID);
}

=head2 setRequesterID()

An eBay ID that uniquely identifies a given
user. The same as the seller's eBay username.
Either the seller's or bidder's username may be
specified here, as long as a bidding
relationship exists between them. That is, the
bidder must be bidding on the seller's active
item, or an eBay user must have made an offer on
the item via Best Offer.

  RequiredInput: Yes
#    Argument: 'xs:string'

=cut
       
sub setRequesterID {
   my $self   = shift;
   my $sRequesterID = shift;
   $self->getRequestDataType()->setRequesterID($sRequesterID);
}



#
# output properties
#

=head2 getContactAddress()

Contact information for the requested contact.
Note that the email address is NOT returned.

  Returned: Always
#    Returns: 'ns:AddressType'

=cut
       
sub getContactAddress {
   my $self = shift;
   return $self->getResponseDataType()->getContactAddress();
}

=head2 getRegistrationDate()

The date and time that the requested contact
registered with eBay.

  Returned: Always
#    Returns: 'xs:dateTime'

=cut
       
sub getRegistrationDate {
   my $self = shift;
   return $self->getResponseDataType()->getRegistrationDate();
}

=head2 getUserID()

An eBay ID that uniquely identifies a given
user. The eBay username of the requested
contact.

  Returned: Always
#    Returns: 'xs:string'

=cut
       
sub getUserID {
   my $self = shift;
   return $self->getResponseDataType()->getUserID();
}





1;   
