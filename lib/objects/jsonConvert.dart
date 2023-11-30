
import 'package:dart_apprentice/classes/appUser.dart';
import 'package:dart_apprentice/classes/appAddress.dart';





AppUser createUserTony() {

  PersonAddress aPersonAddress1 = PersonAddress('16315 Lawndale Ave',null,'Markham','IL','60428');
  PersonAddress aPersonAddress2 = PersonAddress('14425 Vincennes',null,'Harvey','IL','60426');
  BusinessAddress aBusinessAddress = BusinessAddress('800 Tampa rd',null,'Tampa','FL','95235');
  List<AppAddress> addresses = [aPersonAddress1,aPersonAddress2,aBusinessAddress];
  return AppUser('Tony','McClay','c','developer',addresses);
}


AppUser createUserMaria() {

  PersonAddress aPersonAddress1 = PersonAddress('12345 Georgia rd',null,'Atlanta','GA','98765');
  PersonAddress aPersonAddress2 = PersonAddress('987654 Georgia rd',null,'Macon','GA','98765');
  BusinessAddress aBusinessAddress = BusinessAddress('76543 Tennessee Rd',null,'Nashville','TN','54789');
  List<AppAddress> addresses = [aPersonAddress1,aPersonAddress2,aBusinessAddress];
  return AppUser('Maria','Salsa','M','dancer',addresses);
}


class AppUsers {

  List<AppUsers> users;

  AppUsers(this.users);

  String toString() {
    String returnString = '';
    for (AppUsers aUser in users) {
      returnString += '$aUser';
    }
    return returnString;
  }
}

void main() {

  AppUser aTony = createUserTony();
  AppUser aMaria = createUserMaria();
  List<AppUser> appUsers = [aTony,aMaria];
  print(appUsers);
}


