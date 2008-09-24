#!/usr/bin/perl

package eBay::API::XML::Call::SetMessagePreferences;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SetMessagePreferences.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::SetMessagePreferences

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::SetMessagePreferences inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::SetMessagePreferences::SetMessagePreferencesRequestType;
use eBay::API::XML::Call::SetMessagePreferences::SetMessagePreferencesResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'SetMessagePreferences';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::SetMessagePreferences::SetMessagePreferencesRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::SetMessagePreferences::SetMessagePreferencesResponseType';
}

#
# input properties
#

=head2 setASQPreferences()

Contains custom ASQ subjects or a flag to reset those
subjects to their default values.

  RequiredInput: No
#    Argument: 'ns:ASQPreferencesType'

=cut
       
sub setASQPreferences {
   my $self   = shift;
   my $pASQPreferences = shift;
   $self->getRequestDataType()->setASQPreferences($pASQPreferences);
}



#
# output properties
#





1;   
