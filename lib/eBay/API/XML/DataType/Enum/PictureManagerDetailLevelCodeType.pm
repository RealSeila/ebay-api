#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::PictureManagerDetailLevelCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. PictureManagerDetailLevelCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::PictureManagerDetailLevelCodeType

=head1 DESCRIPTION

Specifies a detail level for a response to a Picture Manager call.
Use a value for this element, rather than a value for DetailLevel.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 ReturnAll

(in) All pictures, folders, and account settings. Default value.



=cut


use constant ReturnAll => scalar('ReturnAll');


=head2 ReturnSubscription

(in) Only data about the account subscription.



=cut


use constant ReturnSubscription => scalar('ReturnSubscription');


=head2 ReturnPicture

(in) Return only data about pictures and folders in the authenticated user's account.



=cut


use constant ReturnPicture => scalar('ReturnPicture');


=head2 CustomCode

(out) Reserved for internal or future use



=cut


use constant CustomCode => scalar('CustomCode');







1;   
