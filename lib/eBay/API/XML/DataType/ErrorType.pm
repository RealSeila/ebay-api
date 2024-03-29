#!/usr/bin/perl

package eBay::API::XML::DataType::ErrorType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ErrorType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ErrorType

=head1 DESCRIPTION

These are request errors (as opposed to system errors) that occur due to problems
with business-level data (e.g., an invalid combination of arguments) that
the application passed in.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ErrorType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::ErrorParameterType;
use eBay::API::XML::DataType::Enum::ErrorClassificationCodeType;
use eBay::API::XML::DataType::Enum::SeverityCodeType;


my @gaProperties = ( [ 'ErrorClassification', 'ns:ErrorClassificationCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::ErrorClassificationCodeType', '' ]
	, [ 'ErrorCode', 'xs:token', '', '', '' ]
	, [ 'ErrorParameters', 'ns:ErrorParameterType', '1'
	     ,'eBay::API::XML::DataType::ErrorParameterType', '1' ]
	, [ 'LongMessage', 'xs:string', '', '', '' ]
	, [ 'SeverityCode', 'ns:SeverityCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::SeverityCodeType', '' ]
	, [ 'ShortMessage', 'xs:string', '', '', '' ]
	, [ 'UserDisplayHint', 'xs:boolean', '', '', '' ]
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



=head2 setErrorClassification()

API errors are divided between two classes: system errors and request errors.

#    Argument: 'ns:ErrorClassificationCodeType'

=cut

sub setErrorClassification {
  my $self = shift;
  $self->{'ErrorClassification'} = shift
}

=head2 getErrorClassification()

  Calls:   Returned: Conditionally
  AllCalls: 

#    Returns: 'ns:ErrorClassificationCodeType'

=cut

sub getErrorClassification {
  my $self = shift;
  return $self->{'ErrorClassification'};
}


=head2 setErrorCode()

A unique code that identifies the particular error condition that occurred.
Your application can use error codes as identifiers
in your customized error-handling algorithms.

#    Argument: 'xs:token'

=cut

sub setErrorCode {
  my $self = shift;
  $self->{'ErrorCode'} = shift
}

=head2 getErrorCode()

  Calls:   Returned: Conditionally
  AllCalls: 

#    Returns: 'xs:token'

=cut

sub getErrorCode {
  my $self = shift;
  return $self->{'ErrorCode'};
}


=head2 setErrorParameters()

This optional element carries a list of context-specific
error variables that indicate details about the error condition.
These are useful when multiple instances of ErrorType are returned.

#    Argument: reference to an array  
                      of 'ns:ErrorParameterType'

=cut

sub setErrorParameters {
  my $self = shift;
  $self->{'ErrorParameters'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getErrorParameters()

  Calls:   Returned: Conditionally
  AllCalls: 

#    Returns: reference to an array  
                      of 'ns:ErrorParameterType'

=cut

sub getErrorParameters {
  my $self = shift;
  return $self->_getDataTypeArray('ErrorParameters');
}


=head2 setLongMessage()

A more detailed description of the condition that raised the error.

#    Argument: 'xs:string'

=cut

sub setLongMessage {
  my $self = shift;
  $self->{'LongMessage'} = shift
}

=head2 getLongMessage()

  Calls:   Returned: Conditionally
  AllCalls: 

#    Returns: 'xs:string'

=cut

sub getLongMessage {
  my $self = shift;
  return $self->{'LongMessage'};
}


=head2 setSeverityCode()

Indicates whether the error is a severe error (causing the request to fail)
or an informational error (a warning) that should be communicated to the user.

#    Argument: 'ns:SeverityCodeType'

=cut

sub setSeverityCode {
  my $self = shift;
  $self->{'SeverityCode'} = shift
}

=head2 getSeverityCode()

  Calls:   Returned: Conditionally
  AllCalls: 

#    Returns: 'ns:SeverityCodeType'

=cut

sub getSeverityCode {
  my $self = shift;
  return $self->{'SeverityCode'};
}


=head2 setShortMessage()

A brief description of the condition that raised the error.

#    Argument: 'xs:string'

=cut

sub setShortMessage {
  my $self = shift;
  $self->{'ShortMessage'} = shift
}

=head2 getShortMessage()

  Calls:   Returned: Conditionally
  AllCalls: 

#    Returns: 'xs:string'

=cut

sub getShortMessage {
  my $self = shift;
  return $self->{'ShortMessage'};
}


=head2 setUserDisplayHint()

Indicates whether the error message text is intended to be displayed to an end user
or intended only to be parsed by the application. If true or not present (the default),
the message text is intended for the end user. If false, the message text is intended for
the application, and the application should translate the error into a more appropriate message.
Only applicable to Item Specifics errors and warnings returned from listing requests.

#    Argument: 'xs:boolean'

=cut

sub setUserDisplayHint {
  my $self = shift;
  $self->{'UserDisplayHint'} = shift
}

=head2 isUserDisplayHint()

  Calls: AddItem
         AddLiveAuctionItem
         RelistItem
         ReviseItem
         ReviseLiveAuctionItem
         VerifyAddItem
  Returned: Conditionally

#    Returns: 'xs:boolean'

=cut

sub isUserDisplayHint {
  my $self = shift;
  return $self->{'UserDisplayHint'};
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
