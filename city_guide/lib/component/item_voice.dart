import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class ItemVoice extends StatefulWidget {
  final String urlVoice;

  const ItemVoice({
    required this.urlVoice,
    Key? key,
  }) : super(key: key);

  @override
  _ItemVoiceState createState() => _ItemVoiceState();
}

class _ItemVoiceState extends State<ItemVoice> {
  late AudioPlayer audioPlayer;
  bool _playAudio = false;

  @override
  void initState() {
    audioPlayer = AudioPlayer();
    super.initState();
  }

  @override
  void dispose() {
    audioPlayer.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(
            icon: const Icon(
              Icons.mic_rounded,),
            onPressed: () {
              if (_playAudio) {
                audioPlayer.pause();
                setState(() {
                  _playAudio = false;
                });
              } else {
                audioPlayer.setAsset(widget.urlVoice);
                audioPlayer.play();
                setState(() {
                  _playAudio = true;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}