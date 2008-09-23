#!/usr/bin/perl

package eBay::API::XML::Call::RespondToWantItNowPost;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. RespondToWantItNowPost.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::RespondToWantItNowPost

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::RespondToWantItNowPost inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::RespondToWantItNowPost::RespondToWantItNowPostRequestType;
use eBay::API::XML::Call::RespondToWantItNowPost::RespondToWantItNowPostResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'RespondToWantItNowPost';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::RespondToWantItNowPost::RespondToWantItNowPostRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::RespondToWantItNowPost::RespondToWantItNowPostResponseType';
}

#
# input properties
#

=head2 setItemID()

The unique identifier of an item listed on the eBay site.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

  RequiredInput: Yes
#    Argument: 'ns:ItemIDType'

=cut
       
sub setItemID {
   my $self   = shift;
   my $pItemID = shift;
   $self->getRequestDataType()->setItemID($pItemID);
}

=head2 setPostID()

The unique identifier of a Want It Now post on the eBay site.

  RequiredInput: Yes
#    Argument: 'ns:ItemIDType'

=cut
       
sub setPostID {
   my $self   = shift;
   my $pPostID = shift;
   $self->getRequestDataType()->setPostID($pPostID);
}



#
# output properties
#





1;   
