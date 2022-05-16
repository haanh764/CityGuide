import 'package:city_guide/model/constants.dart';
import 'package:city_guide/component/map.dart';
import 'package:city_guide/model/events.dart';
import 'package:flutter/material.dart';

class EventBodyWeb extends StatefulWidget {
  final Event event;

  const EventBodyWeb({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  _EventBodyWebState createState() => _EventBodyWebState();
}

class _EventBodyWebState extends State<EventBodyWeb> {
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
                  '${widget.event.location.location}, ${widget.event.location.country}',
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
                            tag: widget.event.photoCover,
                            child: ClipRRect(
                              child: Image.asset(
                                widget.event.photoCover,
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
                                    widget.event.urlPhoto.map((url) {
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
                            widget.event.title,
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
                                  text: ' ${widget.event.date}',
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
                            widget.event.content,
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
                  location: widget.event.location,
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
