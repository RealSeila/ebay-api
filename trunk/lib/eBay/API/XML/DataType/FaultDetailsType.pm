#!/usr/bin/perl

package eBay::API::XML::DataType::FaultDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. FaultDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::FaultDetailsType

=head1 DESCRIPTION

SOAP faults are used to indicate that an infrastructure error has occurred,
such as a problem on eBay's side with database or server going down, or a
problem with the client or server-side SOAP framework.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::FaultDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'DetailedMessage', 'xs:string', '', '', '' ]
	, [ 'ErrorCode', 'xs:string', '', '', '' ]
	, [ 'Severity', 'xs:string', '', '', '' ]
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



=head2 setDetailedMessage()

Description of the condition that caused the SOAP fault.

#    Argument: 'xs:string'

=cut

sub setDetailedMessage {
  my $self = shift;
  $self->{'DetailedMessage'} = shift
}

=head2 getDetailedMessage()

#    Returns: 'xs:string'

=cut

sub getDetailedMessage {
  my $self = shift;
  return $self->{'DetailedMessage'};
}


=head2 setErrorCode()

Error code can be used by a receiving application to debug a SOAP response
message that contains one or more SOAP fault details.
Each error code is uniquely defined for each fault scenario.
See the eBay documentation for more information.
Your application can use error codes as identifiers
in your customized error-handling algorithms.

#    Argument: 'xs:string'

=cut

sub setErrorCode {
  my $self = shift;
  $self->{'ErrorCode'} = shift
}

=head2 getErrorCode()

#    Returns: 'xs:string'

=cut

sub getErrorCode {
  my $self = shift;
  return $self->{'ErrorCode'};
}


=head2 setSeverity()

Indicates whether the error is a severe error (causing the request to fail)
or an informational error (a warning).

#    Argument: 'xs:string'

=cut

sub setSeverity {
  my $self = shift;
  $self->{'Severity'} = shift
}

=head2 getSeverity()

#    Returns: 'xs:string'

=cut

sub getSeverity {
  my $self = shift;
  return $self->{'Severity'};
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