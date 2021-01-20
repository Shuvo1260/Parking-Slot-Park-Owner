import 'package:flutter/material.dart';
import 'package:parking_slot_seller/Data/Models/PlacesData.dart';
import 'package:parking_slot_seller/Resources/values.dart';

class ViewPlaceListItem extends StatelessWidget {
  PlaceData placeData;

  ViewPlaceListItem(this.placeData);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(RADIUS_LIST_ITEM),
          ),
        ),
        child: Row(
          children: [
            ClipOval(
              child: Image.network(
                placeData.imageUrl,
                height: HEIGHT_PARKING_LIST_ITEM_IMAGE,
                width: WIDTH_PARKING_LIST_ITEM_IMAGE,
                fit: BoxFit.cover,
              ),
            ),
            // Container(
            //   child: Column(
            //     children: [
            //       _PlaceListText(
            //         placeData.address,
            //         fontSize: 20.0,
            //       ),
            //       SizedBox(
            //         height: 10.0,
            //       ),
            //       _PlaceListText(placeData.rate, fontSize: 16.0),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

class _PlaceListText extends StatelessWidget {
  var data;
  var fontSize;
  _PlaceListText(this.data, {@required this.fontSize});
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        color: Colors.black,
        fontSize: fontSize,
      ),
    );
  }
}
