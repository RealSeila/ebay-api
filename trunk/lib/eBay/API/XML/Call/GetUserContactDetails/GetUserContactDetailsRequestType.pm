#!/usr/bin/perl

package eBay::API::XML::Call::GetUserContactDetails::GetUserContactDetailsRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetUserContactDetailsRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetUserContactDetails::GetUserContactDetailsRequestType

=head1 DESCRIPTION

Returns contact information for a specified user if a
bidding relationship exists.
The bidder must be bidding on the seller's active
item, or an eBay user must have made an offer on
the item using Best Offer.
The item must be in the Motors or Business & Industrial categories.
Bidders can use this call to contact
sellers of an item they are bidding on or have made an
offer on (through Best Offer).
Note that this call does NOT return an email address.
Sellers who wish to send an
email to bidders should use AddMemberMessagesAAQToBidder.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetUserContactDetails::GetUserContactDetailsRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");



my @gaProperties = ( [ 'ContactID', 'xs:string', '', '', '' ]
	, [ 'ItemID', 'xs:string', '', '', '' ]
	, [ 'RequesterID', 'xs:string', '', '', '' ]
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
  my $self = shift;
  $self->{'ContactID'} = shift
}

=head2 getContactID()

#    Returns: 'xs:string'

=cut

sub getContactID {
  my $self = shift;
  return $self->{'ContactID'};
}


=head2 setItemID()

An eBay ID that uniquely identifies a given
item. Must be a currently active item.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

  RequiredInput: Yes
#    Argument: 'xs:string'

=cut

sub setItemID {
  my $self = shift;
  $self->{'ItemID'} = shift
}

=head2 getItemID()

#    Returns: 'xs:string'

=cut

sub getItemID {
  my $self = shift;
  return $self->{'ItemID'};
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
  my $self = shift;
  $self->{'RequesterID'} = shift
}

=head2 getRequesterID()

#    Returns: 'xs:string'

=cut

sub getRequesterID {
  my $self = shift;
  return $self->{'RequesterID'};
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
