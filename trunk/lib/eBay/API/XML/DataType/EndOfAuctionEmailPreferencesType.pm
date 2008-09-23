#!/usr/bin/perl

package eBay::API::XML::DataType::EndOfAuctionEmailPreferencesType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. EndOfAuctionEmailPreferencesType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::EndOfAuctionEmailPreferencesType

=head1 DESCRIPTION

Contains the seller's preferences for the end of auction (EOA) email to the buyer.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::EndOfAuctionEmailPreferencesType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::Enum::EndOfAuctionLogoTypeCodeType;


my @gaProperties = ( [ 'CopyEmail', 'xs:boolean', '', '', '' ]
	, [ 'EmailCustomized', 'xs:boolean', '', '', '' ]
	, [ 'LogoCustomized', 'xs:boolean', '', '', '' ]
	, [ 'LogoType', 'ns:EndOfAuctionLogoTypeCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::EndOfAuctionLogoTypeCodeType', '' ]
	, [ 'LogoURL', 'xs:anyURI', '', '', '' ]
	, [ 'TemplateText', 'xs:string', '', '', '' ]
	, [ 'TextCustomized', 'xs:boolean', '', '', '' ]
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



=head2 setCopyEmail()

Indicates whether or not the seller wishes to receive a copy of the customized
email sent to the winning buyer.

  Calls: SetUserPreferences
  RequiredInput: No

#    Argument: 'xs:boolean'

=cut

sub setCopyEmail {
  my $self = shift;
  $self->{'CopyEmail'} = shift
}

=head2 isCopyEmail()

  Calls: GetUserPreferences
  Returned: Conditionally

#    Returns: 'xs:boolean'

=cut

sub isCopyEmail {
  my $self = shift;
  return $self->{'CopyEmail'};
}


=head2 setEmailCustomized()

Indicates whether or not the seller wishes to send a customized email to winning buyers.

  Calls: SetUserPreferences
  RequiredInput: No

#    Argument: 'xs:boolean'

=cut

sub setEmailCustomized {
  my $self = shift;
  $self->{'EmailCustomized'} = shift
}

=head2 isEmailCustomized()

  Calls: GetUserPreferences
  Returned: Conditionally

#    Returns: 'xs:boolean'

=cut

sub isEmailCustomized {
  my $self = shift;
  return $self->{'EmailCustomized'};
}


=head2 setLogoCustomized()

Indicates whether or not the seller wishes to include a logo in the customized email.

  Calls: SetUserPreferences
  RequiredInput: No

#    Argument: 'xs:boolean'

=cut

sub setLogoCustomized {
  my $self = shift;
  $self->{'LogoCustomized'} = shift
}

=head2 isLogoCustomized()

  Calls: GetUserPreferences
  Returned: Conditionally

#    Returns: 'xs:boolean'

=cut

sub isLogoCustomized {
  my $self = shift;
  return $self->{'LogoCustomized'};
}


=head2 setLogoType()

The type of logo to include in the customized email.

  Calls: SetUserPreferences
  RequiredInput: No
  AllValuesExcept: None

#    Argument: 'ns:EndOfAuctionLogoTypeCodeType'

=cut

sub setLogoType {
  my $self = shift;
  $self->{'LogoType'} = shift
}

=head2 getLogoType()

  Calls: GetUserPreferences
  Returned: Conditionally

#    Returns: 'ns:EndOfAuctionLogoTypeCodeType'

=cut

sub getLogoType {
  my $self = shift;
  return $self->{'LogoType'};
}


=head2 setLogoURL()

The URL of the logo to include in the customized email.

  Calls: SetUserPreferences
  RequiredInput: No

#    Argument: 'xs:anyURI'

=cut

sub setLogoURL {
  my $self = shift;
  $self->{'LogoURL'} = shift
}

=head2 getLogoURL()

  Calls: GetUserPreferences
  Returned: Conditionally

#    Returns: 'xs:anyURI'

=cut

sub getLogoURL {
  my $self = shift;
  return $self->{'LogoURL'};
}


=head2 setTemplateText()

The text of the custom message for the end of auction (for auctions) or end of
transaction (for Buy It Now) emails.

  Calls: SetUserPreferences
  RequiredInput: No

#    Argument: 'xs:string'

=cut

sub setTemplateText {
  my $self = shift;
  $self->{'TemplateText'} = shift
}

=head2 getTemplateText()

  Calls: GetUserPreferences
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getTemplateText {
  my $self = shift;
  return $self->{'TemplateText'};
}


=head2 setTextCustomized()

Indicates whether or not the text of the customized message will be customized.

  Calls: SetUserPreferences
  RequiredInput: No

#    Argument: 'xs:boolean'

=cut

sub setTextCustomized {
  my $self = shift;
  $self->{'TextCustomized'} = shift
}

=head2 isTextCustomized()

  Calls: GetUserPreferences
  Returned: Conditionally

#    Returns: 'xs:boolean'

=cut

sub isTextCustomized {
  my $self = shift;
  return $self->{'TextCustomized'};
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
