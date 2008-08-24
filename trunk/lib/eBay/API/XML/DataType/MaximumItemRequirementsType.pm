#!/usr/bin/perl

package eBay::API::XML::DataType::MaximumItemRequirementsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. MaximumItemRequirementsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::MaximumItemRequirementsType

=head1 DESCRIPTION

Container for items bid.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::MaximumItemRequirementsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'MaximumItemCount', 'xs:int', '', '', '' ]
	, [ 'MinimumFeedbackScore', 'xs:int', '', '', '' ]
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



=head2 setMaximumItemCount()

If this field is present, blocking is enabled,
where the value of this field represents the
maximum number of this seller's items a bidder is allowed to bid
on in a 10 day period before being blocked.
Valid values: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 25, 50, 75, 100.

Max: Min: 
  Calls: AddItem
         GetItemRecommendations
         RelistItem
         ReviseItem
         VerifyAddItem
  RequiredInput: No

#    Argument: 'xs:int'

=cut

sub setMaximumItemCount {
  my $self = shift;
  $self->{'MaximumItemCount'} = shift
}

=head2 getMaximumItemCount()

  Calls: GetBidderList
         GetSellerList
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription,
							ItemReturnAttributes, ReturnAll

#    Returns: 'xs:int'

=cut

sub getMaximumItemCount {
  my $self = shift;
  return $self->{'MaximumItemCount'};
}


=head2 setMinimumFeedbackScore()

This field is ignored on input unless MaximumItemCount has
been provided.
If this field is present, the user's feedback score is also considered:
a user is blocked from bidding if the user's feedback score is
less than or equal to the value of this field.
Valid values: 0, 1, 2, 3, 4, 5.

Max: Min: 
  Calls: AddItem
         GetItemRecommendations
         RelistItem
         ReviseItem
         VerifyAddItem
  RequiredInput: No

#    Argument: 'xs:int'

=cut

sub setMinimumFeedbackScore {
  my $self = shift;
  $self->{'MinimumFeedbackScore'} = shift
}

=head2 getMinimumFeedbackScore()

  Calls: GetBidderList
         GetSellerList
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription,
							ItemReturnAttributes, ReturnAll

#    Returns: 'xs:int'

=cut

sub getMinimumFeedbackScore {
  my $self = shift;
  return $self->{'MinimumFeedbackScore'};
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