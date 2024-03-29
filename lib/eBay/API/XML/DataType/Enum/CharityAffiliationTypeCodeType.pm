#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::CharityAffiliationTypeCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. CharityAffiliationTypeCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::CharityAffiliationTypeCodeType

=head1 DESCRIPTION

CharityAffiliationTypeCodeType - Type declaration to be used by other schema.
Indicates the affiliation status for nonprofit charity organizations registered with the dedicated eBay Giving Works provider.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Community

(out)	The specified nonprofit charity organization has a community affiliation.



=cut


use constant Community => scalar('Community');


=head2 Direct

(out) The specified nonprofit charity organization has direct affiliation.



=cut


use constant Direct => scalar('Direct');


=head2 Remove

(out)	The specified nonprofit charity organization is no longer affiliated.



=cut


use constant Remove => scalar('Remove');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
