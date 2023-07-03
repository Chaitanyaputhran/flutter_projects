import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int Sound){
    final assetsAudioPlayer = AssetsAudioPlayer();

    assetsAudioPlayer.open(
      Audio("assets/note$Sound.wav"),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child:Column(
              children: [
                Expanded(
            child:TextButton(
                  style:TextButton.styleFrom(
                backgroundColor: Colors.pink,
            ),
                  onPressed: (){
                    playSound(1);
                },
              child:Text(''),
            ),
                ),
                Expanded(
                  child:TextButton(
                    style:TextButton.styleFrom(
                      backgroundColor: Colors.pink,
                    ),
                    onPressed: (){
                      playSound(2);
                    },
                    child:Text(''),
                  ),
                ),
                Expanded(
                  child:TextButton(
                    style:TextButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    onPressed: (){
                      playSound(3);
                    },
                    child:Text(''),
                  ),
                ),
                Expanded(
                  child:TextButton(
                    style:TextButton.styleFrom(
                      backgroundColor: Colors.yellow,
                    ),
                    onPressed: (){
                      playSound(4);
                    },
                    child:Text(''),
                  ),
                ),
                Expanded(
                  child:TextButton(
                    style:TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: (){
                      playSound(5);
                    },
                    child:Text(''),
                  ),
                ),
                Expanded(
                  child:TextButton(
                    style:TextButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                    onPressed: (){
                      playSound(6);
                    },
                    child:Text(''),
                  ),
                ),
                Expanded(
                  child:TextButton(
                    style:TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    onPressed: (){
                      playSound(7);
                    },
                    child:Text(''),
                  ),
                ),

              ],
            ),
          ),
        ),

    );
  }
}
