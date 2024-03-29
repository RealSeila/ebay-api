#!/usr/bin/perl

package eBay::API::XML::DataType::BidAssistantListType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. BidAssistantListType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::BidAssistantListType

=head1 DESCRIPTION

Defines how a list of BidAssistant items should be returned.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::BidAssistantListType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'BidGroupID', 'xs:long', '', '', '' ]
	, [ 'IncludeNotes', 'xs:boolean', '', '', '' ]
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



=head2 setBidGroupID()

Use this element to specify the bid group id for the Bid Assistant items 
that you want information about.

  Calls: GetMyeBayBuying
  RequiredInput: No
  Context: BidAssistantList

#    Argument: 'xs:long'

=cut

sub setBidGroupID {
  my $self = shift;
  $self->{'BidGroupID'} = shift
}

=head2 getBidGroupID()

#    Returns: 'xs:long'

=cut

sub getBidGroupID {
  my $self = shift;
  return $self->{'BidGroupID'};
}


=head2 setIncludeNotes()

Use this element if you want to include information about 
Item.PrivateNotes and Item.eBayNotes in the response. Valid 
for BidAssistantList, WatchList, BidList, WonList, LostList, 
ScheduledList, ActiveList, SoldList, and UnsoldList.

  Calls: GetMyeBayBuying
  RequiredInput: No
  Default: False
  Context: BidAssistantList

#    Argument: 'xs:boolean'

=cut

sub setIncludeNotes {
  my $self = shift;
  $self->{'IncludeNotes'} = shift
}

=head2 isIncludeNotes()

#    Returns: 'xs:boolean'

=cut

sub isIncludeNotes {
  my $self = shift;
  return $self->{'IncludeNotes'};
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
