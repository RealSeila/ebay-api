#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::PhotoDisplayCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. PhotoDisplayCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::PhotoDisplayCodeType

=head1 DESCRIPTION

Specifies the type of image display used in a listing. Some options are
only available if images are hosted through eBay Picture Services (EPS).
Cannot be used with Listing Designer layouts (specified in Item.ListingDesigner).



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 None

No special image display options. Valid for US Motors listings.



=cut


use constant None => scalar('None');


=head2 SlideShow

Display multiple pictures in a slideshow format. Only available for
site-hosted pictures. Deprecated with request version 381. Use
SiteHostedPictureShow or VendorHostedPictureShow instead. Not valid
for US Motors listings.



=cut


use constant SlideShow => scalar('SlideShow');


=head2 SuperSize

Increase the size of each image and allow buyers to enlarge images
further. Only available for site-hosted (EPS) images. Not valid for US Motors
listings. For all sites that do not automatically upgrade SuperSize to
PicturePack (see note below), specifying no SuperSize-qualified images is now
accepted in the request.
<br><br>
<span class="tablenote"><b>Note:</b>
SuperSize is automatically upgraded to PicturePack for the same SuperSize
fee on the US Motors Parts & Accessories Category and US (site ID 0)
and CA (site ID 2) and CAFR (site ID 210). This upgrade applies
only to EPS images (including Picture Manager images).
</span>
<br><br>



=cut


use constant SuperSize => scalar('SuperSize');


=head2 PicturePack

Increase the number of images displayed. Only available for
site-hosted images. Valid for US Motors. (Coming soon) For all sites
(including US	Motors) except for NL, specifying a minimum of one EPS image
or no SuperSize-qualified EPS images is now accepted in the request. For NL
(site ID 146), PicturePack will be replaced with SuperSize.



=cut


use constant PicturePack => scalar('PicturePack');


=head2 SiteHostedPictureShow

This value is no longer applicable. Formerly, the value displays
multiple, site-hosted pictures in a slideshow format.



=cut


use constant SiteHostedPictureShow => scalar('SiteHostedPictureShow');


=head2 VendorHostedPictureShow

This value is no longer applicable. Formerly, the value displays
multiple, vendor-hosted pictures in a slideshow format.
Not valid for US Motors listings.



=cut


use constant VendorHostedPictureShow => scalar('VendorHostedPictureShow');


=head2 SuperSizePictureShow

This value is no longer applicable. Use SuperSize instead.
Formerly, the value displays multiple, super-size, site-hosted pictures in a
slideshow format.
Valid for US Motors listings.



=cut


use constant SuperSizePictureShow => scalar('SuperSizePictureShow');


=head2 CustomCode

Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
