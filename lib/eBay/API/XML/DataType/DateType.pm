#!/usr/bin/perl

package eBay::API::XML::DataType::DateType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. DateType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::DateType

=head1 DESCRIPTION

Defines year, month, and day as individual components of a date.
Only applicable to use cases that support incomplete dates.
Otherwise, we use xs:dateTime (or xs:date, as appropriate).



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::DateType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'Day', 'xs:int', '', '', '' ]
	, [ 'Month', 'xs:int', '', '', '' ]
	, [ 'Year', 'xs:int', '', '', '' ]
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



=head2 setDay()

A calendar day (e.g., 2 or 02). For ticket searches,
Day is only valid if Month is also specified.

  Calls: GetSearchResults
  RequiredInput: No
  Max: 31
  Min: 1

#    Argument: 'xs:int'

=cut

sub setDay {
  my $self = shift;
  $self->{'Day'} = shift
}

=head2 getDay()

#    Returns: 'xs:int'

=cut

sub getDay {
  my $self = shift;
  return $self->{'Day'};
}


=head2 setMonth()

A calendar month (e.g., 2 or 02 for February).
For ticket searches, Month is required if
Day is specified.

  Calls: GetSearchResults
  RequiredInput: Conditionally
  Max: 12
  Min: 1

#    Argument: 'xs:int'

=cut

sub setMonth {
  my $self = shift;
  $self->{'Month'} = shift
}

=head2 getMonth()

#    Returns: 'xs:int'

=cut

sub getMonth {
  my $self = shift;
  return $self->{'Month'};
}


=head2 setYear()

A year in the form YYYY. For ticket searches on the US site,
only specify 2007 or 2008. If you specify any other year,
it is ignored.

  Calls: GetSearchResults
  RequiredInput: No

#    Argument: 'xs:int'

=cut

sub setYear {
  my $self = shift;
  $self->{'Year'} = shift
}

=head2 getYear()

#    Returns: 'xs:int'

=cut

sub getYear {
  my $self = shift;
  return $self->{'Year'};
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
