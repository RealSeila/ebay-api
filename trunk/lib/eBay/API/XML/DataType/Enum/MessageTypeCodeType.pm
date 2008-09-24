#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::MessageTypeCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. MessageTypeCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::MessageTypeCodeType

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 AskSellerQuestion

Member to Member message initiated by bidder/potential bidder
to a seller of a particular item.



=cut


use constant AskSellerQuestion => scalar('AskSellerQuestion');


=head2 ResponseToASQQuestion

Member to Member message initiated as a response
to an Ask A Question message.



=cut


use constant ResponseToASQQuestion => scalar('ResponseToASQQuestion');


=head2 ContactEbayMember

Member to Member message initiated by any eBay member
to another eBay member.



=cut


use constant ContactEbayMember => scalar('ContactEbayMember');


=head2 ContactTransactionPartner

Member message between transaction partners within 90 days
after the transaction.



=cut


use constant ContactTransactionPartner => scalar('ContactTransactionPartner');


=head2 ResponseToContacteBayMember

Member to Member message initiated as a response
to a Contact eBay Member message.



=cut


use constant ResponseToContacteBayMember => scalar('ResponseToContacteBayMember');


=head2 ContacteBayMemberViaCommunityLink

Member to Member message initiated by any eBay member
to another eBay member who has posted on a community forum
within the past 7 days.



=cut


use constant ContacteBayMemberViaCommunityLink => scalar('ContacteBayMemberViaCommunityLink');


=head2 CustomCode

Reserved for future or internal use.



=cut


use constant CustomCode => scalar('CustomCode');


=head2 All

All message types.



=cut


use constant All => scalar('All');


=head2 ContactMyBidder

Member to Member message initiated by sellers to their
bidders during an active listing.



=cut


use constant ContactMyBidder => scalar('ContactMyBidder');







1;   
