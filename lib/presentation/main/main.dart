import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';
import 'package:task_a/presentation/widget/custom_icon_button.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Playful Bot Controls'),
        // ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image:
                  AssetImage('assets/bg.jpg'), // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      icon: Icons.settings,
                      onPressed: () {
                        handleButtonPress('Settings');
                        playSound('sounds/sound.mp3');
                      },
                    ),
                    const SizedBox(width: 15),
                    CustomIconButton(icon: Icons.volume_up, onPressed: () {}),
                    const SizedBox(width: 15),
                    CustomIconButton(
                      icon: Icons.chat,
                      onPressed: () {
                        handleButtonPress('Say Hello');
                        playSound('sounds/sound2.mp3');
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                CustomIconButton(
                  icon: Icons.arrow_upward,
                  onPressed: () {
                    handleButtonPress('Move Forward');
                    playSound('sounds/sound4.mp3');
                  },
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      icon: Icons.arrow_back,
                      onPressed: () {
                        handleButtonPress('back');
                        playSound('sounds/sound5.mp3');
                      },
                    ),
                    const SizedBox(width: 30),
                    CustomIconButton(
                      icon: Icons.stop_circle_rounded,
                      onPressed: () {
                        handleButtonPress('stop');
                        playSound('sounds/sound7.mp3');
                      },
                    ),
                    const SizedBox(width: 10),
                    CustomIconButton(
                      icon: Icons.play_circle_sharp,
                      onPressed: () {
                        handleButtonPress(' play');
                        playSound('sounds/sound5.mp3');
                      },
                    ),
                    const SizedBox(width: 30),
                    CustomIconButton(
                      icon: Icons.arrow_forward,
                      onPressed: () => handleButtonPress('Turn forward'),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                CustomIconButton(
                  icon: Icons.arrow_downward_rounded,
                  onPressed: () {
                    handleButtonPress('Move Down');
                    playSound('sounds/sound2.mp3');
                  },
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      icon: Icons.roundabout_left,
                      onPressed: () {
                        handleButtonPress('round left');
                        playSound('sounds/sound.mp3');
                      },
                    ),
                    const SizedBox(width: 15),
                    const SizedBox(width: 15),
                    CustomIconButton(
                      icon: Icons.roundabout_right,
                      onPressed: () {
                        handleButtonPress('round right');
                        playSound('sounds/sound7.mp3');
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void handleButtonPress(String action) {
    print('Button pressed: $action');
  }

  Future<void> playSound(String soundPath) async {
    final player = AudioPlayer();
    await player.play(AssetSource(soundPath));
  }
}
