package Shipment::UPS::WSDL::TrackTypes::ShipToRequestType;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.ups.com/XMLSchema/XOLTWS/Track/v2.0' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Address_of :ATTR(:get<Address>);

__PACKAGE__->_factory(
    [ qw(        Address

    ) ],
    {
        'Address' => \%Address_of,
    },
    {
        'Address' => 'Shipment::UPS::WSDL::TrackTypes::AddressRequestType',
    },
    {

        'Address' => 'Address',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::UPS::WSDL::TrackTypes::ShipToRequestType

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ShipToRequestType from the namespace http://www.ups.com/XMLSchema/XOLTWS/Track/v2.0.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Address




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::UPS::WSDL::TrackTypes::ShipToRequestType
   Address =>  { # Shipment::UPS::WSDL::TrackTypes::AddressRequestType
     PostalCode =>  $some_value, # string
     CountryCode =>  $some_value, # string
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

