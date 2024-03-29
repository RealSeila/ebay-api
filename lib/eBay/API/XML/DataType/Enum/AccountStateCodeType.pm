#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::AccountStateCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. AccountStateCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::AccountStateCodeType

=head1 DESCRIPTION

State of an account of an eBay user.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Active

(out) The account is active.



=cut


use constant Active => scalar('Active');


=head2 Pending

(out) The account has been created but is not yet active,
pending additional information or processing by eBay.



=cut


use constant Pending => scalar('Pending');


=head2 Inactive

(out) The account is inactive. No new seller account entries
would be posted by eBay to the account.



=cut


use constant Inactive => scalar('Inactive');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
