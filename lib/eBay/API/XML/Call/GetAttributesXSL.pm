#!/usr/bin/perl

package eBay::API::XML::Call::GetAttributesXSL;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetAttributesXSL.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetAttributesXSL

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetAttributesXSL inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetAttributesXSL::GetAttributesXSLRequestType;
use eBay::API::XML::Call::GetAttributesXSL::GetAttributesXSLResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetAttributesXSL';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetAttributesXSL::GetAttributesXSLRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetAttributesXSL::GetAttributesXSLResponseType';
}

#
# input properties
#

=head2 setFileName()

The name of the XSL file to retrieve. If not specified, the call
returns the latest versions of all available XSL files.
FileName is an optional input. Valid values<br>
<br>
syi_attributes.xsl

  RequiredInput: No
#    Argument: 'xs:string'

=cut
       
sub setFileName {
   my $self   = shift;
   my $sFileName = shift;
   $self->getRequestDataType()->setFileName($sFileName);
}

=head2 setFileVersion()

The desired version of the XSL file. Required if FileName is specified.
If not specified, the call returns the latest version of the file.
(This is not a filter for retrieving changes to the XSL file.)

  RequiredInput: Conditionally
#    Argument: 'xs:string'

=cut
       
sub setFileVersion {
   my $self   = shift;
   my $sFileVersion = shift;
   $self->getRequestDataType()->setFileVersion($sFileVersion);
}



#
# output properties
#

=head2 getXSLFile()

Child elements contain data related to one XSL file.
Multiple XSLFile objects can be returned. However, currently only
one is returned.

  Returned: Always
  Details: DetailLevel: none, ReturnAll
#    Returns: reference to an array  
                      of 'ns:XSLFileType'

=cut
       
sub getXSLFile {
   my $self = shift;
   return $self->getResponseDataType()->getXSLFile();
}





1;   
