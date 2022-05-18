import 'package:city_guide/component/search_textfield.dart';
import 'package:city_guide/view/home/widgets/category_trip.dart';
import 'package:city_guide/view/home/widgets/package_trip.dart';
import 'package:city_guide/view/home/widgets/posting_events.dart';
import 'package:city_guide/view/home/widgets/posting_accommodation.dart';
import 'package:city_guide/view/home/widgets/posting_places.dart';
import 'package:city_guide/view/search/search_screen.dart';
import 'package:flutter/material.dart';

class HomeBodyMobile extends StatelessWidget {
  const HomeBodyMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SearchTextField(
                readOnly: true,
                autoFocus: false,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SearchScreen();
                  }));
                },
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const CategoryTrip(),
            const SizedBox(
              height: 32,
            ),
            const PackageTrip(),
            const SizedBox(
              height: 12,
            ),
            const PostingPlace(),
            const SizedBox(
              height: 12,
            ),
            const PostingAccommodation(),
            const SizedBox(
              height: 12,
            ),
            const PostingEvent(),
          ],
        ),
      ),
    );
  }
}
