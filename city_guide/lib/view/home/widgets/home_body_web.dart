import 'package:city_guide/component/on_hover.dart';
import 'package:city_guide/component/search_textfield.dart';
import 'package:city_guide/model/constants.dart';
import 'package:city_guide/view/favorite/favorite_screen.dart';
import 'package:city_guide/view/home/widgets/category_trip.dart';
import 'package:city_guide/view/home/widgets/package_trip.dart';
import 'package:city_guide/view/home/widgets/posting_events.dart';
import 'package:city_guide/view/home/widgets/posting_accommodation.dart';
import 'package:city_guide/view/home/widgets/posting_places.dart';
import 'package:city_guide/view/search/search_screen.dart';
import 'package:flutter/material.dart';

class HomeBodyWeb extends StatelessWidget {
  const HomeBodyWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: lightGrey,
      child: Scrollbar(
        isAlwaysShown: true,
        child: Center(
          child: Container(
            color: Colors.white,
            width: screenWidth <= 1200 ? 800 : 1200,
            padding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: screenWidth <= 1200 ? 32 : 44,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Welcome to City Guide',
                              style: TextStyle(
                                fontFamily: 'NunitoSans',
                                color: grey,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.0, top: 2.0),
                            child: Text(
                              'Explore the Hanoi, the heart of Vietnam',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                color: black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: OnHover(
                            builder: ((isHovered) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const FavoriteScreen();
                                  }));
                                },
                                child: Text(
                                  'FAVORITE',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: isHovered ? blue : black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SearchTextField(
                    readOnly: true,
                    autoFocus: false,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const SearchScreen();
                      }));
                    },
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                const PackageTrip(),
                const SizedBox(
                  height: 12,
                ),
                const CategoryTrip(),
                const SizedBox(
                  height: 32,
                ),
                const PostingEvent(),
                const SizedBox(
                  height: 32,
                ),
                const PostingAccommodation(),
                const SizedBox(
                  height: 32,
                ),
                const PostingPlace(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
