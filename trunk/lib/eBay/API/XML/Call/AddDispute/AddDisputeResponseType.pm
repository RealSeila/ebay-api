#!/usr/bin/perl

package eBay::API::XML::Call::AddDispute::AddDisputeResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. AddDisputeResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::AddDispute::AddDisputeResponseType

=head1 DESCRIPTION

Returned after calling AddDisputeRequest. The response confirms that
the Unpaid Item dispute was successfully created.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::AddDispute::AddDisputeResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::DisputeIDType;


my @gaProperties = ( [ 'DisputeID', 'ns:DisputeIDType', ''
	     ,'eBay::API::XML::DataType::DisputeIDType', '1' ]
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



=head2 setDisputeID()

The unique identifier of the Unpaid Item dispute.

#    Argument: 'ns:DisputeIDType'

=cut

sub setDisputeID {
  my $self = shift;
  $self->{'DisputeID'} = shift
}

=head2 getDisputeID()

  Returned: Always
#    Returns: 'ns:DisputeIDType'

=cut

sub getDisputeID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'DisputeID'
		,'eBay::API::XML::DataType::DisputeIDType');
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