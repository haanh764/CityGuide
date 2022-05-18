import 'package:city_guide/model/events.dart';
import 'package:city_guide/view/detail/event/widgets/event_body_mobile.dart';
import 'package:flutter/material.dart';

class DetailEventScreen extends StatefulWidget {
  final Event event;

  const DetailEventScreen({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  _DetailEventScreenState createState() => _DetailEventScreenState();
}

class _DetailEventScreenState extends State<DetailEventScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
        body: EventBodyMobile(event: widget.event),
      );
    });
  }
}
