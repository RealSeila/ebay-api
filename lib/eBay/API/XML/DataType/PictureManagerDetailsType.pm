#!/usr/bin/perl

package eBay::API::XML::DataType::PictureManagerDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. PictureManagerDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::PictureManagerDetailsType

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::PictureManagerDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::PictureManagerFolderType;
use eBay::API::XML::DataType::Enum::PictureManagerSubscriptionLevelCodeType;


my @gaProperties = ( [ 'Folder', 'ns:PictureManagerFolderType', '1'
	     ,'eBay::API::XML::DataType::PictureManagerFolderType', '1' ]
	, [ 'KeepOriginal', 'xs:boolean', '', '', '' ]
	, [ 'StorageUsed', 'xs:int', '', '', '' ]
	, [ 'SubscriptionLevel', 'ns:PictureManagerSubscriptionLevelCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::PictureManagerSubscriptionLevelCodeType', '' ]
	, [ 'TotalStorageAvailable', 'xs:int', '', '', '' ]
	, [ 'WatermarkEPS', 'xs:boolean', '', '', '' ]
	, [ 'WatermarkUserID', 'xs:boolean', '', '', '' ]
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



=head2 setFolder()

The folder requested in the album.

  Calls: SetPictureManagerDetails
  RequiredInput: Yes

#    Argument: reference to an array  
                      of 'ns:PictureManagerFolderType'

=cut

sub setFolder {
  my $self = shift;
  $self->{'Folder'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getFolder()

  Calls: GetPictureManagerDetails
  Returned: Always
  Details: PictureManagerDetailLevel: none, ReturnPicture, ReturnAll

#    Returns: reference to an array  
                      of 'ns:PictureManagerFolderType'

=cut

sub getFolder {
  my $self = shift;
  return $self->_getDataTypeArray('Folder');
}


=head2 setKeepOriginal()

Whether to keep a copy of the original picture without resizing.
Default is false. true = keep originals.

#    Argument: 'xs:boolean'

=cut

sub setKeepOriginal {
  my $self = shift;
  $self->{'KeepOriginal'} = shift
}

=head2 isKeepOriginal()

  Calls: GetPictureManagerDetails
  Returned: Always
  Details: PictureManagerDetailLevel: none, ReturnPicture, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isKeepOriginal {
  my $self = shift;
  return $self->{'KeepOriginal'};
}


=head2 setStorageUsed()

The amount of storage already in use. Measured in bytes. Read-only value.

#    Argument: 'xs:int'

=cut

sub setStorageUsed {
  my $self = shift;
  $self->{'StorageUsed'} = shift
}

=head2 getStorageUsed()

  Calls: GetPictureManagerDetails
  Returned: Always
  Details: PictureManagerDetailLevel: none, ReturnSubscription, ReturnAll

#    Returns: 'xs:int'

=cut

sub getStorageUsed {
  my $self = shift;
  return $self->{'StorageUsed'};
}


=head2 setSubscriptionLevel()

The level of Picture Manager subscription. Each level has a monthly fee
and provides a certain amount of storage space.

#    Argument: 'ns:PictureManagerSubscriptionLevelCodeType'

=cut

sub setSubscriptionLevel {
  my $self = shift;
  $self->{'SubscriptionLevel'} = shift
}

=head2 getSubscriptionLevel()

  Calls: GetPictureManagerDetails
  Returned: Always
  Details: PictureManagerDetailLevel: none, ReturnSubscription, ReturnAll

#    Returns: 'ns:PictureManagerSubscriptionLevelCodeType'

=cut

sub getSubscriptionLevel {
  my $self = shift;
  return $self->{'SubscriptionLevel'};
}


=head2 setTotalStorageAvailable()

The amount of storage space remaining in the authenticated user's album.
Measured in bytes. Read-only value.

#    Argument: 'xs:int'

=cut

sub setTotalStorageAvailable {
  my $self = shift;
  $self->{'TotalStorageAvailable'} = shift
}

=head2 getTotalStorageAvailable()

  Calls: GetPictureManagerDetails
  Returned: Always
  Details: PictureManagerDetailLevel: none, ReturnSubscription, ReturnAll

#    Returns: 'xs:int'

=cut

sub getTotalStorageAvailable {
  my $self = shift;
  return $self->{'TotalStorageAvailable'};
}


=head2 setWatermarkEPS()

Whether to show the EPS watermark when photos are displayed.
Default is false. true = show.

#    Argument: 'xs:boolean'

=cut

sub setWatermarkEPS {
  my $self = shift;
  $self->{'WatermarkEPS'} = shift
}

=head2 isWatermarkEPS()

  Calls: GetPictureManagerDetails
  Returned: Always
  Details: PictureManagerDetailLevel: none, ReturnPicture, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isWatermarkEPS {
  my $self = shift;
  return $self->{'WatermarkEPS'};
}


=head2 setWatermarkUserID()

Whether to show the user ID watermark when photos are displayed.
Default is false. true = show.

#    Argument: 'xs:boolean'

=cut

sub setWatermarkUserID {
  my $self = shift;
  $self->{'WatermarkUserID'} = shift
}

=head2 isWatermarkUserID()

  Calls: GetPictureManagerDetails
  Returned: Always
  Details: PictureManagerDetailLevel: none, ReturnPicture, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isWatermarkUserID {
  my $self = shift;
  return $self->{'WatermarkUserID'};
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
