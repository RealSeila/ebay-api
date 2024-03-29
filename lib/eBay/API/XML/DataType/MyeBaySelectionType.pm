#!/usr/bin/perl

package eBay::API::XML::DataType::MyeBaySelectionType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. MyeBaySelectionType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::MyeBaySelectionType

=head1 DESCRIPTION

Specifies how the result list for My eBay features such as favorite searches,
favorite sellers, and second chance offers should be returned.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::MyeBaySelectionType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::Enum::SortOrderCodeType;


my @gaProperties = ( [ 'Include', 'xs:boolean', '', '', '' ]
	, [ 'MaxResults', 'xs:int', '', '', '' ]
	, [ 'Sort', 'ns:SortOrderCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::SortOrderCodeType', '' ]
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



=head2 setInclude()

Specifies whether to include a container in the response.
Required if you do not specify any other tags to filter the
result list. If so, the list is returned according to
the default values. Ignored if you specify at least
one other tag for the result list.

  Calls: GetMyeBayBuying
  RequiredInput: No

#    Argument: 'xs:boolean'

=cut

sub setInclude {
  my $self = shift;
  $self->{'Include'} = shift
}

=head2 isInclude()

#    Returns: 'xs:boolean'

=cut

sub isInclude {
  my $self = shift;
  return $self->{'Include'};
}


=head2 setMaxResults()

Specifies the maximum number of items in the returned list.
If not specified, returns all items in the list.

  Calls: GetMyeBayBuying
  RequiredInput: No

#    Argument: 'xs:int'

=cut

sub setMaxResults {
  my $self = shift;
  $self->{'MaxResults'} = shift
}

=head2 getMaxResults()

#    Returns: 'xs:int'

=cut

sub getMaxResults {
  my $self = shift;
  return $self->{'MaxResults'};
}


=head2 setSort()

Specifies the result sort order. Default is Ascending.

  Calls: GetMyeBayBuying
  RequiredInput: No

#    Argument: 'ns:SortOrderCodeType'

=cut

sub setSort {
  my $self = shift;
  $self->{'Sort'} = shift
}

=head2 getSort()

#    Returns: 'ns:SortOrderCodeType'

=cut

sub getSort {
  my $self = shift;
  return $self->{'Sort'};
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
