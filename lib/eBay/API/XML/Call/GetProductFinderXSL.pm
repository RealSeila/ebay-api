#!/usr/bin/perl

package eBay::API::XML::Call::GetProductFinderXSL;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetProductFinderXSL.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetProductFinderXSL

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetProductFinderXSL inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetProductFinderXSL::GetProductFinderXSLRequestType;
use eBay::API::XML::Call::GetProductFinderXSL::GetProductFinderXSLResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetProductFinderXSL';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetProductFinderXSL::GetProductFinderXSLRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetProductFinderXSL::GetProductFinderXSLResponseType';
}

#
# input properties
#

=head2 setFileName()

The name of the XSL file to retrieve. If not specified, the call
returns the latest versions of all available XSL files.
Currently, this call only retrieves the product_finder.xsl file.
FileName is an optional input.

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
If not specified, the call returns the latest versions of all
available XSL files that could be returned by the call.
(Currently, this call only retrieves the product_finder.xsl file.)
This is not a filter for retrieving changes to the XSL file.

  RequiredInput: No
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

Child elements specify data related to one XSL file.
In theory, multiple XSLFile objects can be returned.
Currently, this call only retrieves the product_finder.xsl file.

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