import 'package:flutter/material.dart';
import 'package:parking_slot_seller/Data/Models/PlacesData.dart';
import 'package:parking_slot_seller/Resources/strings.dart';
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
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            _ListItemImage(placeData: placeData),
            _ListItemFields(placeData: placeData)
          ],
        ),
      ),
    );
  }
}

class _ListItemFields extends StatelessWidget {
  const _ListItemFields({
    Key key,
    @required this.placeData,
  }) : super(key: key);

  final PlaceData placeData;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _PlaceListText(
              placeData.address,
              fontSize: 16.0,
            ),
            SizedBox(
              height: 10.0,
            ),
            _PlaceListText(
              SIGN_TAKA + placeData.rate.toString(),
              fontSize: 12.0,
            ),
          ],
        ),
      ),
    );
  }
}

class _ListItemImage extends StatelessWidget {
  const _ListItemImage({
    Key key,
    @required this.placeData,
  }) : super(key: key);

  final PlaceData placeData;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(RADIUS_LIST_ITEM),
        bottomLeft: Radius.circular(RADIUS_LIST_ITEM),
      ),
      child: Image.network(
        placeData.imageUrl,
        height: HEIGHT_PARKING_LIST_ITEM_IMAGE,
        width: WIDTH_PARKING_LIST_ITEM_IMAGE,
        fit: BoxFit.cover,
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
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
