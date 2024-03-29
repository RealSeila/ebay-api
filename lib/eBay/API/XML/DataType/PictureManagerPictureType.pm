#!/usr/bin/perl

package eBay::API::XML::DataType::PictureManagerPictureType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. PictureManagerPictureType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::PictureManagerPictureType

=head1 DESCRIPTION

A picture in a Picture Manager album.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::PictureManagerPictureType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::PictureManagerPictureDisplayType;


my @gaProperties = ( [ 'Date', 'xs:dateTime', '', '', '' ]
	, [ 'DisplayFormat', 'ns:PictureManagerPictureDisplayType', '1'
	     ,'eBay::API::XML::DataType::PictureManagerPictureDisplayType', '1' ]
	, [ 'Name', 'xs:string', '', '', '' ]
	, [ 'PictureURL', 'xs:anyURI', '', '', '' ]
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



=head2 setDate()

The date the picture was uploaded to the Picture Manager account.

  Calls: SetPictureManagerDetails
  RequiredInput: Conditionally

#    Argument: 'xs:dateTime'

=cut

sub setDate {
  my $self = shift;
  $self->{'Date'} = shift
}

=head2 getDate()

  Calls: GetPictureManagerDetails
  Returned: Conditionally
  Details: PictureManagerDetailLevel: none, ReturnPicture, ReturnAll

#    Returns: 'xs:dateTime'

=cut

sub getDate {
  my $self = shift;
  return $self->{'Date'};
}


=head2 setDisplayFormat()

The type of picture display in Picture Manager.

  Calls: SetPictureManagerDetails
  RequiredInput: Conditionally

#    Argument: reference to an array  
                      of 'ns:PictureManagerPictureDisplayType'

=cut

sub setDisplayFormat {
  my $self = shift;
  $self->{'DisplayFormat'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getDisplayFormat()

  Calls: GetPictureManagerDetails
  Returned: Conditionally
  Details: PictureManagerDetailLevel: none, ReturnPicture, ReturnAll

#    Returns: reference to an array  
                      of 'ns:PictureManagerPictureDisplayType'

=cut

sub getDisplayFormat {
  my $self = shift;
  return $self->_getDataTypeArray('DisplayFormat');
}


=head2 setName()

The name of the picture, specified by the user.

  Calls: SetPictureManagerDetails
  RequiredInput: Conditionally

#    Argument: 'xs:string'

=cut

sub setName {
  my $self = shift;
  $self->{'Name'} = shift
}

=head2 getName()

  Calls: GetPictureManagerDetails
  Returned: Conditionally
  Details: PictureManagerDetailLevel: none, ReturnPicture, ReturnAll

#    Returns: 'xs:string'

=cut

sub getName {
  my $self = shift;
  return $self->{'Name'};
}


=head2 setPictureURL()

The URL that identifies the picture in the album. If a URI has
spaces, replace them with %20.

#    Argument: 'xs:anyURI'

=cut

sub setPictureURL {
  my $self = shift;
  $self->{'PictureURL'} = shift
}

=head2 getPictureURL()

#    Returns: 'xs:anyURI'

=cut

sub getPictureURL {
  my $self = shift;
  return $self->{'PictureURL'};
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
