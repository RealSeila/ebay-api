#!/usr/bin/perl

package eBay::API::XML::DataType::PictureManagerPictureDisplayType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. PictureManagerPictureDisplayType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::PictureManagerPictureDisplayType

=head1 DESCRIPTION

Defines various styles of picture display for images in Picture Manager albums.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::PictureManagerPictureDisplayType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::Enum::PictureManagerPictureDisplayTypeCodeType;


my @gaProperties = ( [ 'DisplayType', 'ns:PictureManagerPictureDisplayTypeCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::PictureManagerPictureDisplayTypeCodeType', '' ]
	, [ 'Height', 'xs:int', '', '', '' ]
	, [ 'Size', 'xs:int', '', '', '' ]
	, [ 'URL', 'xs:anyURI', '', '', '' ]
	, [ 'Width', 'xs:int', '', '', '' ]
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



=head2 setDisplayType()

The style of picture display, with a maximum size.

  Calls: SetPictureManagerDetails
  RequiredInput: Conditionally

#    Argument: 'ns:PictureManagerPictureDisplayTypeCodeType'

=cut

sub setDisplayType {
  my $self = shift;
  $self->{'DisplayType'} = shift
}

=head2 getDisplayType()

  Calls: GetPictureManagerOptions
  Returned: Always

  Calls: GetPictureManagerDetails
  Returned: Conditionally
  Details: PictureManagerDetailLevel: none, ReturnPicture, ReturnAll

#    Returns: 'ns:PictureManagerPictureDisplayTypeCodeType'

=cut

sub getDisplayType {
  my $self = shift;
  return $self->{'DisplayType'};
}


=head2 setHeight()

The height of a specific image, or the maximum allowed height, in pixels.
Varies for different calls.

  Calls: SetPictureManagerDetails
  RequiredInput: Conditionally

#    Argument: 'xs:int'

=cut

sub setHeight {
  my $self = shift;
  $self->{'Height'} = shift
}

=head2 getHeight()

  Calls: GetPictureManagerOptions
  Returned: Always

  Calls: GetPictureManagerDetails
  Returned: Conditionally
  Details: PictureManagerDetailLevel: none, ReturnPicture, ReturnAll

#    Returns: 'xs:int'

=cut

sub getHeight {
  my $self = shift;
  return $self->{'Height'};
}


=head2 setSize()

The total file size of the picture, in bytes.

  Calls: SetPictureManagerDetails
  RequiredInput: Conditionally

#    Argument: 'xs:int'

=cut

sub setSize {
  my $self = shift;
  $self->{'Size'} = shift
}

=head2 getSize()

  Calls: GetPictureManagerDetails
  Returned: Conditionally
  Details: PictureManagerDetailLevel: none, ReturnPicture, ReturnAll

#    Returns: 'xs:int'

=cut

sub getSize {
  my $self = shift;
  return $self->{'Size'};
}


=head2 setURL()

The URL to the image in the Picture Manager album.

  Calls: SetPictureManagerDetails
  RequiredInput: Conditionally

#    Argument: 'xs:anyURI'

=cut

sub setURL {
  my $self = shift;
  $self->{'URL'} = shift
}

=head2 getURL()

  Calls: GetPictureManagerDetails
  Returned: Conditionally
  Details: PictureManagerDetailLevel: none, ReturnPicture, ReturnAll

#    Returns: 'xs:anyURI'

=cut

sub getURL {
  my $self = shift;
  return $self->{'URL'};
}


=head2 setWidth()

The width of a specific image, or the maximum allowed width, in pixels.
Varies for different calls.

  Calls: SetPictureManagerDetails
  RequiredInput: Conditionally

#    Argument: 'xs:int'

=cut

sub setWidth {
  my $self = shift;
  $self->{'Width'} = shift
}

=head2 getWidth()

  Calls: GetPictureManagerOptions
  Returned: Always

  Calls: GetPictureManagerDetails
  Returned: Conditionally
  Details: PictureManagerDetailLevel: none, ReturnPicture, ReturnAll

#    Returns: 'xs:int'

=cut

sub getWidth {
  my $self = shift;
  return $self->{'Width'};
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
