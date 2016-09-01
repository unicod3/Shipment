package Shipment::UPS::WSDL::TrackTypes::ReferenceNumberType;
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

my %Code_of :ATTR(:get<Code>);
my %Value_of :ATTR(:get<Value>);

__PACKAGE__->_factory(
    [ qw(        Code
        Value

    ) ],
    {
        'Code' => \%Code_of,
        'Value' => \%Value_of,
    },
    {
        'Code' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'Value' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'Code' => 'Code',
        'Value' => 'Value',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::UPS::WSDL::TrackTypes::ReferenceNumberType

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ReferenceNumberType from the namespace http://www.ups.com/XMLSchema/XOLTWS/Track/v2.0.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Code


=item * Value




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::UPS::WSDL::TrackTypes::ReferenceNumberType
   Code =>  $some_value, # string
   Value =>  $some_value, # string
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

