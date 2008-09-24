#!/usr/bin/perl

package eBay::API::XML::Call::GetProductFinderXSL::GetProductFinderXSLRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetProductFinderXSLRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetProductFinderXSL::GetProductFinderXSLRequestType

=head1 DESCRIPTION

Retrieves the Product Finder XSL stylesheet. Apply the stylesheet
to the XML returned from a call to GetProductFinder to render a
form that lets a user form a multi-attribute query against eBay
catalog data. See the Developer's Guide for an overview of Pre-
filled Item Information and information on searching for catalog
products.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetProductFinderXSL::GetProductFinderXSLRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");



my @gaProperties = ( [ 'FileName', 'xs:string', '', '', '' ]
	, [ 'FileVersion', 'xs:string', '', '', '' ]
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



=head2 setFileName()

The name of the XSL file to retrieve. If not specified, the call
returns the latest versions of all available XSL files.
Currently, this call only retrieves the product_finder.xsl file.
FileName is an optional input.

  RequiredInput: No
#    Argument: 'xs:string'

=cut

sub setFileName {
  my $self = shift;
  $self->{'FileName'} = shift
}

=head2 getFileName()

#    Returns: 'xs:string'

=cut

sub getFileName {
  my $self = shift;
  return $self->{'FileName'};
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
  my $self = shift;
  $self->{'FileVersion'} = shift
}

=head2 getFileVersion()

#    Returns: 'xs:string'

=cut

sub getFileVersion {
  my $self = shift;
  return $self->{'FileVersion'};
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
