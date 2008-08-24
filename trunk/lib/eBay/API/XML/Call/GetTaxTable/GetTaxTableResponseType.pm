#!/usr/bin/perl

package eBay::API::XML::Call::GetTaxTable::GetTaxTableResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetTaxTableResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetTaxTable::GetTaxTableResponseType

=head1 DESCRIPTION

Response to GetTaxTableRequest.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetTaxTable::GetTaxTableResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::TaxTableType;


my @gaProperties = ( [ 'LastUpdateTime', 'xs:dateTime', '', '', '' ]
	, [ 'TaxTable', 'ns:TaxTableType', ''
	     ,'eBay::API::XML::DataType::TaxTableType', '1' ]
                    );
push @gaProperties, @{eBay::API::XML::ResponseDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::ResponseDataType::getAttributesList()};

=head1 Subroutines:

=cut

sub new {
  my $classname = shift;
  my %args = @_;
  my $self = $classname->SUPER::new(%args);
  return $self;
}

sub isScalar {
   return 0; 
}



=head2 setLastUpdateTime()

The last time (in GMT) that the tax table was updated.
Only returned if the user previously created a tax table
and if the site has jurisdictions.
LastUpdateTime is useful for synchronization. If you cache the user's
tax table, you can use GetTaxTable to check if it has changed and
whether you need to update the cached tax table.

#    Argument: 'xs:dateTime'

=cut

sub setLastUpdateTime {
  my $self = shift;
  $self->{'LastUpdateTime'} = shift
}

=head2 getLastUpdateTime()

  Returned: Conditionally
  Details: DetailLevel: ReturnAll, none
#    Returns: 'xs:dateTime'

=cut

sub getLastUpdateTime {
  my $self = shift;
  return $self->{'LastUpdateTime'};
}


=head2 setTaxTable()

A container of tax jurisdiction information unique to
a user/site combination. Empty if not set for user.
If DetailLevel is not specified, information is only
returned for the jurisdictions for which the user provided tax
information. If DetailLevel is ReturnAll, tax information
is returned for all possible jurisdictions, whether
specified by the user or not. ShippingIncludedInTax and
SalesTaxPercent are returned but are empty.

#    Argument: 'ns:TaxTableType'

=cut

sub setTaxTable {
  my $self = shift;
  $self->{'TaxTable'} = shift
}

=head2 getTaxTable()

  Returned: Always
  Details: DetailLevel: ReturnAll, none
#    Returns: 'ns:TaxTableType'

=cut

sub getTaxTable {
  my $self = shift;
  return $self->_getDataTypeInstance( 'TaxTable'
		,'eBay::API::XML::DataType::TaxTableType');
}





##  Attribute and Property lists
sub getPropertiesList {
   my $self = shift;
   return \@gaProperties;
}

sub getAttributesList {
   my $self = shift;
   return \@gaAttributes;
}



1;   
