import 'package:city_guide/model/places.dart';
import 'package:city_guide/view/detail/place/widgets/place_body_mobile.dart';
import 'package:flutter/material.dart';

class DetailPlaceScreen extends StatefulWidget {
  final Place place;

  const DetailPlaceScreen({
    required this.place,
    Key? key,
  }) : super(key: key);

  @override
  _DetailPlaceScreenState createState() => _DetailPlaceScreenState();
}

class _DetailPlaceScreenState extends State<DetailPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
        body: PlaceBodyMobile(place: widget.place),
      );
    });
  }
}
