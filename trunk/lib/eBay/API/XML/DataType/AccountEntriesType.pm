#!/usr/bin/perl

package eBay::API::XML::DataType::AccountEntriesType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. AccountEntriesType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::AccountEntriesType

=head1 DESCRIPTION

Collection of zero, one, or multiple individual detail account entries. Contains
one AccountEntry object for each account entry returned. See the schema
documentation for AccountEntryType for details on its properties. You can uniquely identify
the entries that the GetAccount call returns within the AccountEntries tag.
Specifically, the following fields, returned within the AccountEntries tag,
can be used in combination as a unique key: AccountEntry.Date, AccountEntry.AccountDetailsEntryType,
AccountEntry.ItemID, and AccountEntry.RefNumber.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::AccountEntriesType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AccountEntryType;


my @gaProperties = ( [ 'AccountEntry', 'ns:AccountEntryType', '1'
	     ,'eBay::API::XML::DataType::AccountEntryType', '1' ]
                    );
push @gaProperties, @{eBay::API::XML::BaseDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::BaseDataType::getAttributesList()};

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



=head2 setAccountEntry()

Contains the data for one account entry. (See the schema
documentation for AccountEntryType for details on its properties.)

#    Argument: reference to an array  
                      of 'ns:AccountEntryType'

=cut

sub setAccountEntry {
  my $self = shift;
  $self->{'AccountEntry'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getAccountEntry()

  Calls: GetAccount
  Returned: Conditionally

#    Returns: reference to an array  
                      of 'ns:AccountEntryType'

=cut

sub getAccountEntry {
  my $self = shift;
  return $self->_getDataTypeArray('AccountEntry');
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
