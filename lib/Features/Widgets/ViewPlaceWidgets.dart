import 'package:flutter/material.dart';
import 'package:parking_slot_seller/Data/Models/PlacesData.dart';
import 'package:parking_slot_seller/Resources/assets.dart';
import 'package:parking_slot_seller/Resources/colors.dart';
import 'package:parking_slot_seller/Resources/strings.dart';
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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _DetailsTextWidget(icon: Icons.phone, data: _placeData.phoneNumber),
          SizedBox(
            height: 10.0,
          ),
          _DetailsTextWidget(data: _placeData.address, icon: Icons.location_on),
          SizedBox(
            height: 10.0,
          ),
          _DetailsTextWidget(
              data: "${_placeData.rate} $SIGN_TAKA per hour",
              icon: Icons.attach_money),
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
        Expanded(
          child: Text(
            data,
            style: TextStyle(
              color: COLOR_BLACK,
              fontSize: 14.0,
            ),
          ),
        ),
      ],
    );
  }
}

class ViewPlaceSlotWidget extends StatelessWidget {
  const ViewPlaceSlotWidget({
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
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              "Slot details",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: COLOR_CARIBBEAN_GREEN,
                fontFamily: FONT_BANK_GOTHIC,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          _SlotWidgets(placeData: _placeData),
        ],
      ),
    );
  }
}

class _SlotWidgets extends StatelessWidget {
  const _SlotWidgets({
    Key key,
    @required PlaceData placeData,
  })  : _placeData = placeData,
        super(key: key);

  final PlaceData _placeData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _SlotWidget(
          title: "Total Slot",
          slot: _placeData.totalSlot.toString(),
        ),
        SizedBox(
          width: 10.0,
        ),
        _SlotWidget(
          title: "Parked Slot",
          slot: _placeData.parkedSlot.toString(),
        ),
      ],
    );
  }
}

class _SlotWidget extends StatelessWidget {
  _SlotWidget({@required this.title, @required this.slot});

  var title;
  var slot;

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
              blurRadius: 3,
              offset: Offset(0, 2),
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              slot,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
