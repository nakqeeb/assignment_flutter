import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PartOne extends StatefulWidget {
  const PartOne({super.key});

  @override
  State<PartOne> createState() => _PartOneState();
}

class _PartOneState extends State<PartOne> {
  VideoPlayerController? _controller;

  @override
  void initState() {
    _controller = VideoPlayerController.asset('assets/videos/main_video.mp4')
      ..initialize().then((_) {
        _controller!.play();
        _controller!.setLooping(true);
        // Ensure the first frame is shown after the video is initialized
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        VideoPlayer(_controller!),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.7)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 15, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'المنصة الرقمية السعودية\n',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Tajawal-Bold',
                          height: 0.9,
                        ),
                      ),
                      TextSpan(
                        text: 'لجودة التشغيل الغذائي',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Tajawal-Bold',
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 60),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'مـرحـبـا بـك فـي الـمـنـصـة \nالرقمية السـعـوديـة',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Tajawal-Bold',
                        height: 1.1,
                        letterSpacing: 0.8,
                      ),
                    ),
                    const Text(
                      'شـركـة مـطـوفـي حـجـاج جـنـوب آسـيـا',
                      style: TextStyle(
                        color: Colors.white,
                        height: 2,
                        letterSpacing: 0.8,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 15, 25),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            // If the video is playing, pause it.
                            if (_controller!.value.isPlaying) {
                              _controller!.pause();
                            } else {
                              // If the video is paused, play it.
                              _controller!.play();
                            }
                          });
                        },
                        icon: Icon(
                          _controller!.value.isPlaying
                              ? Icons.pause_circle
                              : Icons.play_circle,
                          color: Colors.white,
                          size: 55,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: size.width * 0.6,
                      height: size.height * 0.04,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        child: const Text(
                          'احـصـل على تمويـلك',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
