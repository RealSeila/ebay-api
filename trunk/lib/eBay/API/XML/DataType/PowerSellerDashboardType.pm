#!/usr/bin/perl

package eBay::API::XML::DataType::PowerSellerDashboardType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. PowerSellerDashboardType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::PowerSellerDashboardType

=head1 DESCRIPTION

Provides information about your PowerSeller status.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::PowerSellerDashboardType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::SellerDashboardAlertType;
use eBay::API::XML::DataType::Enum::SellerLevelCodeType;


my @gaProperties = ( [ 'Alert', 'ns:SellerDashboardAlertType', '1'
	     ,'eBay::API::XML::DataType::SellerDashboardAlertType', '1' ]
	, [ 'Level', 'ns:SellerLevelCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::SellerLevelCodeType', '' ]
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



=head2 setAlert()

A message to help you understand your PowerSeller status. 
If you have policy violations, it is a good idea to check to see 
the policies you violated and to take steps to improve your selling practices.
Violations can result in listing cancellations, restrictions on your account,
and loss of PowerSeller status and privileges.

#    Argument: reference to an array  
                      of 'ns:SellerDashboardAlertType'

=cut

sub setAlert {
  my $self = shift;
  $self->{'Alert'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getAlert()

  Calls: GetSellerDashboard
  Returned: Conditionally

#    Returns: reference to an array  
                      of 'ns:SellerDashboardAlertType'

=cut

sub getAlert {
  my $self = shift;
  return $self->_getDataTypeArray('Alert');
}


=head2 setLevel()

Your eBay PowerSeller tier. PowerSellers are distinguished in 5 tiers 
based on average monthly sales. Benefits and services vary for each tier. 
eBay calculates eligibility for each tier monthly.

SeeLink: URL: http://pages.ebay.com/services/buyandsell/powerseller/criteria.html
Title: eBay US PowerSeller Requirements and Levels

#    Argument: 'ns:SellerLevelCodeType'

=cut

sub setLevel {
  my $self = shift;
  $self->{'Level'} = shift
}

=head2 getLevel()

  Calls: GetSellerDashboard
  Returned: Conditionally

#    Returns: 'ns:SellerLevelCodeType'

=cut

sub getLevel {
  my $self = shift;
  return $self->{'Level'};
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
