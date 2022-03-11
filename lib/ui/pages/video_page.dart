import 'package:auto_route/auto_route.dart';
import 'package:brumaire_frontend/states/ioc.dart';
import 'package:brumaire_frontend/states/video/video_cubit.dart';
import 'package:brumaire_frontend/ui/widgets/video_reader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: videoCubit,
      child: BlocConsumer<VideoCubit, VideoState>(
        listener: (context, state) {
          if (state.url == null) {
            context.router.pop();
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: VideoReader(videoUrl: state.url!),
            ),
          );
        },
      ),
    );
  }
}
