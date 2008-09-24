#!/usr/bin/perl

package eBay::API::XML::DataType::SiteHostedPictureDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SiteHostedPictureDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::SiteHostedPictureDetailsType

=head1 DESCRIPTION

Contains information about an UploadSiteHostedPictures upload.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::SiteHostedPictureDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::PictureSetMemberType;
use eBay::API::XML::DataType::Enum::PictureFormatCodeType;
use eBay::API::XML::DataType::Enum::PictureSetCodeType;


my @gaProperties = ( [ 'BaseURL', 'xs:anyURI', '', '', '' ]
	, [ 'FullURL', 'xs:anyURI', '', '', '' ]
	, [ 'PictureFormat', 'ns:PictureFormatCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::PictureFormatCodeType', '' ]
	, [ 'PictureName', 'xs:string', '', '', '' ]
	, [ 'PictureSet', 'ns:PictureSetCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::PictureSetCodeType', '' ]
	, [ 'PictureSetMember', 'ns:PictureSetMemberType', '1'
	     ,'eBay::API::XML::DataType::PictureSetMemberType', '1' ]
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



=head2 setBaseURL()

Truncated version of FullURL.

#    Argument: 'xs:anyURI'

=cut

sub setBaseURL {
  my $self = shift;
  $self->{'BaseURL'} = shift
}

=head2 getBaseURL()

  Calls: UploadSiteHostedPictures
  Returned: Always

#    Returns: 'xs:anyURI'

=cut

sub getBaseURL {
  my $self = shift;
  return $self->{'BaseURL'};
}


=head2 setFullURL()

The URL for the uploaded picture.
Store this value for association with an item listing.
That is, after you use UploadSiteHostedPictures to upload an image,
use the value in FullURL to associate the image with an item
(specify the value in Item.PictureDetails.PictureURL in
AddItem, ReviseItem, or RelistItem) within 48 hours.
Unassociated pictures are automatically deleted after that period.

#    Argument: 'xs:anyURI'

=cut

sub setFullURL {
  my $self = shift;
  $self->{'FullURL'} = shift
}

=head2 getFullURL()

  Calls: UploadSiteHostedPictures
  Returned: Always

#    Returns: 'xs:anyURI'

=cut

sub getFullURL {
  my $self = shift;
  return $self->{'FullURL'};
}


=head2 setPictureFormat()

The format into which an uploaded picture has been converted.
This value is usually JPG, but may be GIF.

#    Argument: 'ns:PictureFormatCodeType'

=cut

sub setPictureFormat {
  my $self = shift;
  $self->{'PictureFormat'} = shift
}

=head2 getPictureFormat()

  Calls: UploadSiteHostedPictures
  Returned: Always

#    Returns: 'ns:PictureFormatCodeType'

=cut

sub getPictureFormat {
  my $self = shift;
  return $self->{'PictureFormat'};
}


=head2 setPictureName()

Corresponds to the PictureName input value that you specified in the request.
You can use the PictureName output field to confirm that the
UploadSiteHostedPictures response corresponds to a specific
UploadSiteHostedPictures request.

#    Argument: 'xs:string'

=cut

sub setPictureName {
  my $self = shift;
  $self->{'PictureName'} = shift
}

=head2 getPictureName()

  Calls: UploadSiteHostedPictures
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getPictureName {
  my $self = shift;
  return $self->{'PictureName'};
}


=head2 setPictureSet()

The size of images generated. This value may differ from the one requested,
e.g. if a Supersize image cannot be generated.

#    Argument: 'ns:PictureSetCodeType'

=cut

sub setPictureSet {
  my $self = shift;
  $self->{'PictureSet'} = shift
}

=head2 getPictureSet()

  Calls: UploadSiteHostedPictures
  Returned: Always

#    Returns: 'ns:PictureSetCodeType'

=cut

sub getPictureSet {
  my $self = shift;
  return $self->{'PictureSet'};
}


=head2 setPictureSetMember()

URL and size information for each generated and stored size.
This data is not necessarily needed by your application,
but is provided for use in picture previews.
This data is used for display control for specific pictures in the generated imageset.
This data is supplied for all generated pictures.

#    Argument: reference to an array  
                      of 'ns:PictureSetMemberType'

=cut

sub setPictureSetMember {
  my $self = shift;
  $self->{'PictureSetMember'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getPictureSetMember()

  Calls: UploadSiteHostedPictures
  Returned: Always

#    Returns: reference to an array  
                      of 'ns:PictureSetMemberType'

=cut

sub getPictureSetMember {
  my $self = shift;
  return $self->_getDataTypeArray('PictureSetMember');
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
