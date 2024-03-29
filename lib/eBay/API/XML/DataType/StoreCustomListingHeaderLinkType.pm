#!/usr/bin/perl

package eBay::API::XML::DataType::StoreCustomListingHeaderLinkType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. StoreCustomListingHeaderLinkType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::StoreCustomListingHeaderLinkType

=head1 DESCRIPTION

Custom listing header link.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::StoreCustomListingHeaderLinkType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::Enum::StoreCustomListingHeaderLinkCodeType;


my @gaProperties = ( [ 'LinkID', 'xs:int', '', '', '' ]
	, [ 'LinkType', 'ns:StoreCustomListingHeaderLinkCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::StoreCustomListingHeaderLinkCodeType', '' ]
	, [ 'Order', 'xs:int', '', '', '' ]
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



=head2 setLinkID()

Link ID for the listing header link. The ID is used when the link
is a custom category or for a custom page, and it is not needed
when the LinkType property is "AboutMe" or "None".

  Calls: SetStore
  RequiredInput: Conditionally

#    Argument: 'xs:int'

=cut

sub setLinkID {
  my $self = shift;
  $self->{'LinkID'} = shift
}

=head2 getLinkID()

  Calls: GetStore
  Returned: Conditionally

#    Returns: 'xs:int'

=cut

sub getLinkID {
  my $self = shift;
  return $self->{'LinkID'};
}


=head2 setLinkType()

Type of link to include in the custom listing header.

  Calls: SetStore
  RequiredInput: Conditionally

#    Argument: 'ns:StoreCustomListingHeaderLinkCodeType'

=cut

sub setLinkType {
  my $self = shift;
  $self->{'LinkType'} = shift
}

=head2 getLinkType()

  Calls: GetStore
  Returned: Conditionally

#    Returns: 'ns:StoreCustomListingHeaderLinkCodeType'

=cut

sub getLinkType {
  my $self = shift;
  return $self->{'LinkType'};
}


=head2 setOrder()

Order in which to show the custom listing header link.

  Calls: SetStore
  RequiredInput: Conditionally

#    Argument: 'xs:int'

=cut

sub setOrder {
  my $self = shift;
  $self->{'Order'} = shift
}

=head2 getOrder()

  Calls: GetStore
  Returned: Conditionally

#    Returns: 'xs:int'

=cut

sub getOrder {
  my $self = shift;
  return $self->{'Order'};
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
