#!/usr/bin/perl

package eBay::API::XML::DataType::BidRangeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. BidRangeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::BidRangeType

=head1 DESCRIPTION

Contains fields for limiting a call response to items with
a minimum or maximum number
of bids. You also can specify a bid range by specifying
both a minimum and maximum number of bids in one call.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::BidRangeType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'MaximumBidCount', 'xs:int', '', '', '' ]
	, [ 'MinimumBidCount', 'xs:int', '', '', '' ]
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



=head2 setMaximumBidCount()

Limits the results to items with a maximum number
of bids.

  Calls: GetSearchResults
  RequiredInput: No

#    Argument: 'xs:int'

=cut

sub setMaximumBidCount {
  my $self = shift;
  $self->{'MaximumBidCount'} = shift
}

=head2 getMaximumBidCount()

#    Returns: 'xs:int'

=cut

sub getMaximumBidCount {
  my $self = shift;
  return $self->{'MaximumBidCount'};
}


=head2 setMinimumBidCount()

Limits the results to items with a minimum number
of bids.

  Calls: GetSearchResults
  RequiredInput: No

#    Argument: 'xs:int'

=cut

sub setMinimumBidCount {
  my $self = shift;
  $self->{'MinimumBidCount'} = shift
}

=head2 getMinimumBidCount()

#    Returns: 'xs:int'

=cut

sub getMinimumBidCount {
  my $self = shift;
  return $self->{'MinimumBidCount'};
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
