import 'package:bloc/bloc.dart';

part 'video_state.dart';

class VideoCubit extends Cubit<VideoState> {
  VideoCubit() : super(const VideoState());
  void loadVideo(String url) {
    emit(VideoState(url: url));
  }
}
