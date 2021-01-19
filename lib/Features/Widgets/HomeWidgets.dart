import 'package:flutter/material.dart';
import 'package:parking_slot_seller/Data/Models/PlacesData.dart';

class ViewPlaceListItem extends StatelessWidget {
  PlaceData placeData;

  ViewPlaceListItem(this.placeData);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Card(
        child: Row(
          children: [
            Image.network(
              placeData.imageUrl,
              height: 80.0,
              width: 80.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _PlaceListText(
                  placeData.address,
                  fontSize: 20.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                _PlaceListText(placeData.rate, fontSize: 16.0),
              ],
            )
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
