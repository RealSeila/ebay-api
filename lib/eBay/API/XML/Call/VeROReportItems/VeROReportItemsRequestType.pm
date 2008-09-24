#!/usr/bin/perl

package eBay::API::XML::Call::VeROReportItems::VeROReportItemsRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. VeROReportItemsRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::VeROReportItems::VeROReportItemsRequestType

=head1 DESCRIPTION

Reports items that allegedly infringe your copyright, trademark, or other 
intellectual property rights. You can report one or more items at a time with this 
call. You must be a member of the Verified Rights Owner (VeRO) Program to use this 
call.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::VeROReportItems::VeROReportItemsRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::UserIDType;
use eBay::API::XML::DataType::VeROReportItemsType;


my @gaProperties = ( [ 'ReportItems', 'ns:VeROReportItemsType', ''
	     ,'eBay::API::XML::DataType::VeROReportItemsType', '1' ]
	, [ 'RightsOwnerID', 'ns:UserIDType', ''
	     ,'eBay::API::XML::DataType::UserIDType', '1' ]
                    );
push @gaProperties, @{eBay::API::XML::RequestDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::RequestDataType::getAttributesList()};

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



=head2 setReportItems()

Container (packet) for items being reported. You can report the same item 
more than once in a packet if a different reason code is used each time.

  RequiredInput: No
#    Argument: 'ns:VeROReportItemsType'

=cut

sub setReportItems {
  my $self = shift;
  $self->{'ReportItems'} = shift
}

=head2 getReportItems()

#    Returns: 'ns:VeROReportItemsType'

=cut

sub getReportItems {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ReportItems'
		,'eBay::API::XML::DataType::VeROReportItemsType');
}


=head2 setRightsOwnerID()

User ID of the VeRO member reporting the items.

  RequiredInput: Yes
#    Argument: 'ns:UserIDType'

=cut

sub setRightsOwnerID {
  my $self = shift;
  $self->{'RightsOwnerID'} = shift
}

=head2 getRightsOwnerID()

#    Returns: 'ns:UserIDType'

=cut

sub getRightsOwnerID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'RightsOwnerID'
		,'eBay::API::XML::DataType::UserIDType');
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
