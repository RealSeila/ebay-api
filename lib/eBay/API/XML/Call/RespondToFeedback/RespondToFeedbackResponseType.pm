#!/usr/bin/perl

package eBay::API::XML::Call::RespondToFeedback::RespondToFeedbackResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. RespondToFeedbackResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::RespondToFeedback::RespondToFeedbackResponseType

=head1 DESCRIPTION

Indicates the success or failure of the attempt to reply
to feedback that has been left for a user, or to post a
follow-up comment to a feedback comment a user has left
for someone else.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::RespondToFeedback::RespondToFeedbackResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");



my @gaProperties = ( 
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
