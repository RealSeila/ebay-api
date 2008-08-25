#!/usr/bin/perl

package eBay::API::XML::Call::GetMemberMessages::GetMemberMessagesResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetMemberMessagesResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetMemberMessages::GetMemberMessagesResponseType

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetMemberMessages::GetMemberMessagesResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::MemberMessageExchangeArrayType;
use eBay::API::XML::DataType::PaginationResultType;


my @gaProperties = ( [ 'HasMoreItems', 'xs:boolean', '', '', '' ]
	, [ 'MemberMessage', 'ns:MemberMessageExchangeArrayType', ''
	     ,'eBay::API::XML::DataType::MemberMessageExchangeArrayType', '1' ]
	, [ 'PaginationResult', 'ns:PaginationResultType', ''
	     ,'eBay::API::XML::DataType::PaginationResultType', '1' ]
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



=head2 setHasMoreItems()

Specifies whether the response has more items.

#    Argument: 'xs:boolean'

=cut

sub setHasMoreItems {
  my $self = shift;
  $self->{'HasMoreItems'} = shift
}

=head2 isHasMoreItems()

  Returned: Always
#    Returns: 'xs:boolean'

=cut

sub isHasMoreItems {
  my $self = shift;
  return $self->{'HasMoreItems'};
}


=head2 setMemberMessage()

The returned member messages. Returned if messages that meet the request criteria exist.

#    Argument: 'ns:MemberMessageExchangeArrayType'

=cut

sub setMemberMessage {
  my $self = shift;
  $self->{'MemberMessage'} = shift
}

=head2 getMemberMessage()

  Returned: Conditionally
#    Returns: 'ns:MemberMessageExchangeArrayType'

=cut

sub getMemberMessage {
  my $self = shift;
  return $self->_getDataTypeInstance( 'MemberMessage'
		,'eBay::API::XML::DataType::MemberMessageExchangeArrayType');
}


=head2 setPaginationResult()

Shows the pagination of data returned by requests.

#    Argument: 'ns:PaginationResultType'

=cut

sub setPaginationResult {
  my $self = shift;
  $self->{'PaginationResult'} = shift
}

=head2 getPaginationResult()

  Returned: Always
#    Returns: 'ns:PaginationResultType'

=cut

sub getPaginationResult {
  my $self = shift;
  return $self->_getDataTypeInstance( 'PaginationResult'
		,'eBay::API::XML::DataType::PaginationResultType');
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
