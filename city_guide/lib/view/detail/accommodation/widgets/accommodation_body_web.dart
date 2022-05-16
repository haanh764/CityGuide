import 'package:city_guide/model/constants.dart';
import 'package:city_guide/component/map.dart';
import 'package:city_guide/model/accommodations.dart';
import 'package:flutter/material.dart';

class AccommodationBodyWeb extends StatefulWidget {
  final Accommodation accommodation;

  const AccommodationBodyWeb({
    required this.accommodation,
    Key? key,
  }) : super(key: key);

  @override
  _AccommodationBodyWebState createState() => _AccommodationBodyWebState();
}

class _AccommodationBodyWebState extends State<AccommodationBodyWeb> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

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
            child: ListView(
              children: [
                Text(
                  '${widget.accommodation.location.location}, ${widget.accommodation.location.country}',
                  style: const TextStyle(
                    fontSize: 28,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    color: black,
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Hero(
                            tag: widget.accommodation.photoCover,
                            child: ClipRRect(
                              child: Image.asset(
                                widget.accommodation.photoCover,
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Scrollbar(
                            isAlwaysShown: true,
                            controller: _scrollController,
                            child: Container(
                              height: 150,
                              padding: const EdgeInsets.only(bottom: 16),
                              child: ListView(
                                controller: _scrollController,
                                scrollDirection: Axis.horizontal,
                                children:
                                    widget.accommodation.urlPhoto.map((url) {
                                  return Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(url),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 32),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.accommodation.name,
                            style: const TextStyle(
                              fontSize: 28,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              color: black,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          RichText(
                            textAlign: TextAlign.start,
                            text: TextSpan(
                              children: [
                                const WidgetSpan(
                                  child: Icon(
                                    Icons.account_circle,
                                    size: 20,
                                    color: blue,
                                  ),
                                ),
                                TextSpan(
                                  text: ' ${widget.accommodation.location.subRegion}',
                                )
                              ],
                              style: const TextStyle(
                                fontSize: 14,
                                fontFamily: 'NunitoSans',
                                color: black,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 24.0,
                          ),
                          Text(
                            widget.accommodation.description,
                            style: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'NunitoSans',
                              color: grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32.0,
                ),
                const Text(
                  'Location',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'NunitoSans',
                    fontWeight: FontWeight.bold,
                    color: black,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Map(
                  location: widget.accommodation.location,
                  zoom: 18.0,
                ),
                const SizedBox(
                  height: 32.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
