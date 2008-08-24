#!/usr/bin/perl

package eBay::API::XML::Call::GetStoreCustomPage;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetStoreCustomPage.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetStoreCustomPage

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetStoreCustomPage inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetStoreCustomPage::GetStoreCustomPageRequestType;
use eBay::API::XML::Call::GetStoreCustomPage::GetStoreCustomPageResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetStoreCustomPage';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetStoreCustomPage::GetStoreCustomPageRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetStoreCustomPage::GetStoreCustomPageResponseType';
}

#
# input properties
#

=head2 setPageID()

If a PageID is specified, then that page is returned, and
the returned page contains the page Content.
If no PageID is specified, then all pages are returned, without
the page Content.

  RequiredInput: No
#    Argument: 'xs:long'

=cut
       
sub setPageID {
   my $self   = shift;
   my $sPageID = shift;
   $self->getRequestDataType()->setPageID($sPageID);
}



#
# output properties
#

=head2 getCustomPageArray()

The custom page or custom pages.

  Returned: Always
#    Returns: 'ns:StoreCustomPageArrayType'

=cut
       
sub getCustomPageArray {
   my $self = shift;
   return $self->getResponseDataType()->getCustomPageArray();
}





1;   
