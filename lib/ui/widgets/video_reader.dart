import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoReader extends StatefulWidget {
  final String videoUrl;
  const VideoReader({Key? key, required this.videoUrl}) : super(key: key);

  @override
  State<VideoReader> createState() => _VideoReaderState();
}

class _VideoReaderState extends State<VideoReader> {
  late final YoutubePlayerController _youtubeController;

  @override
  void initState() {
    _youtubeController = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
        widget.videoUrl,
      )!,
    );
    super.initState();
  }

  @override
  void deactivate() {
    _youtubeController.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _youtubeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        color: Theme.of(context).primaryColor,
      ),
      child: YoutubePlayer(
        controller: _youtubeController,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.red,
        bottomActions: [
          CurrentPosition(),
          ProgressBar(isExpanded: true),
        ],
        onReady: () {
          print('Player is ready.');
        },
      ),
    );
  }
}
