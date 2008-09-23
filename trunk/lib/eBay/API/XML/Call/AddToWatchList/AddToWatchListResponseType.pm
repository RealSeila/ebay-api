#!/usr/bin/perl

package eBay::API::XML::Call::AddToWatchList::AddToWatchListResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. AddToWatchListResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::AddToWatchList::AddToWatchListResponseType

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::AddToWatchList::AddToWatchListResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");



my @gaProperties = ( [ 'WatchListCount', 'xs:int', '', '', '' ]
	, [ 'WatchListMaximum', 'xs:int', '', '', '' ]
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



=head2 setWatchListCount()

The number of items in the user's watch list (after those specified
in the call request have been added)

#    Argument: 'xs:int'

=cut

sub setWatchListCount {
  my $self = shift;
  $self->{'WatchListCount'} = shift
}

=head2 getWatchListCount()

  Returned: Always
#    Returns: 'xs:int'

=cut

sub getWatchListCount {
  my $self = shift;
  return $self->{'WatchListCount'};
}


=head2 setWatchListMaximum()

The maximum number of items allowed in watch lists. Currently this
value is the same for all sites and all users.

#    Argument: 'xs:int'

=cut

sub setWatchListMaximum {
  my $self = shift;
  $self->{'WatchListMaximum'} = shift
}

=head2 getWatchListMaximum()

  Returned: Always
#    Returns: 'xs:int'

=cut

sub getWatchListMaximum {
  my $self = shift;
  return $self->{'WatchListMaximum'};
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
