import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

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
      params: const YoutubePlayerParams(
          mute: false,
          autoPlay: true,
          loop: false,
          enableCaption: false),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {  
    return YoutubePlayerIFrame(
      controller: _controller,
    );
  }
}
