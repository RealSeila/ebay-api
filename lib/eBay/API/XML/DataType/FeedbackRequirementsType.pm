#!/usr/bin/perl

package eBay::API::XML::DataType::FeedbackRequirementsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. FeedbackRequirementsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::FeedbackRequirementsType

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::FeedbackRequirementsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'content', 'xs:boolean', '', '', '' ]
                    );
push @gaProperties, @{eBay::API::XML::BaseDataType::getPropertiesList()};

my @gaAttributes = ( [ 'minimum', 'xs:string', '', '', '' ]
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



=head2 setValue()

#    Argument: 'xs:boolean'

=cut

sub setValue {
  my $self = shift;
  $self->{'content'} = shift
}

=head2 isValue()

#    Returns: 'xs:boolean'

=cut

sub isValue {
  my $self = shift;
  return $self->{'content'};
}




=head2 setMinimum()

Used to determine whether the seller meets the minimum feedback
requirements for Express.

#    Argument: 'xs:string'

=cut

sub setMinimum {
  my $self = shift;
  $self->{'minimum'} = shift
}

=head2 getMinimum()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:string'

=cut

sub getMinimum {
  my $self = shift;
  return $self->{'minimum'};
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
