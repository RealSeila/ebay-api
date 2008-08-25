#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::AccessRuleStatusCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. AccessRuleStatusCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::AccessRuleStatusCodeType

=head1 DESCRIPTION

Defines values that describe an application's current status
with respect to an API access rule. The rules specify daily,
hourly, and periodic usage limits for various eBay Web Services calls.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 RuleOff

(out) The rule is turned off, and no rule validation
was performed.



=cut


use constant RuleOff => scalar('RuleOff');


=head2 RuleOn

(out) The rule is turned on, and rule validation was
performed.



=cut


use constant RuleOn => scalar('RuleOn');


=head2 ApplicationBlocked

(out) The application is blocked from making
requests to the call named in this rule.



=cut


use constant ApplicationBlocked => scalar('ApplicationBlocked');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
