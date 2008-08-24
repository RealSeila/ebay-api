#!/usr/bin/perl

package eBay::API::XML::Call::GetApiAccessRules;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetApiAccessRules.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetApiAccessRules

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetApiAccessRules inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetApiAccessRules::GetApiAccessRulesRequestType;
use eBay::API::XML::Call::GetApiAccessRules::GetApiAccessRulesResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetApiAccessRules';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetApiAccessRules::GetApiAccessRulesRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetApiAccessRules::GetApiAccessRulesResponseType';
}

#
# input properties
#



#
# output properties
#

=head2 getApiAccessRule()

Contains the description of an API access rule, including the
call name, the application's current daily and hourly usage,
and other values.

  Returned: Always
#    Returns: reference to an array  
                      of 'ns:ApiAccessRuleType'

=cut
       
sub getApiAccessRule {
   my $self = shift;
   return $self->getResponseDataType()->getApiAccessRule();
}





1;   
