#!/usr/bin/perl

package eBay::API::XML::DataType::WantItNowPostType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. WantItNowPostType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::WantItNowPostType

=head1 DESCRIPTION

Contains the data describing a single Want It Now post. Buyers create Want It Now
posts to communicate to sellers specific requirements for items they would like to
buy.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::WantItNowPostType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::ItemIDType;
use eBay::API::XML::DataType::Enum::SiteCodeType;


my @gaProperties = ( [ 'CategoryID', 'xs:string', '', '', '' ]
	, [ 'Description', 'xs:string', '', '', '' ]
	, [ 'PostID', 'ns:ItemIDType', ''
	     ,'eBay::API::XML::DataType::ItemIDType', '1' ]
	, [ 'ResponseCount', 'xs:int', '', '', '' ]
	, [ 'Site', 'ns:SiteCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::SiteCodeType', '' ]
	, [ 'StartTime', 'xs:dateTime', '', '', '' ]
	, [ 'Title', 'xs:string', '', '', '' ]
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



=head2 setCategoryID()

ID of the category in which the Want It Now post is listed.

MaxLength: 10

#    Argument: 'xs:string'

=cut

sub setCategoryID {
  my $self = shift;
  $self->{'CategoryID'} = shift
}

=head2 getCategoryID()

  Calls: GetWantItNowSearchResults
  Returned: Conditionally

  Calls: GetWantItNowPost
  Returned: Always

#    Returns: 'xs:string'

=cut

sub getCategoryID {
  my $self = shift;
  return $self->{'CategoryID'};
}


=head2 setDescription()

Description of a Want It Now post. Description will not be returned for
GetWantItNowSearchResults.

#    Argument: 'xs:string'

=cut

sub setDescription {
  my $self = shift;
  $self->{'Description'} = shift
}

=head2 getDescription()

  Calls: GetWantItNowPost
  Returned: Always

#    Returns: 'xs:string'

=cut

sub getDescription {
  my $self = shift;
  return $self->{'Description'};
}


=head2 setPostID()

ID that uniquely identifies a Want It Now post.

#    Argument: 'ns:ItemIDType'

=cut

sub setPostID {
  my $self = shift;
  $self->{'PostID'} = shift
}

=head2 getPostID()

  Calls: GetWantItNowSearchResults
  Returned: Conditionally

  Calls: GetWantItNowPost
  Returned: Always

#    Returns: 'ns:ItemIDType'

=cut

sub getPostID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'PostID'
		,'eBay::API::XML::DataType::ItemIDType');
}


=head2 setResponseCount()

Number of responses for a Want It Now post. Sellers respond to a Want It
Now post by submitting an item number, so each response corresponds to an item
listing.

#    Argument: 'xs:int'

=cut

sub setResponseCount {
  my $self = shift;
  $self->{'ResponseCount'} = shift
}

=head2 getResponseCount()

  Calls: GetWantItNowSearchResults
  Returned: Conditionally

  Calls: GetWantItNowPost
  Returned: Always

#    Returns: 'xs:int'

=cut

sub getResponseCount {
  my $self = shift;
  return $self->{'ResponseCount'};
}


=head2 setSite()

Site where the Want It Now post is listed.

#    Argument: 'ns:SiteCodeType'

=cut

sub setSite {
  my $self = shift;
  $self->{'Site'} = shift
}

=head2 getSite()

  Calls: GetWantItNowSearchResults
  Returned: Conditionally

  Calls: GetWantItNowPost
  Returned: Always

#    Returns: 'ns:SiteCodeType'

=cut

sub getSite {
  my $self = shift;
  return $self->{'Site'};
}


=head2 setStartTime()

Date and time (in GMT) that a Want It Now post was added.

#    Argument: 'xs:dateTime'

=cut

sub setStartTime {
  my $self = shift;
  $self->{'StartTime'} = shift
}

=head2 getStartTime()

  Calls: GetWantItNowSearchResults
  Returned: Conditionally

  Calls: GetWantItNowPost
  Returned: Always

#    Returns: 'xs:dateTime'

=cut

sub getStartTime {
  my $self = shift;
  return $self->{'StartTime'};
}


=head2 setTitle()

Title of a Want It Now post.

#    Argument: 'xs:string'

=cut

sub setTitle {
  my $self = shift;
  $self->{'Title'} = shift
}

=head2 getTitle()

  Calls: GetWantItNowSearchResults
  Returned: Conditionally

  Calls: GetWantItNowPost
  Returned: Always

#    Returns: 'xs:string'

=cut

sub getTitle {
  my $self = shift;
  return $self->{'Title'};
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