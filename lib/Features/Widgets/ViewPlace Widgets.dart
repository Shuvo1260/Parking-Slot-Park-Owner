import 'package:flutter/material.dart';
import 'package:parking_slot_seller/Data/Models/PlacesData.dart';
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
            spreadRadius: 3,
            blurRadius: 7,
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
