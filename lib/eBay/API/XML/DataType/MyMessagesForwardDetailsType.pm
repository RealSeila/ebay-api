#!/usr/bin/perl

package eBay::API::XML::DataType::MyMessagesForwardDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. MyMessagesForwardDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::MyMessagesForwardDetailsType

=head1 DESCRIPTION

Details relating to the forwarding of an alert or message.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::MyMessagesForwardDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'ForwardMessageEncoding', 'xs:string', '', '', '' ]
	, [ 'UserForwardDate', 'xs:dateTime', '', '', '' ]
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



=head2 setForwardMessageEncoding()

Encoding used to forward an alert or message.

#    Argument: 'xs:string'

=cut

sub setForwardMessageEncoding {
  my $self = shift;
  $self->{'ForwardMessageEncoding'} = shift
}

=head2 getForwardMessageEncoding()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnHeaders, ReturnMessages

#    Returns: 'xs:string'

=cut

sub getForwardMessageEncoding {
  my $self = shift;
  return $self->{'ForwardMessageEncoding'};
}


=head2 setUserForwardDate()

The date and time a user forwarded an alert or message.

#    Argument: 'xs:dateTime'

=cut

sub setUserForwardDate {
  my $self = shift;
  $self->{'UserForwardDate'} = shift
}

=head2 getUserForwardDate()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnHeaders, ReturnMessages

#    Returns: 'xs:dateTime'

=cut

sub getUserForwardDate {
  my $self = shift;
  return $self->{'UserForwardDate'};
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
