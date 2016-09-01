package Shipment::UPS::WSDL::TrackTypes::ShipmentActivityType;
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

my %ActivityLocation_of :ATTR(:get<ActivityLocation>);
my %Code_of :ATTR(:get<Code>);
my %Description_of :ATTR(:get<Description>);
my %Date_of :ATTR(:get<Date>);
my %Time_of :ATTR(:get<Time>);
my %Trailer_of :ATTR(:get<Trailer>);
my %Document_of :ATTR(:get<Document>);
my %AdditionalAttribute_of :ATTR(:get<AdditionalAttribute>);

__PACKAGE__->_factory(
    [ qw(        ActivityLocation
        Code
        Description
        Date
        Time
        Trailer
        Document
        AdditionalAttribute

    ) ],
    {
        'ActivityLocation' => \%ActivityLocation_of,
        'Code' => \%Code_of,
        'Description' => \%Description_of,
        'Date' => \%Date_of,
        'Time' => \%Time_of,
        'Trailer' => \%Trailer_of,
        'Document' => \%Document_of,
        'AdditionalAttribute' => \%AdditionalAttribute_of,
    },
    {
        'ActivityLocation' => 'Shipment::UPS::WSDL::TrackTypes::AddressType',
        'Code' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'Description' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'Date' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'Time' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'Trailer' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'Document' => 'Shipment::UPS::WSDL::TrackTypes::DocumentType',
        'AdditionalAttribute' => 'Shipment::UPS::WSDL::TrackTypes::AdditionalCodeDescriptionValueType',
    },
    {

        'ActivityLocation' => 'ActivityLocation',
        'Code' => 'Code',
        'Description' => 'Description',
        'Date' => 'Date',
        'Time' => 'Time',
        'Trailer' => 'Trailer',
        'Document' => 'Document',
        'AdditionalAttribute' => 'AdditionalAttribute',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::UPS::WSDL::TrackTypes::ShipmentActivityType

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ShipmentActivityType from the namespace http://www.ups.com/XMLSchema/XOLTWS/Track/v2.0.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * ActivityLocation


=item * Code


=item * Description


=item * Date


=item * Time


=item * Trailer


=item * Document


=item * AdditionalAttribute




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::UPS::WSDL::TrackTypes::ShipmentActivityType
   ActivityLocation =>  { # Shipment::UPS::WSDL::TrackTypes::AddressType
     AddressLine =>  $some_value, # string
     City =>  $some_value, # string
     StateProvinceCode =>  $some_value, # string
     PostalCode =>  $some_value, # string
     CountryCode =>  $some_value, # string
   },
   Code =>  $some_value, # string
   Description =>  $some_value, # string
   Date =>  $some_value, # string
   Time =>  $some_value, # string
   Trailer =>  $some_value, # string
   Document =>  { # Shipment::UPS::WSDL::TrackTypes::DocumentType
     Type =>  { # Shipment::UPS::WSDL::TrackTypes::CommonCodeDescriptionType
       Code =>  $some_value, # string
       Description =>  $some_value, # string
     },
     Content =>  $some_value, # string
     Format =>  { # Shipment::UPS::WSDL::TrackTypes::CommonCodeDescriptionType
       Code =>  $some_value, # string
       Description =>  $some_value, # string
     },
   },
   AdditionalAttribute =>  { # Shipment::UPS::WSDL::TrackTypes::AdditionalCodeDescriptionValueType
     Code =>  $some_value, # string
     Description =>  $some_value, # string
     Value =>  $some_value, # string
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
