#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::ProductStateCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ProductStateCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::ProductStateCodeType

=head1 DESCRIPTION

State of a catalog product that may have been updated, replaced, marked for deletion,
or merged with another product..



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Update

This product's details have been updated.
If your application currently uses the product for listing or searching, 
we recommend that you check to make sure the product data still meets your needs.



=cut


use constant Update => scalar('Update');


=head2 UpdateMajor

This product has changed. This product has been mapped to a newer
product in the catalog that eBay (or Half.com) is currently using,
and its details have been updated based on the new catalog data.
The product reference ID remains the same
(but the longer product ID string may have changed).
If your application currently uses the product for listing or searching, 
we recommend that you check to make sure the product data still meets your needs.



=cut


use constant UpdateMajor => scalar('UpdateMajor');


=head2 UpdateNoDetails

This product was previously available in an earlier catalog, 
but it has not been mapped to a product in the catalog that eBay
is currently using. It can still be used to pre-fill listings, but 
it may contain fewer details than other products.
If your application currently uses the product for listing or searching, 
we recommend that you check to make sure the product data still meets your needs.
Not applicable to Half.com.



=cut


use constant UpdateNoDetails => scalar('UpdateNoDetails');


=head2 Merge

Some information in this product is scheduled to be merged into another product 
in the catalog that eBay (or Half.com) is currently using. This product may 
be removed from the system at any time.
If your application currently uses the product for listing or searching, 
we recommend that you update your application to use a product that is not 
scheduled to be merged or deleted.



=cut


use constant Merge => scalar('Merge');


=head2 Delete

This product is marked for deletion, and it will not be mapped to another product.
You cannot add or relist items that use products marked for deletion.
If your application currently uses the product for listing or searching, 
we recommend that you update your application to use a product that is not 
scheduled to be merged or deleted.



=cut


use constant Delete => scalar('Delete');


=head2 CustomCode

Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
