import 'package:animationui/pages/basic.dart';
import 'package:flutter/material.dart';

import 'play_car.dart';
import 'play_pause_car.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rive Examples'),
      ),
      body: Center(  
        child: Column(  
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              child: const Text('Simple Animation'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const Basic(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),

             ElevatedButton(
              child: const Text('Play/Pause Animation'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const PlayPauseAnimation(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: const Text('Play One-Shot Animation'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const PlayOneShotAnimation(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}