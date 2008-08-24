#!/usr/bin/perl

package eBay::API::XML::Call::SetStore;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SetStore.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::SetStore

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::SetStore inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::SetStore::SetStoreRequestType;
use eBay::API::XML::Call::SetStore::SetStoreResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'SetStore';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::SetStore::SetStoreRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::SetStore::SetStoreResponseType';
}

#
# input properties
#

=head2 setStore()

Specifies the Store configuration that is being set for the user.

  RequiredInput: Yes
#    Argument: 'ns:StoreType'

=cut
       
sub setStore {
   my $self   = shift;
   my $pStore = shift;
   $self->getRequestDataType()->setStore($pStore);
}



#
# output properties
#





1;   
