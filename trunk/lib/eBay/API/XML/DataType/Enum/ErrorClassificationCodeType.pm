#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::ErrorClassificationCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ErrorClassificationCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::ErrorClassificationCodeType

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 RequestError

An error has occurred either as a result of a problem in the sending
application or because the application's end-user has attempted to submit
invalid data (or missing data). In these cases, do not retry the request. The
problem must be corrected before the request can be made again. If the problem
is due to something in the application (such as a missing required field), the
application must be changed. If the problem is a result of end-user data, the
application must alert the end-user to the problem and provide the means for
the end-user to correct the data. Once the problem in the application or data
is resolved, resend the request to eBay with the corrected data.



=cut


use constant RequestError => scalar('RequestError');


=head2 SystemError

Indicates that an error has occurred on the eBay system side, such as a
database or server down. An application can retry the request as-is a
reasonable number of times (eBay recommends twice). If the error persists,
contact Developer Technical Support. Once the problem has been resolved, the
request may be resent in its original form.



=cut


use constant SystemError => scalar('SystemError');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
