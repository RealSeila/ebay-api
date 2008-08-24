#!/usr/bin/perl

package eBay::API::XML::Call::AddToWatchList;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. AddToWatchList.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::AddToWatchList

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::AddToWatchList inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::AddToWatchList::AddToWatchListRequestType;
use eBay::API::XML::Call::AddToWatchList::AddToWatchListResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'AddToWatchList';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::AddToWatchList::AddToWatchListRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::AddToWatchList::AddToWatchListResponseType';
}

#
# input properties
#

=head2 setItemID()

The ItemID of the item that is to be added to the watch list. The item
must be a currently active item, and the total number of items in the
watchlist (after the items in the request have been added) cannot exceed
the maximum allowed number of watch list items. One or more ItemIDs can be
specified, each in its own ItemID container. A separate error node will be
returned for each item that fails.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

  RequiredInput: Yes
#    Argument: reference to an array  
                      of 'ns:ItemIDType'

=cut
       
sub setItemID {
   my $self   = shift;
   my $pItemID = shift;
   $self->getRequestDataType()->setItemID($pItemID);
}



#
# output properties
#

=head2 getWatchListCount()

The number of items in the user's watch list (after those specified
in the call request have been added)

  Returned: Always
#    Returns: 'xs:int'

=cut
       
sub getWatchListCount {
   my $self = shift;
   return $self->getResponseDataType()->getWatchListCount();
}

=head2 getWatchListMaximum()

The maximum number of items allowed in watch lists. Currently this
value is the same for all sites and all users.

  Returned: Always
#    Returns: 'xs:int'

=cut
       
sub getWatchListMaximum {
   my $self = shift;
   return $self->getResponseDataType()->getWatchListMaximum();
}





1;   
