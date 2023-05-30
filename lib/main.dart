import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: xylophone(),));
}
class xylophone extends StatelessWidget {
  const xylophone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('xylophone',),backgroundColor: Colors.black,
      ),
    body: Column(
      children: [
        containerwidget(color: Colors.pink, sound: 1,),
        containerwidget(color: Colors.black, sound: 2,),
        containerwidget(color: Colors.blue, sound: 3,),
        containerwidget(color: Colors.white, sound: 4,),
        containerwidget(color: Colors.orange, sound: 5,),
        containerwidget(color: Colors.red, sound: 6,),
        containerwidget(color: Colors.black, sound: 7,),


        ],
        ),

    );
  }
}

class containerwidget extends StatelessWidget {
  Color? color;
  int? sound;
  containerwidget({super.key,required this.color,required this.sound});
void playSound(int soundNumber) {
  final player = AudioCache();
  player.play('assets_note$soundNumber.wav');
}
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
      child: TextButton(
        onPressed: (){},
        child: Center(child: Text('audio'),),
      ),),
    );
  }
}
