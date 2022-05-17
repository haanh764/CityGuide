import 'package:city_guide/component/item_photo.dart';
import 'package:city_guide/component/item_video.dart';
import 'package:city_guide/model/constants.dart';
import 'package:city_guide/component/map.dart';
import 'package:city_guide/model/places.dart';
import 'package:city_guide/view/detail/widgets/detail_body_panel.dart';
import 'package:city_guide/view/detail/widgets/panel.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PlaceBodyMobile extends StatefulWidget {
  final Place place;

  const PlaceBodyMobile({
    required this.place,
    Key? key,
  }) : super(key: key);

  @override
  _PlaceBodyMobileState createState() => _PlaceBodyMobileState();
}

class _PlaceBodyMobileState extends State<PlaceBodyMobile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SlidingUpPanel(
          parallaxEnabled: true,
          parallaxOffset: .5,
          minHeight: size.height / 1.5,
          maxHeight: size.height / 1.15,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(18.0),
            topRight: Radius.circular(18.0),
          ),
          body: DetailBodyPanel(
            photoCover: widget.place.photoCover,
            height: size.height - (size.height / 1.6),
          ),
          panelBuilder: (sc) => _panel(sc),
        ),
        Positioned(
          top: 50.0,
          left: 4.0,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget _panel(ScrollController sc) {
    return Panel(
      content: ListView(
        controller: sc,
        children: [
          const SizedBox(
            height: 12.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 30,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 18.0,
          ),
          Text(
            '${widget.place.name}, ${widget.place.location.country}',
            style: const TextStyle(
              fontSize: 18,
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
                    size: 14,
                    color: blue,
                  ),
                ),
                TextSpan(
                  text: ' ${widget.place.location.subRegion}',
                )
              ],
              style: const TextStyle(
                fontSize: 12,
                fontFamily: 'NunitoSans',
                color: black,
              ),
            ),
          ),
          const SizedBox(
            height: 18.0,
          ),
          Text(
            widget.place.description,
            style: const TextStyle(
              fontFamily: 'NunitoSans',
              color: grey,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          SizedBox(
            height: 140.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.place.urlPhoto.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ItemPhoto(
                    urlPhoto: widget.place.urlPhoto[index],
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          SizedBox(
            height: 140.0,
            child: ItemVideo(urlVideo: widget.place.urlVideo),
          ),
          const SizedBox(
            height: 24.0,
          ),
          const Text(
            'Location',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'NunitoSans',
              fontWeight: FontWeight.bold,
              color: black,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Map(
            location: widget.place.location,
            zoom: 10.0,
          ),
        ],
      ),
    );
  }
}
