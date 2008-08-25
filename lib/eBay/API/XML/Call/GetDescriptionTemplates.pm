#!/usr/bin/perl

package eBay::API::XML::Call::GetDescriptionTemplates;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetDescriptionTemplates.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetDescriptionTemplates

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetDescriptionTemplates inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetDescriptionTemplates::GetDescriptionTemplatesRequestType;
use eBay::API::XML::Call::GetDescriptionTemplates::GetDescriptionTemplatesResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetDescriptionTemplates';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetDescriptionTemplates::GetDescriptionTemplatesRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetDescriptionTemplates::GetDescriptionTemplatesResponseType';
}

#
# input properties
#

=head2 setCategoryID()

The category for which to retrieve templates. Enter any
category ID, including Motors vehicle categories. This
is ignored if you also send MotorVehicles.

MaxLength: 10

  RequiredInput: No
#    Argument: 'xs:string'

=cut
       
sub setCategoryID {
   my $self   = shift;
   my $sCategoryID = shift;
   $self->getRequestDataType()->setCategoryID($sCategoryID);
}

=head2 setLastModifiedTime()

If specified, only those templates modified on or after the
specified date are returned. If not specified, all templates are returned.

  RequiredInput: No
#    Argument: 'xs:dateTime'

=cut
       
sub setLastModifiedTime {
   my $self   = shift;
   my $sLastModifiedTime = shift;
   $self->getRequestDataType()->setLastModifiedTime($sLastModifiedTime);
}

=head2 setMotorVehicles()

Indicates whether to retrieve templates for motor vehicle
categories for eBay Motors (site 100). If true, templates
are returned for motor vehicle categories. If false,
templates are returned for non-motor vehicle categories
such as Parts and Accessories. If included as an input field (whether true or false), this overrides any value provided for CategoryID.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut
       
sub setMotorVehicles {
   my $self   = shift;
   my $sMotorVehicles = shift;
   $self->getRequestDataType()->setMotorVehicles($sMotorVehicles);
}



#
# output properties
#

=head2 getDescriptionTemplate()

The information for one Theme or one Layout. There
can be multiple DescriptionTemplates.

  Returned: Always
#    Returns: reference to an array  
                      of 'ns:DescriptionTemplateType'

=cut
       
sub getDescriptionTemplate {
   my $self = shift;
   return $self->getResponseDataType()->getDescriptionTemplate();
}

=head2 getLayoutTotal()

The number of Layout templates returned (that is, the
number of DescriptionTemplates for which Type is "Layout").

  Returned: Always
#    Returns: 'xs:int'

=cut
       
sub getLayoutTotal {
   my $self = shift;
   return $self->getResponseDataType()->getLayoutTotal();
}

=head2 getObsoleteLayoutID()

The ID of a returned layout that is obsolete. There can be zero or more IDs.

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'xs:int'

=cut
       
sub getObsoleteLayoutID {
   my $self = shift;
   return $self->getResponseDataType()->getObsoleteLayoutID();
}

=head2 getObsoleteThemeID()

The ID of a returned theme that is obsolete. There can be zero or more IDs.

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'xs:int'

=cut
       
sub getObsoleteThemeID {
   my $self = shift;
   return $self->getResponseDataType()->getObsoleteThemeID();
}

=head2 getThemeGroup()

Data for one theme group. There can be multiple
ThemeGroups in the response.

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:ThemeGroupType'

=cut
       
sub getThemeGroup {
   my $self = shift;
   return $self->getResponseDataType()->getThemeGroup();
}

=head2 getThemeTotal()

The number of Theme templates returned (that is, the number
of DescriptionTemplates for which Type is "Theme").

  Returned: Always
#    Returns: 'xs:int'

=cut
       
sub getThemeTotal {
   my $self = shift;
   return $self->getResponseDataType()->getThemeTotal();
}





1;   
