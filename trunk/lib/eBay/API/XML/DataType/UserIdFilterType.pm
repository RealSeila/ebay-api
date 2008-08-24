#!/usr/bin/perl

package eBay::API::XML::DataType::UserIdFilterType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. UserIdFilterType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::UserIdFilterType

=head1 DESCRIPTION

One of the data filters used when searching for items using
GetSearchResults. Allows filtering based on the eBay user IDs of
sellers. May be used to limit the list of found items to just those
listed by one or more specified sellers. Or may be used to limit the
list to those items NOT listed by specified excluded sellers.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::UserIdFilterType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::UserIDType;


my @gaProperties = ( [ 'ExcludeSellers', 'ns:UserIDType', '1'
	     ,'eBay::API::XML::DataType::UserIDType', '1' ]
	, [ 'IncludeSellers', 'ns:UserIDType', '1'
	     ,'eBay::API::XML::DataType::UserIDType', '1' ]
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



=head2 setExcludeSellers()

Contains one or more eBay user IDs of sellers whose
listings should NOT be returned in the search result set.
That is, the sellers'
items are excluded from the search results.
A comma is used to separate multiple seller IDs.
You can specify a maximum of 100 sellers.

  Calls: GetSearchResults
  RequiredInput: No

#    Argument: reference to an array  
                      of 'ns:UserIDType'

=cut

sub setExcludeSellers {
  my $self = shift;
  $self->{'ExcludeSellers'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getExcludeSellers()

#    Returns: reference to an array  
                      of 'ns:UserIDType'

=cut

sub getExcludeSellers {
  my $self = shift;
  return $self->_getDataTypeArray('ExcludeSellers');
}


=head2 setIncludeSellers()

Contains one or more eBay user IDs of sellers whose
listings should be returned in the search result set.
If you use this filter, then only listings of the
specified sellers are returned.
A comma is used to separate multiple seller IDs.
You can specify a maximum of 100 sellers.

  Calls: GetSearchResults
  RequiredInput: No

#    Argument: reference to an array  
                      of 'ns:UserIDType'

=cut

sub setIncludeSellers {
  my $self = shift;
  $self->{'IncludeSellers'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getIncludeSellers()

#    Returns: reference to an array  
                      of 'ns:UserIDType'

=cut

sub getIncludeSellers {
  my $self = shift;
  return $self->_getDataTypeArray('IncludeSellers');
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
