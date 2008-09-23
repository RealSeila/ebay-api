#!/usr/bin/perl

package eBay::API::XML::Call::GetStoreOptions;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetStoreOptions.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetStoreOptions

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetStoreOptions inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetStoreOptions::GetStoreOptionsRequestType;
use eBay::API::XML::Call::GetStoreOptions::GetStoreOptionsResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetStoreOptions';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetStoreOptions::GetStoreOptionsRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetStoreOptions::GetStoreOptionsResponseType';
}

#
# input properties
#



#
# output properties
#

=head2 getAdvancedThemeArray()

The current set of advances themes. Unlike basic themes, you
can use any color	scheme with an advanced theme. These themes 
are suitable for more advanced customization.

  Returned: Always
#    Returns: 'ns:StoreThemeArrayType'

=cut
       
sub getAdvancedThemeArray {
   my $self = shift;
   return $self->getResponseDataType()->getAdvancedThemeArray();
}

=head2 getBasicThemeArray()

The current set of basic themes. Each basic theme definition
specifies a valid color scheme for the theme.

  Returned: Always
#    Returns: 'ns:StoreThemeArrayType'

=cut
       
sub getBasicThemeArray {
   my $self = shift;
   return $self->getResponseDataType()->getBasicThemeArray();
}

=head2 getLogoArray()

The current set of Store logos. These logos are used in the Store header.

  Returned: Always
#    Returns: 'ns:StoreLogoArrayType'

=cut
       
sub getLogoArray {
   my $self = shift;
   return $self->getResponseDataType()->getLogoArray();
}

=head2 getMaxCategories()

The maximum number of categories in this store.

  Returned: Always
#    Returns: 'xs:int'

=cut
       
sub getMaxCategories {
   my $self = shift;
   return $self->getResponseDataType()->getMaxCategories();
}

=head2 getMaxCategoryLevels()

The maximum number of category levels in this store.

  Returned: Always
#    Returns: 'xs:int'

=cut
       
sub getMaxCategoryLevels {
   my $self = shift;
   return $self->getResponseDataType()->getMaxCategoryLevels();
}

=head2 getSubscriptionArray()

The current set of eBay Store subscription tiers and corresponding 
subscription prices.

  Returned: Always
#    Returns: 'ns:StoreSubscriptionArrayType'

=cut
       
sub getSubscriptionArray {
   my $self = shift;
   return $self->getResponseDataType()->getSubscriptionArray();
}





1;   