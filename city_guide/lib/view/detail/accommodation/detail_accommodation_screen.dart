import 'package:city_guide/model/accommodations.dart';
import 'package:city_guide/view/detail/accommodation/widgets/accommodation_body_mobile.dart';
import 'package:city_guide/view/detail/accommodation/widgets/accommodation_body_web.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DetailAccommodationScreen extends StatefulWidget {
  final Accommodation accommodation;

  const DetailAccommodationScreen({
    required this.accommodation,
    Key? key,
  }) : super(key: key);

  @override
  _DetailAccommodationScreenState createState() => _DetailAccommodationScreenState();
}

class _DetailAccommodationScreenState extends State<DetailAccommodationScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
        body: ((defaultTargetPlatform == TargetPlatform.android ||
                    defaultTargetPlatform == TargetPlatform.iOS) ||
                (constraints.maxWidth <= 600))
            ? AccommodationBodyMobile(accommodation: widget.accommodation)
            : AccommodationBodyWeb(accommodation: widget.accommodation),
      );
    });
  }
}
