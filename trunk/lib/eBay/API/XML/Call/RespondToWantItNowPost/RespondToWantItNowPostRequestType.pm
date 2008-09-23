#!/usr/bin/perl

package eBay::API::XML::Call::RespondToWantItNowPost::RespondToWantItNowPostRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. RespondToWantItNowPostRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::RespondToWantItNowPost::RespondToWantItNowPostRequestType

=head1 DESCRIPTION

Enables a seller to respond to a Want It Now post with an item listed on the eBay
site. Responses appear on the Want It Now post page, with the item title, the
price of the item, the number of bids on the item, and the time left before the
listing ends. If the item has a picture, the picture is also included on the Want
It Now post page.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::RespondToWantItNowPost::RespondToWantItNowPostRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::ItemIDType;


my @gaProperties = ( [ 'ItemID', 'ns:ItemIDType', ''
	     ,'eBay::API::XML::DataType::ItemIDType', '1' ]
	, [ 'PostID', 'ns:ItemIDType', ''
	     ,'eBay::API::XML::DataType::ItemIDType', '1' ]
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



=head2 setItemID()

The unique identifier of an item listed on the eBay site.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

  RequiredInput: Yes
#    Argument: 'ns:ItemIDType'

=cut

sub setItemID {
  my $self = shift;
  $self->{'ItemID'} = shift
}

=head2 getItemID()

#    Returns: 'ns:ItemIDType'

=cut

sub getItemID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ItemID'
		,'eBay::API::XML::DataType::ItemIDType');
}


=head2 setPostID()

The unique identifier of a Want It Now post on the eBay site.

  RequiredInput: Yes
#    Argument: 'ns:ItemIDType'

=cut

sub setPostID {
  my $self = shift;
  $self->{'PostID'} = shift
}

=head2 getPostID()

#    Returns: 'ns:ItemIDType'

=cut

sub getPostID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'PostID'
		,'eBay::API::XML::DataType::ItemIDType');
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