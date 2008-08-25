#!/usr/bin/perl

package eBay::API::XML::DataType::VeROReportedItemDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. VeROReportedItemDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::VeROReportedItemDetailsType

=head1 DESCRIPTION

Container for a list of reported items. Can contain zero, one, or multiple
VeROReportedItemType objects, each of which conveys the data for one item listing.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::VeROReportedItemDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::VeROReportedItemType;


my @gaProperties = ( [ 'ReportedItem', 'ns:VeROReportedItemType', '1'
	     ,'eBay::API::XML::DataType::VeROReportedItemType', '1' ]
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



=head2 setReportedItem()

Contains the data and status of a reported item.

#    Argument: reference to an array  
                      of 'ns:VeROReportedItemType'

=cut

sub setReportedItem {
  my $self = shift;
  $self->{'ReportedItem'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getReportedItem()

  Calls: GetVeROReportStatus
  Returned: Conditionally

#    Returns: reference to an array  
                      of 'ns:VeROReportedItemType'

=cut

sub getReportedItem {
  my $self = shift;
  return $self->_getDataTypeArray('ReportedItem');
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