#!/usr/bin/perl

package eBay::API::XML::DataType::PictureSetMemberType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. PictureSetMemberType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::PictureSetMemberType

=head1 DESCRIPTION

URL and size information for each generated and stored size.
This data is provided for use in application previews of pictures.
This data is used for display control for specific pictures in the generated imageset.
This container is supplied for all generated pictures.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::PictureSetMemberType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'MemberURL', 'xs:anyURI', '', '', '' ]
	, [ 'PictureHeight', 'xs:int', '', '', '' ]
	, [ 'PictureWidth', 'xs:int', '', '', '' ]
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



=head2 setMemberURL()

URL for the picture.

#    Argument: 'xs:anyURI'

=cut

sub setMemberURL {
  my $self = shift;
  $self->{'MemberURL'} = shift
}

=head2 getMemberURL()

  Calls: UploadSiteHostedPictures
  Returned: Always

#    Returns: 'xs:anyURI'

=cut

sub getMemberURL {
  my $self = shift;
  return $self->{'MemberURL'};
}


=head2 setPictureHeight()

Height of the picture in pixels.

#    Argument: 'xs:int'

=cut

sub setPictureHeight {
  my $self = shift;
  $self->{'PictureHeight'} = shift
}

=head2 getPictureHeight()

  Calls: UploadSiteHostedPictures
  Returned: Always

#    Returns: 'xs:int'

=cut

sub getPictureHeight {
  my $self = shift;
  return $self->{'PictureHeight'};
}


=head2 setPictureWidth()

Width of the picture in pixels.

#    Argument: 'xs:int'

=cut

sub setPictureWidth {
  my $self = shift;
  $self->{'PictureWidth'} = shift
}

=head2 getPictureWidth()

  Calls: UploadSiteHostedPictures
  Returned: Always

#    Returns: 'xs:int'

=cut

sub getPictureWidth {
  my $self = shift;
  return $self->{'PictureWidth'};
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
