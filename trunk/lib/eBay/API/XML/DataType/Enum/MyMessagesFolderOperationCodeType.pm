#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::MyMessagesFolderOperationCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. MyMessagesFolderOperationCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::MyMessagesFolderOperationCodeType

=head1 DESCRIPTION

MyMessagesFolderOperationCodeType - Indicates the type of
operation to perform on a specified My Messsages folder.
Operations cannot be performed on the Inbox or Sent folders.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Display

If a folder has been removed, restores the specified folder
in My Messages. Because the Inbox and Sent folders cannot be
removed, they can also not be restored. Requires FolderName
as input.



=cut


use constant Display => scalar('Display');


=head2 Rename

Renames a specified folder. Inbox and Sent folders cannot be
renamed. To rename a folder, use FolderID to indicate the
folder to rename, and FolderName to indicate the new name.



=cut


use constant Rename => scalar('Rename');


=head2 Remove

Removes a specified folder. Inbox and Sent folders cannot be
removed. Removing a folder that is not empty returns an
error. Requires FolderID as input.



=cut


use constant Remove => scalar('Remove');


=head2 CustomCode

Reserved for future or internal use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
