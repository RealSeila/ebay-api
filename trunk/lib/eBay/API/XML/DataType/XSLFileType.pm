#!/usr/bin/perl

package eBay::API::XML::DataType::XSLFileType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. XSLFileType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::XSLFileType

=head1 DESCRIPTION

Describes an XSL file that would be returned from an Item Specifics or Pre-filled
Item Information meta-data call (such as GetAttributesXSL or GetProductFinderXSL).



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::XSLFileType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'FileContent', 'xs:string', '', '', '' ]
	, [ 'FileName', 'xs:string', '', '', '' ]
	, [ 'FileVersion', 'xs:string', '', '', '' ]
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



=head2 setFileContent()

Contains a MIME base-64-encoded representation of the XSL file.
See the eBay Web Services Guide for information on decoding
the XSL stylesheet file. If no XSL file is available (or if you passed no detail level),
this property is empty or not returned.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=AttrXSLOverview
Title: Working with Attribute XSL Stylesheets

#    Argument: 'xs:string'

=cut

sub setFileContent {
  my $self = shift;
  $self->{'FileContent'} = shift
}

=head2 getFileContent()

  Calls: GetAttributesXSL
  Returned: Always
  Details: DetailLevel: ReturnAll
  SeeLink: HASH(0x47f0738)
           HASH(0x47f08a0)


  Calls: GetProductFinderXSL
  Returned: Always
  Details: DetailLevel: ReturnAll
  SeeLink: HASH(0x47f0be8)
           HASH(0x47f0d50)


#    Returns: 'xs:string'

=cut

sub getFileContent {
  my $self = shift;
  return $self->{'FileContent'};
}


=head2 setFileName()

The name of the XSL file. Store this information to use it
as input to the call in the future.

#    Argument: 'xs:string'

=cut

sub setFileName {
  my $self = shift;
  $self->{'FileName'} = shift
}

=head2 getFileName()

  Calls: GetAttributesXSL
         GetProductFinderXSL
  Returned: Always
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:string'

=cut

sub getFileName {
  my $self = shift;
  return $self->{'FileName'};
}


=head2 setFileVersion()

The version number of the XSL file. Store this information to use it
as input to the call in the future. To get the current version value without
retrieving the XSL file, do not pass DetailLevel in the request.

#    Argument: 'xs:string'

=cut

sub setFileVersion {
  my $self = shift;
  $self->{'FileVersion'} = shift
}

=head2 getFileVersion()

  Calls: GetAttributesXSL
         GetProductFinderXSL
  Returned: Always
  Details: DetailLevel: none, ReturnAll

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