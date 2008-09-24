#!/usr/bin/perl

package eBay::API::XML::DataType::NotificationEnableArrayType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. NotificationEnableArrayType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::NotificationEnableArrayType

=head1 DESCRIPTION

A list of NotificationEnable entries. Each entry specifies
one notification and whether it is enabled.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::NotificationEnableArrayType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::NotificationEnableType;


my @gaProperties = ( [ 'NotificationEnable', 'ns:NotificationEnableType', '1'
	     ,'eBay::API::XML::DataType::NotificationEnableType', '1' ]
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



=head2 setNotificationEnable()

Specifies one notification or alert event and whether it is
enabled or disabled. Returned if previously set.

  Calls: SetNotificationPreferences
  RequiredInput: No

#    Argument: reference to an array  
                      of 'ns:NotificationEnableType'

=cut

sub setNotificationEnable {
  my $self = shift;
  $self->{'NotificationEnable'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getNotificationEnable()

  Calls: GetNotificationPreferences
  Returned: Conditionally

#    Returns: reference to an array  
                      of 'ns:NotificationEnableType'

=cut

sub getNotificationEnable {
  my $self = shift;
  return $self->_getDataTypeArray('NotificationEnable');
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
