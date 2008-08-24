#!/usr/bin/perl

package eBay::API::XML::Call::GetPictureManagerDetails::GetPictureManagerDetailsResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetPictureManagerDetailsResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetPictureManagerDetails::GetPictureManagerDetailsResponseType

=head1 DESCRIPTION

Responds with information about content in a Picture Manager album
or the account settings.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetPictureManagerDetails::GetPictureManagerDetailsResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::PictureManagerDetailsType;


my @gaProperties = ( [ 'PictureManagerDetails', 'ns:PictureManagerDetailsType', ''
	     ,'eBay::API::XML::DataType::PictureManagerDetailsType', '1' ]
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



=head2 setPictureManagerDetails()

Contains details of the account settings, folders or
pictures in the user's album, or both.

#    Argument: 'ns:PictureManagerDetailsType'

=cut

sub setPictureManagerDetails {
  my $self = shift;
  $self->{'PictureManagerDetails'} = shift
}

=head2 getPictureManagerDetails()

  Returned: Always
  Details: PictureManagerDetailLevel: none, ReturnSubscription, ReturnPicture, ReturnAll
#    Returns: 'ns:PictureManagerDetailsType'

=cut

sub getPictureManagerDetails {
  my $self = shift;
  return $self->_getDataTypeInstance( 'PictureManagerDetails'
		,'eBay::API::XML::DataType::PictureManagerDetailsType');
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
