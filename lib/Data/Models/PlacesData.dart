import 'package:dataclass/dataclass.dart';
import 'package:flutter/cupertino.dart';

@dataClass
class Place {
  var id;
  var address;
  Place({this.id, @required this.address})
}
