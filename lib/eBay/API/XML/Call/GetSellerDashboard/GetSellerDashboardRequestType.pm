#!/usr/bin/perl

package eBay::API::XML::Call::GetSellerDashboard::GetSellerDashboardRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetSellerDashboardRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetSellerDashboard::GetSellerDashboardRequestType

=head1 DESCRIPTION

Retrieves a brief summary of the requester's status as an eBay seller. 
(The requester is the user identified by the user token you pass in the request.)<br>
<br>
This status information can help an eBay seller monitor their selling performance and
keep their account in good standing.<br>
<br>
To be eligible to view their Seller Dashboard, the user needs 10 or more  
Detailed Seller Ratings (across any of the four rating categories) within the last 12 months. 
If the user is not eligible, the call returns an error. <br>
<br>
The Seller Dashboard does not return the correct data in the Sandbox. Test this call
in production to get useful results.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetSellerDashboard::GetSellerDashboardRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");



my @gaProperties = ( 
                    );
push @gaProperties, @{eBay::API::XML::RequestDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::RequestDataType::getAttributesList()};

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
