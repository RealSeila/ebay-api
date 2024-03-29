#!/usr/bin/perl

package eBay::API::XML::DataType::PictureManagerFolderType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. PictureManagerFolderType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::PictureManagerFolderType

=head1 DESCRIPTION

A folder in the authenticated user's album. By default, all folders and their pictures are
returned. If a folder ID is specified, the folders' metadata and contents are returned.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::PictureManagerFolderType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::PictureManagerPictureType;


my @gaProperties = ( [ 'FolderID', 'xs:int', '', '', '' ]
	, [ 'Name', 'xs:string', '', '', '' ]
	, [ 'Picture', 'ns:PictureManagerPictureType', '1'
	     ,'eBay::API::XML::DataType::PictureManagerPictureType', '1' ]
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



=head2 setFolderID()

The ID of the folder.

  Calls: SetPictureManagerDetails
  RequiredInput: Yes

#    Argument: 'xs:int'

=cut

sub setFolderID {
  my $self = shift;
  $self->{'FolderID'} = shift
}

=head2 getFolderID()

  Calls: GetPictureManagerDetails
  Returned: Always
  Details: PictureManagerDetailLevel: none, ReturnPicture, ReturnAll

#    Returns: 'xs:int'

=cut

sub getFolderID {
  my $self = shift;
  return $self->{'FolderID'};
}


=head2 setName()

The name of the folder.

MaxLength: 55

  Calls: SetPictureManagerDetails
  RequiredInput: Yes

#    Argument: 'xs:string'

=cut

sub setName {
  my $self = shift;
  $self->{'Name'} = shift
}

=head2 getName()

  Calls: GetPictureManagerDetails
  Returned: Always
  Details: PictureManagerDetailLevel: none, ReturnPicture, ReturnAll

#    Returns: 'xs:string'

=cut

sub getName {
  my $self = shift;
  return $self->{'Name'};
}


=head2 setPicture()

A picture within the folder, identified by a name, date, URL, and other metadata.

  Calls: SetPictureManagerDetails
  RequiredInput: Conditionally

#    Argument: reference to an array  
                      of 'ns:PictureManagerPictureType'

=cut

sub setPicture {
  my $self = shift;
  $self->{'Picture'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getPicture()

  Calls: GetPictureManagerDetails
  Returned: Conditionally
  Details: PictureManagerDetailLevel: none, ReturnPicture, ReturnAll

#    Returns: reference to an array  
                      of 'ns:PictureManagerPictureType'

=cut

sub getPicture {
  my $self = shift;
  return $self->_getDataTypeArray('Picture');
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
