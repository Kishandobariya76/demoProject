// import 'dart:developer';
//
// import 'package:flutter/services.dart';
//
// class VibrationHelper {
//   static orderSuccessVibrate() async {
//     bool? customSupport = await Vibration.hasCustomVibrationsSupport();
//     log('Custom Vibration Support: $customSupport');
//     if (customSupport == true) {
//       Vibration.vibrate(pattern: [200, 200, 0, 200]);
//     } else {
//       Vibration.vibrate();
//     }
//   }
//
//   static likeDislikeVibrate() async {
//     bool? customSupport = await Vibration.hasCustomVibrationsSupport();
//     if (customSupport == false) {
//       Vibration.vibrate(duration: 20, amplitude: 128);
//     } else {}
//     SystemSound.play(SystemSoundType.click);
//   }
// }
//
// class LocalAudioPlayer {
//   static Future<void> play(String audioFile) async {
//     await AssetsAudioPlayer.newPlayer().open(
//       Audio(audioFile),
//     );
//   }
// }
