#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::TokenStatusCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. TokenStatusCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::TokenStatusCodeType

=head1 DESCRIPTION

Contains the status of the token



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Active

Token is Active



=cut


use constant Active => scalar('Active');


=head2 Expired

Token is Expired



=cut


use constant Expired => scalar('Expired');


=head2 RevokedByeBay

Token is revoked by eBay



=cut


use constant RevokedByeBay => scalar('RevokedByeBay');


=head2 RevokedByUser

Token is revoked by user



=cut


use constant RevokedByUser => scalar('RevokedByUser');


=head2 RevokedByApp

Token is revoked by Application



=cut


use constant RevokedByApp => scalar('RevokedByApp');


=head2 Invalid

Token is Invalid



=cut


use constant Invalid => scalar('Invalid');


=head2 CustomCode

Reserved for internal or future use



=cut


use constant CustomCode => scalar('CustomCode');







1;   
