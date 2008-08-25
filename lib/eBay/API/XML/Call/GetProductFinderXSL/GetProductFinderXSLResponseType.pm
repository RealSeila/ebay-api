#!/usr/bin/perl

package eBay::API::XML::Call::GetProductFinderXSL::GetProductFinderXSLResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetProductFinderXSLResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetProductFinderXSL::GetProductFinderXSLResponseType

=head1 DESCRIPTION

Retrieves the Product Finder XSL stylesheet. Apply the stylesheet to the
XML returned from a call to GetProductFinder to
render a form that lets a user form a multi-attribute query against
eBay catalog data.
See the Developer's Guide for an overview of Pre-filled Item Information
and information on searching for catalog products.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetProductFinderXSL::GetProductFinderXSLResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::XSLFileType;


my @gaProperties = ( [ 'XSLFile', 'ns:XSLFileType', '1'
	     ,'eBay::API::XML::DataType::XSLFileType', '1' ]
                    );
push @gaProperties, @{eBay::API::XML::ResponseDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::ResponseDataType::getAttributesList()};

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



=head2 setXSLFile()

Child elements specify data related to one XSL file.
In theory, multiple XSLFile objects can be returned.
Currently, this call only retrieves the product_finder.xsl file.

#    Argument: reference to an array  
                      of 'ns:XSLFileType'

=cut

sub setXSLFile {
  my $self = shift;
  $self->{'XSLFile'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getXSLFile()

  Returned: Always
  Details: DetailLevel: none, ReturnAll
#    Returns: reference to an array  
                      of 'ns:XSLFileType'

=cut

sub getXSLFile {
  my $self = shift;
  return $self->_getDataTypeArray('XSLFile');
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
