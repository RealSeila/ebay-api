#!/usr/bin/perl

package eBay::API::XML::DataType::Base64BinaryType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. Base64BinaryType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Base64BinaryType

=head1 DESCRIPTION

Used for storing an optional reference ID to the binary attachment



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::Base64BinaryType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'content', 'xs:base64Binary', '', '', '' ]
                    );
push @gaProperties, @{eBay::API::XML::BaseDataType::getPropertiesList()};

my @gaAttributes = ( [ 'contentType', 'xs:string', '', '', '' ]
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



=head2 setValue()

#    Argument: 'xs:base64Binary'

=cut

sub setValue {
  my $self = shift;
  $self->{'content'} = shift
}

=head2 getValue()

#    Returns: 'xs:base64Binary'

=cut

sub getValue {
  my $self = shift;
  return $self->{'content'};
}




=head2 setContentType()

Stores an optional reference ID to the binary attachment.

  Calls: UploadSiteHostedPictures
  RequiredInput: No

#    Argument: 'xs:string'

=cut

sub setContentType {
  my $self = shift;
  $self->{'contentType'} = shift
}

=head2 getContentType()

#    Returns: 'xs:string'

=cut

sub getContentType {
  my $self = shift;
  return $self->{'contentType'};
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
