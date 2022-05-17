import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ItemVideo extends StatefulWidget {
  final String urlVideo;

  const ItemVideo({
    required this.urlVideo,
    Key? key,
  }) : super(key: key);

  @override
  _ItemVideoState createState() => _ItemVideoState();
}

class _ItemVideoState extends State<ItemVideo> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: widget.urlVideo,
      flags: const YoutubePlayerFlags(
          mute: false,
          autoPlay: true,
          disableDragSeek: true,
          loop: false,
          enableCaption: false),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: _controller,
      showVideoProgressIndicator: true,
      progressIndicatorColor: Colors.blueAccent,
    );
  }
}
