#!/usr/bin/perl

package eBay::API::XML::DataType::MemberMessageExchangeArrayType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. MemberMessageExchangeArrayType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::MemberMessageExchangeArrayType

=head1 DESCRIPTION

Container for messages. Returned for GetMemberMessages if messages that meet the request criteria exist.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::MemberMessageExchangeArrayType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::MemberMessageExchangeType;


my @gaProperties = ( [ 'MemberMessageExchange', 'ns:MemberMessageExchangeType', '1'
	     ,'eBay::API::XML::DataType::MemberMessageExchangeType', '1' ]
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



=head2 setMemberMessageExchange()

Information about individual messages. Returned if the parent container is returned.

#    Argument: reference to an array  
                      of 'ns:MemberMessageExchangeType'

=cut

sub setMemberMessageExchange {
  my $self = shift;
  $self->{'MemberMessageExchange'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getMemberMessageExchange()

  Calls: GetAdFormatLeads
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

  Calls: GetMemberMessages
  Returned: Conditionally

#    Returns: reference to an array  
                      of 'ns:MemberMessageExchangeType'

=cut

sub getMemberMessageExchange {
  my $self = shift;
  return $self->_getDataTypeArray('MemberMessageExchange');
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
