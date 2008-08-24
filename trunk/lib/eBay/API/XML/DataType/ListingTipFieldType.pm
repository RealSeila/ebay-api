#!/usr/bin/perl

package eBay::API::XML::DataType::ListingTipFieldType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ListingTipFieldType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ListingTipFieldType

=head1 DESCRIPTION

(out) Identifies the item field that the tip relates to.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ListingTipFieldType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'CurrentFieldText', 'xs:string', '', '', '' ]
	, [ 'CurrentFieldValue', 'xs:string', '', '', '' ]
	, [ 'FieldTip', 'xs:string', '', '', '' ]
	, [ 'ListingTipFieldID', 'xs:string', '', '', '' ]
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



=head2 setCurrentFieldText()

A label used to preface the current value of a field. For example,
"Current value" would be the CurrentValueText in "Current value: 25".
If no label exists, this element is not returned.

MaxLength: 50

#    Argument: 'xs:string'

=cut

sub setCurrentFieldText {
  my $self = shift;
  $self->{'CurrentFieldText'} = shift
}

=head2 getCurrentFieldText()

  Calls: GetItemRecommendations
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getCurrentFieldText {
  my $self = shift;
  return $self->{'CurrentFieldText'};
}


=head2 setCurrentFieldValue()

Current value of the field (in the listing or in the candidate item) or meta-data about the value.
For example, if the tip is recommending a longer item title, the CurrentFieldValue might specify
the current length of the title. If no current value is available, this information is not returned.

#    Argument: 'xs:string'

=cut

sub setCurrentFieldValue {
  my $self = shift;
  $self->{'CurrentFieldValue'} = shift
}

=head2 getCurrentFieldValue()

  Calls: GetItemRecommendations
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getCurrentFieldValue {
  my $self = shift;
  return $self->{'CurrentFieldValue'};
}


=head2 setFieldTip()

Related text that appears near a field or at the top of the section within which
the field appears in the selling flow.

MaxLength: 125

#    Argument: 'xs:string'

=cut

sub setFieldTip {
  my $self = shift;
  $self->{'FieldTip'} = shift
}

=head2 getFieldTip()

  Calls: GetItemRecommendations
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getFieldTip {
  my $self = shift;
  return $self->{'FieldTip'};
}


=head2 setListingTipFieldID()

Identifier associated with the item field. Primarily for internal use. This value may change over time.

#    Argument: 'xs:string'

=cut

sub setListingTipFieldID {
  my $self = shift;
  $self->{'ListingTipFieldID'} = shift
}

=head2 getListingTipFieldID()

  Calls: GetItemRecommendations
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getListingTipFieldID {
  my $self = shift;
  return $self->{'ListingTipFieldID'};
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
