#!/usr/bin/perl

package eBay::API::XML::DataType::SellerRoleMetricsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SellerRoleMetricsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::SellerRoleMetricsType

=head1 DESCRIPTION

Specifies 1 year feedback metrics for a seller.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::SellerRoleMetricsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'CrossBorderTransactionCount', 'xs:int', '', '', '' ]
	, [ 'CrossBorderTransactionPercent', 'xs:float', '', '', '' ]
	, [ 'FeedbackLeftPercent', 'xs:float', '', '', '' ]
	, [ 'NegativeFeedbackLeftCount', 'xs:int', '', '', '' ]
	, [ 'NeutralFeedbackLeftCount', 'xs:int', '', '', '' ]
	, [ 'PositiveFeedbackLeftCount', 'xs:int', '', '', '' ]
	, [ 'RepeatBuyerCount', 'xs:int', '', '', '' ]
	, [ 'RepeatBuyerPercent', 'xs:float', '', '', '' ]
	, [ 'TransactionPercent', 'xs:float', '', '', '' ]
	, [ 'UniqueBuyerCount', 'xs:int', '', '', '' ]
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



=head2 setCrossBorderTransactionCount()

Count of transactions done cross-border.

#    Argument: 'xs:int'

=cut

sub setCrossBorderTransactionCount {
  my $self = shift;
  $self->{'CrossBorderTransactionCount'} = shift
}

=head2 getCrossBorderTransactionCount()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:int'

=cut

sub getCrossBorderTransactionCount {
  my $self = shift;
  return $self->{'CrossBorderTransactionCount'};
}


=head2 setCrossBorderTransactionPercent()

Percentage of cross-border transactions.

#    Argument: 'xs:float'

=cut

sub setCrossBorderTransactionPercent {
  my $self = shift;
  $self->{'CrossBorderTransactionPercent'} = shift
}

=head2 getCrossBorderTransactionPercent()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:float'

=cut

sub getCrossBorderTransactionPercent {
  my $self = shift;
  return $self->{'CrossBorderTransactionPercent'};
}


=head2 setFeedbackLeftPercent()

Percentage of leaving feedback as a seller.

#    Argument: 'xs:float'

=cut

sub setFeedbackLeftPercent {
  my $self = shift;
  $self->{'FeedbackLeftPercent'} = shift
}

=head2 getFeedbackLeftPercent()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:float'

=cut

sub getFeedbackLeftPercent {
  my $self = shift;
  return $self->{'FeedbackLeftPercent'};
}


=head2 setNegativeFeedbackLeftCount()

Count of negative feedback entries given as a seller.

#    Argument: 'xs:int'

=cut

sub setNegativeFeedbackLeftCount {
  my $self = shift;
  $self->{'NegativeFeedbackLeftCount'} = shift
}

=head2 getNegativeFeedbackLeftCount()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:int'

=cut

sub getNegativeFeedbackLeftCount {
  my $self = shift;
  return $self->{'NegativeFeedbackLeftCount'};
}


=head2 setNeutralFeedbackLeftCount()

Count of neutral feedback entries given as a seller.

#    Argument: 'xs:int'

=cut

sub setNeutralFeedbackLeftCount {
  my $self = shift;
  $self->{'NeutralFeedbackLeftCount'} = shift
}

=head2 getNeutralFeedbackLeftCount()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:int'

=cut

sub getNeutralFeedbackLeftCount {
  my $self = shift;
  return $self->{'NeutralFeedbackLeftCount'};
}


=head2 setPositiveFeedbackLeftCount()

Count of positive feedback entries given as a seller.

#    Argument: 'xs:int'

=cut

sub setPositiveFeedbackLeftCount {
  my $self = shift;
  $self->{'PositiveFeedbackLeftCount'} = shift
}

=head2 getPositiveFeedbackLeftCount()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:int'

=cut

sub getPositiveFeedbackLeftCount {
  my $self = shift;
  return $self->{'PositiveFeedbackLeftCount'};
}


=head2 setRepeatBuyerCount()

Number of buyers who bought more than once from this seller.

#    Argument: 'xs:int'

=cut

sub setRepeatBuyerCount {
  my $self = shift;
  $self->{'RepeatBuyerCount'} = shift
}

=head2 getRepeatBuyerCount()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:int'

=cut

sub getRepeatBuyerCount {
  my $self = shift;
  return $self->{'RepeatBuyerCount'};
}


=head2 setRepeatBuyerPercent()

Percentage of repeat buyers.

#    Argument: 'xs:float'

=cut

sub setRepeatBuyerPercent {
  my $self = shift;
  $self->{'RepeatBuyerPercent'} = shift
}

=head2 getRepeatBuyerPercent()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:float'

=cut

sub getRepeatBuyerPercent {
  my $self = shift;
  return $self->{'RepeatBuyerPercent'};
}


=head2 setTransactionPercent()

Percentage of number of times a member has sold successfully vs. the number of
times a member has bought an item in the preceding 365 days.

#    Argument: 'xs:float'

=cut

sub setTransactionPercent {
  my $self = shift;
  $self->{'TransactionPercent'} = shift
}

=head2 getTransactionPercent()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:float'

=cut

sub getTransactionPercent {
  my $self = shift;
  return $self->{'TransactionPercent'};
}


=head2 setUniqueBuyerCount()

Count of unique buyers from this seller.

#    Argument: 'xs:int'

=cut

sub setUniqueBuyerCount {
  my $self = shift;
  $self->{'UniqueBuyerCount'} = shift
}

=head2 getUniqueBuyerCount()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:int'

=cut

sub getUniqueBuyerCount {
  my $self = shift;
  return $self->{'UniqueBuyerCount'};
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
