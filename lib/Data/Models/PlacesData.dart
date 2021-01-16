import 'package:dataclass/dataclass.dart';
import 'package:flutter/cupertino.dart';

@dataClass
class PlaceData {
  var id;
  var address;
  PlaceData({this.id, @required this.address});
}
