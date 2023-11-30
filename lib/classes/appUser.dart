
import 'package:dart_apprentice/classes/appAddress.dart';


class AppUser {
  String firstName;
  String lastName;
  String mi;
  String? title;
  List<AppAddress>?  addresses;

  AppUser(this.firstName, this.lastName, this.mi,this.title, this.addresses);

  // Map<String,dynamic> toJson() {
  //   Map<String, dynamic> aJson;
  //   if (addresses == null) {
  //     aJson = {
  //       'firstname': firstName,
  //       'lastname': lastName,
  //       'mi': mi,
  //       'title': title,
  //     };
  //   } else {
  //     Map<String, dynamic> aJson = {
  //       'firstname': firstName,
  //       'lastname': lastName,
  //       'mi': mi,
  //       'title': title,
  //       'addresses':  addresses,
  //     };
  //   } // end if
  // }

  @override
  String toString() {
    String returnString = '';
    if (title == null) {
      returnString = '\nfirst name: $firstName mi: $mi last name: $lastName \n';
    } else {
      returnString =
      '\ntitle: $title first name: $firstName mi: $mi last name: $lastName \n';
    }
    if (addresses != null ){
       returnString += ' address: \n $addresses';
    }
    //   // for (AppAddress aAddress in addresses!) {
    //   //   returnString += '\n $addresses';
    //   // }
    //   // returnString += ' ]';
    // }
    return returnString;
  }

}


