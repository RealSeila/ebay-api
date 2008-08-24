#!/usr/bin/perl

package eBay::API::XML::Call::GetVeROReasonCodeDetails::GetVeROReasonCodeDetailsRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetVeROReasonCodeDetailsRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetVeROReasonCodeDetails::GetVeROReasonCodeDetailsRequestType

=head1 DESCRIPTION

Retrieves details for VeRO reason codes and their descriptions. You can specify a 
reason code ID to get details for a specific reason on the site specified in the 
request header. If ReasonCodeID is not passed in the request, all reason codes are 
returned. Set ReturnAllSites to true to retrieve reason codes for all sites.
You must be a member of the Verified Rights Owner (VeRO) Program to use this call.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetVeROReasonCodeDetails::GetVeROReasonCodeDetailsRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");



my @gaProperties = ( [ 'ReasonCodeID', 'xs:long', '', '', '' ]
	, [ 'ReturnAllSites', 'xs:boolean', '', '', '' ]
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



=head2 setReasonCodeID()

Unique identifier for a reason code. If this ReasonCodeID is passed then 
only details of this ReasonCodeID will be returned. If no reason code is 
specified, all reason codes are returned.

Max: Default: Min: 
  RequiredInput: Conditionally
#    Argument: 'xs:long'

=cut

sub setReasonCodeID {
  my $self = shift;
  $self->{'ReasonCodeID'} = shift
}

=head2 getReasonCodeID()

#    Returns: 'xs:long'

=cut

sub getReasonCodeID {
  my $self = shift;
  return $self->{'ReasonCodeID'};
}


=head2 setReturnAllSites()

Set to true to retrieve reason codes for all sites. If not specified, 
reason codes are returned for the site specified in the request header 
only. 
If ReasonCodeID is specified, this parameter is ignored.

Default: false

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setReturnAllSites {
  my $self = shift;
  $self->{'ReturnAllSites'} = shift
}

=head2 isReturnAllSites()

#    Returns: 'xs:boolean'

=cut

sub isReturnAllSites {
  my $self = shift;
  return $self->{'ReturnAllSites'};
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
