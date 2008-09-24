#!/usr/bin/perl

package eBay::API::XML::Call::ReviseMyMessagesFolders;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ReviseMyMessagesFolders.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::ReviseMyMessagesFolders

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::ReviseMyMessagesFolders inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::ReviseMyMessagesFolders::ReviseMyMessagesFoldersRequestType;
use eBay::API::XML::Call::ReviseMyMessagesFolders::ReviseMyMessagesFoldersResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'ReviseMyMessagesFolders';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::ReviseMyMessagesFolders::ReviseMyMessagesFoldersRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::ReviseMyMessagesFolders::ReviseMyMessagesFoldersResponseType';
}

#
# input properties
#

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
   my $self   = shift;
   my $sFolderID = shift;
   $self->getRequestDataType()->setFolderID($sFolderID);
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
   my $self   = shift;
   my $sFolderName = shift;
   $self->getRequestDataType()->setFolderName($sFolderName);
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
   my $self   = shift;
   my $sOperation = shift;
   $self->getRequestDataType()->setOperation($sOperation);
}



#
# output properties
#





1;   
