#!/usr/bin/perl

package eBay::API::XML::Call::GetTaxTable;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetTaxTable.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetTaxTable

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetTaxTable inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetTaxTable::GetTaxTableRequestType;
use eBay::API::XML::Call::GetTaxTable::GetTaxTableResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetTaxTable';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetTaxTable::GetTaxTableRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetTaxTable::GetTaxTableResponseType';
}

#
# input properties
#



#
# output properties
#

=head2 getLastUpdateTime()

The last time (in GMT) that the tax table was updated.
Only returned if the user previously created a tax table
and if the site has jurisdictions.
LastUpdateTime is useful for synchronization. If you cache the user's
tax table, you can use GetTaxTable to check if it has changed and
whether you need to update the cached tax table.

  Returned: Conditionally
  Details: DetailLevel: ReturnAll, none
#    Returns: 'xs:dateTime'

=cut
       
sub getLastUpdateTime {
   my $self = shift;
   return $self->getResponseDataType()->getLastUpdateTime();
}

=head2 getTaxTable()

A container of tax jurisdiction information unique to
a user/site combination. Empty if not set for user.
If DetailLevel is not specified, information is only
returned for the jurisdictions for which the user provided tax
information. If DetailLevel is ReturnAll, tax information
is returned for all possible jurisdictions, whether
specified by the user or not. ShippingIncludedInTax and
SalesTaxPercent are returned but are empty.

  Returned: Always
  Details: DetailLevel: ReturnAll, none
#    Returns: 'ns:TaxTableType'

=cut
       
sub getTaxTable {
   my $self = shift;
   return $self->getResponseDataType()->getTaxTable();
}





1;   
