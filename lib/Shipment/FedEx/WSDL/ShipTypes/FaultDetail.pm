package Shipment::FedEx::WSDL::ShipTypes::FaultDetail;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://fedex.com/ws/ship/v9' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %fault_of :ATTR(:get<fault>);

__PACKAGE__->_factory(
    [ qw(
        fault

    ) ],
    {
        'fault' => \%fault_of,
    },
    {
        'fault' => 'Shipment::FedEx::WSDL::ShipTypes::Fault',
    },
    {

        'fault' => 'fault',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::FedEx::WSDL::ShipTypes::Weight

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
Weight from the namespace http://fedex.com/ws/ship/v9.

The descriptive data for the heaviness of an object.




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Units (min/maxOccurs: 1/1)


=item * Value (min/maxOccurs: 1/1)




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::FedEx::WSDL::ShipTypes::Weight
   Units => $some_value, # WeightUnits
   Value =>  $some_value, # decimal
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

