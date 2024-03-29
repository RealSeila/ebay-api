#!/usr/bin/perl

package eBay::API::XML::DataType::MyMessagesAlertArrayType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. MyMessagesAlertArrayType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::MyMessagesAlertArrayType

=head1 DESCRIPTION

Contains a list of alert data.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::MyMessagesAlertArrayType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::MyMessagesAlertType;


my @gaProperties = ( [ 'Alert', 'ns:MyMessagesAlertType', '1'
	     ,'eBay::API::XML::DataType::MyMessagesAlertType', '1' ]
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



=head2 setAlert()

Contains the data for one alert. Returned for
detail levels ReturnHeaders and ReturnMessages.
Parent returned as an empty node if user has no
alerts.

#    Argument: reference to an array  
                      of 'ns:MyMessagesAlertType'

=cut

sub setAlert {
  my $self = shift;
  $self->{'Alert'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getAlert()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnHeaders, ReturnMessages

#    Returns: reference to an array  
                      of 'ns:MyMessagesAlertType'

=cut

sub getAlert {
  my $self = shift;
  return $self->_getDataTypeArray('Alert');
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
