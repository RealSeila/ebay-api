#!/usr/bin/perl

package eBay::API::XML::DataType::ReasonCodeDetailType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ReasonCodeDetailType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ReasonCodeDetailType

=head1 DESCRIPTION

A container for VeRO reason code details.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ReasonCodeDetailType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'BriefText', 'xs:string', '', '', '' ]
	, [ 'DetailedText', 'xs:string', '', '', '' ]
                    );
push @gaProperties, @{eBay::API::XML::BaseDataType::getPropertiesList()};

my @gaAttributes = ( [ 'codeID', 'xs:long', '', '', '' ]
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



=head2 setBriefText()

The short description of the infringement associated with the reason code ID.

#    Argument: 'xs:string'

=cut

sub setBriefText {
  my $self = shift;
  $self->{'BriefText'} = shift
}

=head2 getBriefText()

  Calls: GetVeROReasonCodeDetails
  Returned: Always

#    Returns: 'xs:string'

=cut

sub getBriefText {
  my $self = shift;
  return $self->{'BriefText'};
}


=head2 setDetailedText()

The long description of the infringement associated with the reason code ID.

#    Argument: 'xs:string'

=cut

sub setDetailedText {
  my $self = shift;
  $self->{'DetailedText'} = shift
}

=head2 getDetailedText()

  Calls: GetVeROReasonCodeDetails
  Returned: Always

#    Returns: 'xs:string'

=cut

sub getDetailedText {
  my $self = shift;
  return $self->{'DetailedText'};
}




=head2 setCodeID()

A unique identifier assigned to a reason code.

Max: Default: Min: 
#    Argument: 'xs:long'

=cut

sub setCodeID {
  my $self = shift;
  $self->{'codeID'} = shift
}

=head2 getCodeID()

  Calls: GetVeROReasonCodeDetails
  Returned: Always

#    Returns: 'xs:long'

=cut

sub getCodeID {
  my $self = shift;
  return $self->{'codeID'};
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
