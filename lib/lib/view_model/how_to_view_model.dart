import 'package:get/get.dart';
import 'package:mya_ngwe_san/lib/utils/constant_list.dart';
import 'package:video_player/video_player.dart';

class HowToViewModel extends GetxController {
  late VideoPlayerController videoPlayerController;

  List<VideoPlayerController> mVideoControllerList = [];

  @override
  void onInit() {
    getVideo();
    super.onInit();
  }

  void getVideo() {
    for (String url in mVideoList) {
      mVideoControllerList.add(VideoPlayerController.network(url)
        ..initialize().then((value) {
          videoPlayerController.play();
          videoPlayerController.setVolume(1);
        }));
    }
  }

  void playPauseVideo(index) => mVideoControllerList[index].value.isPlaying
      ? mVideoControllerList[index].pause()
      : mVideoControllerList[index].play();
}
