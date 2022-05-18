import 'package:city_guide/model/constants.dart';
import 'package:city_guide/model/places.dart';
import 'package:city_guide/view/detail/place/detail_place_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PostingPlace extends StatelessWidget {
  const PostingPlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 16.0, top: 2.0),
          child: Text(
            'Places',
            style: TextStyle(
              fontFamily: 'NunitoSans',
              fontWeight: FontWeight.bold,
              color: black,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16.0, top: 2.0),
          child: Text(
            'Explore attractive places in Hanoi',
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'NunitoSans',
              color: grey,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          width: double.infinity,
          height: 180,
          child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            double aspectRatio = 0.0;
            if ((defaultTargetPlatform == TargetPlatform.android ||
                    defaultTargetPlatform == TargetPlatform.iOS) ||
                (constraints.maxWidth <= 500)) {
              aspectRatio = MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height);
            } else if (constraints.maxWidth <= 600) {
              aspectRatio = MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 0.6);
            } else if (constraints.maxWidth <= 800) {
              aspectRatio = MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 0.4);
            } else {
              aspectRatio = MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 0.15);
            }

            return GridView.builder(
              itemCount: placeList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: aspectRatio,
              ),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: index < 2 ? 16.0 : 0.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailPlaceScreen(
                          place: placeList[index],
                        );
                      }));
                    },
                    child: _itemPosting(
                      place: placeList[index],
                    ),
                  ),
                );
              },
            );
          }),
        ),
      ],
    );
  }

  Widget _itemPosting({
    required Place place,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 56,
          height: 56,
          child: Hero(
            tag: place.photoCover,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                place.photoCover,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0, top: 4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  place.name,
                  style: const TextStyle(
                    fontSize: 12,
                    fontFamily: 'NunitoSans',
                    fontWeight: FontWeight.bold,
                    color: grey,
                  ),
              ),),
              Flexible(
                // flex: 1,
                child: RichText(text: TextSpan(
                  children: [
                    const WidgetSpan(child: Icon(
                      Icons.star,
                      size: 12,
                      color: Colors.yellow,
                    )),
                    TextSpan(
                      text: ' ${place.rating.toStringAsFixed(1)}',
                      style: const TextStyle(
                        fontSize: 12,
                        fontFamily: 'NunitoSans',
                        color: grey,
                      ),
                    ),]
                    )),)
                  ]
                )),
            ],
          );
  }
}
