package Shipment::Purolator::WSDLV2::Types::ArrayOfError;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://purolator.com/pws/datatypes/v2' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Error_of :ATTR(:get<Error>);

__PACKAGE__->_factory(
    [ qw(        Error

    ) ],
    {
        'Error' => \%Error_of,
    },
    {
        'Error' => 'Shipment::Purolator::WSDLV2::Types::Error',
    },
    {

        'Error' => 'Error',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::Purolator::WSDLV2::Types::ArrayOfError

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ArrayOfError from the namespace http://purolator.com/pws/datatypes/v2.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Error (min/maxOccurs: 0/unbounded)




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::Purolator::WSDLV2::Types::ArrayOfError
   Error =>  { # Shipment::Purolator::WSDLV2::Types::Error
     Code =>  $some_value, # string
     Description =>  $some_value, # string
     AdditionalInformation =>  $some_value, # string
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
