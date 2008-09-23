#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::ListingEnhancementsCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ListingEnhancementsCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::ListingEnhancementsCodeType

=head1 DESCRIPTION

ListingEnhancementsCodeType - Type declaration to be used by other
schema. Indicates optional featuring properties of an item.
Featuring properties make a listing stand out in a search or listing
page, or let the item be featured on the eBay home page.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Border

If specified, the seller wants the item to be displayed with a border that goes
around the item in search result pages that return multiple items.
The border differentiates the item from other items in the list.
Applicable listing fees apply.



=cut


use constant Border => scalar('Border');


=head2 BoldTitle

If specified, the seller wants the title for the item's listing to
be in boldface type. Applicable listing fees apply.
Does not affect the item subtitle (Item.SubTitle), if any.
Not applicable to eBay Motors.



=cut


use constant BoldTitle => scalar('BoldTitle');


=head2 Featured

Listing is a "Featured Plus" item.
The item will display prominently in the Featured Items section of its category list,
and it will stand out on search results pages. It will also display in the regular,
non-featured item list. Only available to users with a Feedback rating of 10 or greater.



=cut


use constant Featured => scalar('Featured');


=head2 Highlight

Listing is highlighted in a different color in lists.



=cut


use constant Highlight => scalar('Highlight');


=head2 HomePageFeatured

Listing will have a chance to rotate into a special display
on eBay's Home page. Your item is very likely to show up on the Home page,
although eBay does not guarantee that your item will be highlighted
in this way. This is the highest level of visibility on eBay.
<br><br>
Not applicable for eBay Motors (SiteId 100). In order to feature the listing
on eBay Motors home page, use PictureDetails.GalleryType.Featured instead. See
GalleryTypeCodeType for more information.



=cut


use constant HomePageFeatured => scalar('HomePageFeatured');


=head2 ProPackBundle

Listing is using ProPackBundle (a feature pack). Applies only to US and Canadian eBay motor vehicle sellers. Contains the BoldTitle, Border, Featured and Highlight features.



=cut


use constant ProPackBundle => scalar('ProPackBundle');


=head2 BasicUpgradePackBundle

No longer applicable to any site. Formerly, a feature pack
applicable to the Australia site (site ID 15, abbreviation AU) only.
Contained the Gallery and Subtitle features.



=cut


use constant BasicUpgradePackBundle => scalar('BasicUpgradePackBundle');


=head2 ValuePackBundle

Listing is using ValuePack bundle (a feature pack),
which combines the features Gallery, Subtitle, and Listing Designer for a discounted price. Support for this feature varies by site and category.
<br><br>
<span class="tablenote"><b>Note:</b>
As of 02-20-2008, the following sites offer free Gallery:
US (site ID 0), Parts & Accessories Category on US Motors (site ID 100),
CA (site ID 2), CAFR (site ID 210), FR (site ID 71) and NL (site ID 146).
Additionally, ES (site ID 186) and IT (site ID 101) offer free Gallery as of 03-03-2008.
<br><br>
On these sites (starting on the same production date), whenever ValuePackBundle is
selected in a request, the basic Gallery feature included in the Value Pack bundle is
now automatically upgraded to the Gallery Plus feature at no extra cost (see
Item.PictureDetails.GalleryType.Plus for more information on Gallery Plus).
<br><br>
If ValuePackBundle is selected and no Gallery picture is found, the
request is still accepted and the ValuePackBundle fee will still apply.
Whenever a listing with ValuePackBundle is created on a site that
offers free Gallery, the Gallery Plus upgrade will display on all
sites and categories that support ValuePackBundle.
<br><br>
Note that if Gallery Showcase is automatically included with
Gallery Plus, it will be extended to listings with ValuePackBundle
that upgrade Gallery to Gallery Plus (see
Item.PictureDetails.GalleryType.Plus for more information on Gallery Plus).
</span>



=cut


use constant ValuePackBundle => scalar('ValuePackBundle');


=head2 ProPackPlusBundle

Support for this feature varies by site and category.
A ProPackPlusBundle listing is using ProPackPlus bundle (a feature pack),
which combines the features of BoldTitle, Border, Highlight, Featured (which
is equivalent to a GalleryType value of Featured), and
Gallery, for a discounted price.
Note that if, for example, in AddItem, if you use ProPackPlusBundle and
a GalleryType value of Gallery, then the resulting item will have a GalleryType
value of Featured.



=cut


use constant ProPackPlusBundle => scalar('ProPackPlusBundle');


=head2 CustomCode

Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
