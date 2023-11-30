

abstract class AppAddress{

    late String street1;
    String? street2;
    late String city;
    late String state;
    late String zip;

    AppAddress(this.street1, this.street2, this.city, this.state, this.zip);

}

class PersonAddress extends AppAddress {

  String type = 'personal';

  PersonAddress(String street1, String? street2, String city, String state,
      String zip) : super(street1, street2, city, state, zip);

  String personalMethod() => "This is a personal method";

  @override
  String toString() {
    if (street2 != null) {
      return "type: personal street1: $street1 street2: $street2 city: $city state: $state zip: $zip";
    } else {
      return "type: personal street1: $street1 city: $city state: $state zip: $zip";
    }
  }
}  // end PersonalAddres

class BusinessAddress extends AppAddress {

  String type = 'business';

  BusinessAddress(String street1, String? street2, String city, String state,
      String zip) : super(street1, street2, city, state, zip);

  String businessMethod() => "This is a business method";

  @override
  String toString() {
    if (street2 != null) {
      return "type: business street1: $street1 street2: $street2 city: $city state: $state zip: $zip";
    } else {
      return "type: business street1: $street1 city: $city state: $state zip: $zip";
    }
  }
}  // end PersonalAddres