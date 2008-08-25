#!/usr/bin/perl

package eBay::API::XML::DataType::SubscriptionType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SubscriptionType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::SubscriptionType

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::SubscriptionType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::Enum::SiteCodeType;


my @gaProperties = ( [ 'Active', 'xs:boolean', '', '', '' ]
	, [ 'EIASToken', 'xs:string', '', '', '' ]
	, [ 'SiteID', 'ns:SiteCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::SiteCodeType', '' ]
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



=head2 setActive()

#    Argument: 'xs:boolean'

=cut

sub setActive {
  my $self = shift;
  $self->{'Active'} = shift
}

=head2 isActive()

#    Returns: 'xs:boolean'

=cut

sub isActive {
  my $self = shift;
  return $self->{'Active'};
}


=head2 setEIASToken()

#    Argument: 'xs:string'

=cut

sub setEIASToken {
  my $self = shift;
  $self->{'EIASToken'} = shift
}

=head2 getEIASToken()

#    Returns: 'xs:string'

=cut

sub getEIASToken {
  my $self = shift;
  return $self->{'EIASToken'};
}


=head2 setSiteID()

#    Argument: 'ns:SiteCodeType'

=cut

sub setSiteID {
  my $self = shift;
  $self->{'SiteID'} = shift
}

=head2 getSiteID()

#    Returns: 'ns:SiteCodeType'

=cut

sub getSiteID {
  my $self = shift;
  return $self->{'SiteID'};
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
