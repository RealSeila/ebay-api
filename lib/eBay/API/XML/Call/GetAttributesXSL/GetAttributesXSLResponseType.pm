#!/usr/bin/perl

package eBay::API::XML::Call::GetAttributesXSL::GetAttributesXSLResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetAttributesXSLResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetAttributesXSL::GetAttributesXSLResponseType

=head1 DESCRIPTION

Retrieves the Item Specifics SYI XSL stylesheet.Apply the stylesheet to the
XML returned from a call to GetAttributesCS or GetProductSellingPages to
render a form like the Item Specifics portion of eBay's Title and Description page.
See the Developer's Guide for an overview of Item Specifics and information
on working with the XSL.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetAttributesXSL::GetAttributesXSLResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

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

Child elements contain data related to one XSL file.
Multiple XSLFile objects can be returned. However, currently only
one is returned.

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
