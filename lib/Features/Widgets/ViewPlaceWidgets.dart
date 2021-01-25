import 'package:flutter/material.dart';
import 'package:parking_slot_seller/Data/Models/PlacesData.dart';
import 'package:parking_slot_seller/Resources/colors.dart';
import 'package:parking_slot_seller/Resources/values.dart';

class ViewPlaceImage extends StatelessWidget {
  const ViewPlaceImage({
    Key key,
    @required PlaceData placeData,
  })  : _placeData = placeData,
        super(key: key);

  final PlaceData _placeData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(RADIUS_LIST_ITEM),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 2),
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(RADIUS_LIST_ITEM),
        ),
        child: Image.network(
          _placeData.imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ViewPlaceDetails extends StatelessWidget {
  const ViewPlaceDetails({
    Key key,
    @required PlaceData placeData,
  })  : _placeData = placeData,
        super(key: key);

  final PlaceData _placeData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(RADIUS_LIST_ITEM),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 2),
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Column(
        children: [
          _DetailsTextWidget(icon: Icons.phone, data: _placeData.phoneNumber)
        ],
      ),
    );
  }
}

class _DetailsTextWidget extends StatelessWidget {
  _DetailsTextWidget({@required this.data, @required this.icon});

  String data;
  var icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(
          width: 10.0,
        ),
        Text(
          data,
          style: TextStyle(
            color: COLOR_BLACK,
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }
}
