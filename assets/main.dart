import 'dart:async';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MeditationHome(),
    );
  }
}

class MeditationHome extends StatelessWidget {
  MeditationHome({super.key});

  final routines = const [
    {"title":"Cleaning","subtitle":"Daily refresh","minutes":20},
    {"title":"Meditation","subtitle":"Deep breath awareness","minutes":40},
    {"title":"Universal Prayer","subtitle":"Global connection","minutes":10},
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Mindful Presence")),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: routines.length,
        itemBuilder:(c,i){
          final r=routines[i];
          return Card(
            child: ListTile(
              title: Text(r["title"] as String),
              subtitle: Text(r["subtitle"] as String),
              trailing: IconButton(
                icon: const Icon(Icons.play_circle_fill,size:48),
                onPressed: (){
                  Navigator.push(c,MaterialPageRoute(
                    builder:(_)=>TimerPage(
                      title:r["title"] as String,
                      minutes:r["minutes"] as int,
                    ),
                  ));
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class TimerPage extends StatefulWidget{
  final int minutes;
  final String title;
  const TimerPage({super.key,required this.minutes,required this.title});
  @override
  State<TimerPage> createState()=>_TimerPageState();
}

class _TimerPageState extends State<TimerPage>{
  Timer? timer;
  late int secondsLeft;
  final AudioPlayer player=AudioPlayer();

  @override
  void initState(){
    super.initState();
    secondsLeft=widget.minutes*60;

    timer=Timer.periodic(const Duration(seconds:1),(t) async{
      if(!mounted)return;
      if(secondsLeft>0){
        setState(()=>secondsLeft--);
      }else{
        t.cancel();
        await player.stop();
        await player.play(AssetSource('Dawn_of_the_Sovereign.mp3'));
        if(!mounted)return;
        showDialog(
          context: context,
          barrierDismissible:false,
          builder:(_)=>AlertDialog(
            title: const Text("Finished"),
            content: const Text("Meditation Completed"),
            actions:[
              TextButton(
                onPressed:(){
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: const Text("OK"),
              )
            ],
          ),
        );
      }
    });
  }

  @override
  void dispose(){
    timer?.cancel();
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    final m=secondsLeft~/60;
    final s=secondsLeft%60;
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Text(
          "$m:${s.toString().padLeft(2,'0')}",
          style: const TextStyle(fontSize:60,fontWeight:FontWeight.bold),
        ),
      ),
    );
  }
}
