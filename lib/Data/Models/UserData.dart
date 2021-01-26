import 'package:dataclass/dataclass.dart';
import 'package:flutter/cupertino.dart';

@dataClass
class UserData {
  var id;
  var name;
  var phoneNumber;
  var address;
  var email;
  var password;

  UserData(
      {@required this.id,
      @required this.name,
      @required this.phoneNumber,
      @required this.address,
      @required this.email,
      @required this.password});
}
