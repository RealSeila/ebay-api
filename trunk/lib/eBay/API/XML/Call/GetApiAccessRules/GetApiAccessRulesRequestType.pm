#!/usr/bin/perl

package eBay::API::XML::Call::GetApiAccessRules::GetApiAccessRulesRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetApiAccessRulesRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetApiAccessRules::GetApiAccessRulesRequestType

=head1 DESCRIPTION

Reports how many calls your application has made and is allowed to make per
hour or day.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetApiAccessRules::GetApiAccessRulesRequestType inherits from the L<eBay::API::XML::RequestDataType> class

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
