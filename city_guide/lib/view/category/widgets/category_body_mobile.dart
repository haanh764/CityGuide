import 'package:city_guide/component/no_data.dart';
import 'package:city_guide/component/small_trip_card.dart';
import 'package:city_guide/model/trip.dart';
import 'package:flutter/material.dart';

class CategoryBodyMobile extends StatelessWidget {
  final List<Trip> categoryTrip;

  const CategoryBodyMobile({
    required this.categoryTrip,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: categoryTrip.isEmpty
          ? const NoData()
          : GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: categoryTrip
                  .map((trip) => SmallTripCard(trip: trip))
                  .toList(),
            ),
    );
  }
}
