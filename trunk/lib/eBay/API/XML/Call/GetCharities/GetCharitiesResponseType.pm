#!/usr/bin/perl

package eBay::API::XML::Call::GetCharities::GetCharitiesResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetCharitiesResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetCharities::GetCharitiesResponseType

=head1 DESCRIPTION

Contains information about charity nonprofit organizations that meet the
criteria specified in the request.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetCharities::GetCharitiesResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::CharityInfoType;


my @gaProperties = ( [ 'Charity', 'ns:CharityInfoType', '1'
	     ,'eBay::API::XML::DataType::CharityInfoType', '1' ]
                    );
push @gaProperties, @{eBay::API::XML::ResponseDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::ResponseDataType::getAttributesList()};

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



=head2 setCharity()

Contains information about charity nonprofit organizations that
meet the criteria specified in the request. One Charity node is
returned for each applicable nonprofit charity organization. The
CharityID value is returned as an id attribute of this node. If no
nonprofit charity organization is applicable, this node is not
returned.

#    Argument: reference to an array  
                      of 'ns:CharityInfoType'

=cut

sub setCharity {
  my $self = shift;
  $self->{'Charity'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getCharity()

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:CharityInfoType'

=cut

sub getCharity {
  my $self = shift;
  return $self->_getDataTypeArray('Charity');
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
