#!/usr/bin/perl

package eBay::API::XML::Call::GetUser::GetUserRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetUserRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetUser::GetUserRequestType

=head1 DESCRIPTION

Retrieves information about a user. Input fields control what user
data is returned. This includes the eBay user ID for the user
whose data is to be returned and the item ID for a listing to
indicate a transactional relationship between the requestor and
the target user.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetUser::GetUserRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::ItemIDType;


my @gaProperties = ( [ 'IncludeExpressRequirements', 'xs:boolean', '', '', '' ]
	, [ 'ItemID', 'ns:ItemIDType', ''
	     ,'eBay::API::XML::DataType::ItemIDType', '1' ]
	, [ 'UserID', 'xs:string', '', '', '' ]
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



=head2 setIncludeExpressRequirements()

Indicates if the response should include detailed information relating to
whether a user qualifies to list an item on Express. To list an item on Express, a user must qualify based on conditions described in the eBay Web Services Guide.

Default: false
SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=ExpressSellerCriteria
Title: Seller Criteria for eBay Express
DeprecationDetails: NoOp
DeprecationVersion: 579
UseInstead: 
  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setIncludeExpressRequirements {
  my $self = shift;
  $self->{'IncludeExpressRequirements'} = shift
}

=head2 isIncludeExpressRequirements()

#    Returns: 'xs:boolean'

=cut

sub isIncludeExpressRequirements {
  my $self = shift;
  return $self->{'IncludeExpressRequirements'};
}


=head2 setItemID()

Specifies the item ID for a successfully concluded listing in which
the requestor and target user were participants (one as seller and
the other as buyer). Necessary to return certain data (like an email
address). Not necessary if the requestor is retrieving their own data.
ItemID is an optional input.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

  RequiredInput: No
#    Argument: 'ns:ItemIDType'

=cut

sub setItemID {
  my $self = shift;
  $self->{'ItemID'} = shift
}

=head2 getItemID()

#    Returns: 'ns:ItemIDType'

=cut

sub getItemID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ItemID'
		,'eBay::API::XML::DataType::ItemIDType');
}


=head2 setUserID()

Specifies the user whose data will be returned by the call. UserID is
optional. If not specified, the user data returned is for
the requesting user (as specified with the eBayAuthToken).

  RequiredInput: No
#    Argument: 'xs:string'

=cut

sub setUserID {
  my $self = shift;
  $self->{'UserID'} = shift
}

=head2 getUserID()

#    Returns: 'xs:string'

=cut

sub getUserID {
  my $self = shift;
  return $self->{'UserID'};
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
