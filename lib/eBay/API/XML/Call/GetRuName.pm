#!/usr/bin/perl

package eBay::API::XML::Call::GetRuName;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetRuName.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetRuName

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetRuName inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetRuName::GetRuNameRequestType;
use eBay::API::XML::Call::GetRuName::GetRuNameResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetRuName';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetRuName::GetRuNameRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetRuName::GetRuNameResponseType';
}

#
# input properties
#

=head2 setClientUseCase()

Optional value that is appended to the generated runame.

  RequiredInput: No
#    Argument: 'xs:string'

=cut
       
sub setClientUseCase {
   my $self   = shift;
   my $sClientUseCase = shift;
   $self->getRequestDataType()->setClientUseCase($sClientUseCase);
}



#
# output properties
#

=head2 getRuName()

The generated globally unique runame.

  Returned: Always
#    Returns: 'xs:string'

=cut
       
sub getRuName {
   my $self = shift;
   return $self->getResponseDataType()->getRuName();
}





1;   
