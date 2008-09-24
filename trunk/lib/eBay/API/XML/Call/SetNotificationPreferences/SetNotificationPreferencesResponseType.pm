#!/usr/bin/perl

package eBay::API::XML::Call::SetNotificationPreferences::SetNotificationPreferencesResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SetNotificationPreferencesResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::SetNotificationPreferences::SetNotificationPreferencesResponseType

=head1 DESCRIPTION

(out) Returned after a call to SetNotificationPreferences to indicate that the call succeeded.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::SetNotificationPreferences::SetNotificationPreferencesResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");



my @gaProperties = ( 
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
