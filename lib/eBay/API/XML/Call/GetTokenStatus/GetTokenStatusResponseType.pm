#!/usr/bin/perl

package eBay::API::XML::Call::GetTokenStatus::GetTokenStatusResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetTokenStatusResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetTokenStatus::GetTokenStatusResponseType

=head1 DESCRIPTION

Returns token status.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetTokenStatus::GetTokenStatusResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::TokenStatusType;


my @gaProperties = ( [ 'TokenStatus', 'ns:TokenStatusType', ''
	     ,'eBay::API::XML::DataType::TokenStatusType', '1' ]
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



=head2 setTokenStatus()

Returns token status and details. For example, if revoked, whether by eBay, the user, or the application, and also when revoked.

#    Argument: 'ns:TokenStatusType'

=cut

sub setTokenStatus {
  my $self = shift;
  $self->{'TokenStatus'} = shift
}

=head2 getTokenStatus()

  Returned: Always
#    Returns: 'ns:TokenStatusType'

=cut

sub getTokenStatus {
  my $self = shift;
  return $self->_getDataTypeInstance( 'TokenStatus'
		,'eBay::API::XML::DataType::TokenStatusType');
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
