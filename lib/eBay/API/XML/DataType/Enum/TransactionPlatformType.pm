#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::TransactionPlatformType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. TransactionPlatformType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::TransactionPlatformType

=head1 DESCRIPTION

Specifies the site on which the purchase was made.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 eBay

The transaction was created (i.e., the purchase was made) 
on the main eBay site.



=cut


use constant eBay => scalar('eBay');


=head2 Express

The transaction was created on the eBay Express site.



=cut


use constant Express => scalar('Express');







1;   
