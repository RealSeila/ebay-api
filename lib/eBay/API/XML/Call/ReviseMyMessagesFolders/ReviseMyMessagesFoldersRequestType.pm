#!/usr/bin/perl

package eBay::API::XML::Call::ReviseMyMessagesFolders::ReviseMyMessagesFoldersRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ReviseMyMessagesFoldersRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::ReviseMyMessagesFolders::ReviseMyMessagesFoldersRequestType

=head1 DESCRIPTION

Renames, removes, or restores specified My Messages folders for
a given user.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::ReviseMyMessagesFolders::ReviseMyMessagesFoldersRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::Enum::MyMessagesFolderOperationCodeType;


my @gaProperties = ( [ 'FolderID', 'xs:long', '1', '', '' ]
	, [ 'FolderName', 'xs:string', '1', '', '' ]
	, [ 'Operation', 'ns:MyMessagesFolderOperationCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::MyMessagesFolderOperationCodeType', '' ]
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



=head2 setFolderID()

An ID that uniquely identifies the My Messages
folder to perform the operation on. This value is set by
eBay and cannot be changed. Retrieve FolderIDs
by calling GetMyMessages with a DetailLevel of
ReturnSummary. Inbox is FolderID = 0, and Sent is
FolderID = 1.

  RequiredInput: Yes
#    Argument: reference to an array  
                      of 'xs:long'

=cut

sub setFolderID {
  my $self = shift;
  $self->{'FolderID'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getFolderID()

#    Returns: reference to an array  
                      of 'xs:long'

=cut

sub getFolderID {
  my $self = shift;
  return $self->_getDataTypeArray('FolderID');
}


=head2 setFolderName()

The name of a specified My Messages folder. Depending
on the specified Operation, the value is an existing
folder name or a new folder name. Retrieve existing
FolderNames by calling GetMyMessages with a DetailLevel
of ReturnSummary. Inbox is FolderID = 0, and Sent is
FolderID = 1.

  RequiredInput: Conditionally
#    Argument: reference to an array  
                      of 'xs:string'

=cut

sub setFolderName {
  my $self = shift;
  $self->{'FolderName'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getFolderName()

#    Returns: reference to an array  
                      of 'xs:string'

=cut

sub getFolderName {
  my $self = shift;
  return $self->_getDataTypeArray('FolderName');
}


=head2 setOperation()

Indicates the type of operation to perform on a
specified My Messages folder. Operations include
renaming, removing, and restoring folders. Operations
cannot be performed on the Inbox and Sent folders.

  RequiredInput: Yes
#    Argument: 'ns:MyMessagesFolderOperationCodeType'

=cut

sub setOperation {
  my $self = shift;
  $self->{'Operation'} = shift
}

=head2 getOperation()

#    Returns: 'ns:MyMessagesFolderOperationCodeType'

=cut

sub getOperation {
  my $self = shift;
  return $self->{'Operation'};
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
