#!/usr/bin/perl

package eBay::API::XML::Call::GetSuggestedCategories::GetSuggestedCategoriesRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetSuggestedCategoriesRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetSuggestedCategories::GetSuggestedCategoriesRequestType

=head1 DESCRIPTION

Requests a list of up to 10 categories with
the highest percentage of listings whose titles or descriptions
contain the keywords you specify.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetSuggestedCategories::GetSuggestedCategoriesRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");



my @gaProperties = ( [ 'Query', 'xs:string', '', '', '' ]
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



=head2 setQuery()

Specifies the search string, consisting of one or
more words to search for in the listing title.
The words "and" and "or" are treated like any other
word.

MaxLength: 350 (characters)

  RequiredInput: Yes
#    Argument: 'xs:string'

=cut

sub setQuery {
  my $self = shift;
  $self->{'Query'} = shift
}

=head2 getQuery()

#    Returns: 'xs:string'

=cut

sub getQuery {
  my $self = shift;
  return $self->{'Query'};
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
