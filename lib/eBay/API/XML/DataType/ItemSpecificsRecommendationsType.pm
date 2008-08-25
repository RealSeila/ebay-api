#!/usr/bin/perl

package eBay::API::XML::DataType::ItemSpecificsRecommendationsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ItemSpecificsRecommendationsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ItemSpecificsRecommendationsType

=head1 DESCRIPTION

Contains attribute suggestions returned from the suggested Item Specifics from the
Recommendation engine, An "Item Specific" will be a name/value pair and may be
returned complete (with name/value) or partial (name only).



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ItemSpecificsRecommendationsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::NameValueListArrayType;


my @gaProperties = ( [ 'ItemSpecifics', 'ns:NameValueListArrayType', ''
	     ,'eBay::API::XML::DataType::NameValueListArrayType', '1' ]
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



=head2 setItemSpecifics()

Contains a list of Item Specifics that eBay recommends as most popular
based on the requested category and title (if any).

#    Argument: 'ns:NameValueListArrayType'

=cut

sub setItemSpecifics {
  my $self = shift;
  $self->{'ItemSpecifics'} = shift
}

=head2 getItemSpecifics()

  Calls: GetItemRecommendations
  Returned: Conditionally

#    Returns: 'ns:NameValueListArrayType'

=cut

sub getItemSpecifics {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ItemSpecifics'
		,'eBay::API::XML::DataType::NameValueListArrayType');
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