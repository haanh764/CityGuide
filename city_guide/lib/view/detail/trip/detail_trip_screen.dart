import 'package:city_guide/model/trip.dart';
import 'package:city_guide/view/detail/trip/widgets/trip_body_mobile.dart';
import 'package:flutter/material.dart';

class DetailTripScreen extends StatefulWidget {
  final Trip trip;

  const DetailTripScreen({
    required this.trip,
    Key? key,
  }) : super(key: key);

  @override
  _DetailTripScreenState createState() => _DetailTripScreenState();
}

class _DetailTripScreenState extends State<DetailTripScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
        body: TripBodyMobile(trip: widget.trip),
      );
    });
  }
}
