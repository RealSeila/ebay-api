#!/usr/bin/perl

package eBay::API::XML::DataType::SellerAccountDashboardType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SellerAccountDashboardType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::SellerAccountDashboardType

=head1 DESCRIPTION

Container for fields related to seller account.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::SellerAccountDashboardType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::SellerDashboardAlertType;
use eBay::API::XML::DataType::Enum::SellerAccountStatusCodeType;


my @gaProperties = ( [ 'Alert', 'ns:SellerDashboardAlertType', '1'
	     ,'eBay::API::XML::DataType::SellerDashboardAlertType', '1' ]
	, [ 'Status', 'ns:SellerAccountStatusCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::SellerAccountStatusCodeType', '' ]
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

A message to help you understand your account status.

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


=head2 setStatus()

Indicates your account status. This helps you understand if you are
making timely payments or if your account is at risk of restrictions
because of late payments. For more details about your account,
you can go to your Seller Account page on the eBay site (login to My eBay), 
or you can call GetAccount.

SeeLink: URL: GetAccount.html
Title: GetAccount

#    Argument: 'ns:SellerAccountStatusCodeType'

=cut

sub setStatus {
  my $self = shift;
  $self->{'Status'} = shift
}

=head2 getStatus()

  Calls: GetSellerDashboard
  Returned: Conditionally

#    Returns: 'ns:SellerAccountStatusCodeType'

=cut

sub getStatus {
  my $self = shift;
  return $self->{'Status'};
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
