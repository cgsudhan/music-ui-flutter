import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music/screens/library.dart';
import 'package:wave_progress_bars/wave_progress_bars.dart';
import 'constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class NowPlaying extends StatelessWidget {
   NowPlaying({Key? key}) : super(key: key);
//wave list values
  final List <double> values = [9.0, 31.0, 20.0, 15.0, 15.0, 16.0, 14.0, 27.0, 41.0, 0.0, 27.0, 51.0, 67.0, 42.0, 54.0, 60.0, 36.0, 66.0, 16.0, 3.0, 3.0, 64.0, 61.0, 51.0, 37.0, 41.0, 29.0, 46.0, 16.0, 55.0, 0.0, 0.0, 41.0, 44.0, 9.0, 66.0, 58.0, 64.0, 45.0, 29.0, 23.0, 50.0, 35.0, 21.0, 34.0, 7.0, 27.0, 35.0, 63.0, 29.0, 4.0, 36.0, 63.0, 60.0, 62.0, 59.0, 48.0, 38.0, 48.0, 23.0, 22.0, 49.0, 2.0, 39.0, 47.0, 1.0, 32.0, 43.0, 33.0, 27.0];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Color(0xffe4e5f0),
        systemNavigationBarColor: Color(0xffe4e5f0),
        systemNavigationBarDividerColor: Color(0xffe4e5f0),
      ),
        child: Scaffold(
          backgroundColor: Color(0xffe4e5f0),
          body: Column(
            children: <Widget>[
              SizedBox(height:60,),
              Row(
                children: <Widget>[
                  SizedBox(width: 10,),
                  GestureDetector(
                    child: cbutton(back),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> Library()),
                      );
                    },
                  ),
                  Spacer(),
                  Text('NOW  PLAYING',style: TextStyle(
                    color: cblue,
                    letterSpacing: 3,
                    fontFamily: 'ProductSans',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),),
                  Spacer(),
                  cbutton(options),
                  SizedBox(width:15),
                ],
              ),
              //disk
              Container(

                padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
                height: 350,
                width: 350,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage(disk))),
                child: CircleAvatar(
                  backgroundImage: AssetImage(albumart),
                ),
              ),
              SizedBox(height: 0,),
              Text('Hope',style: TextStyle(
                fontWeight: FontWeight.w200,
                color:cblue,
                fontFamily: 'Comfortaa',
                fontSize: 25,
              ),),
              SizedBox(height: 15,),
              //controllers
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  cbutton(previous),
                  cbutton(play),
                  cbutton(next),
                ],
              ),
              SizedBox(height: 30,),
              //wave
              Center(
                child: WaveProgressBar(
                  progressPercentage: 20,
                  listOfHeights: values,
                  width: 350,
                  initalColor: cblue.withAlpha(100),
                  progressColor: Colors.cyan,
                  backgroundColor: cwhite,
                  timeInMilliSeconds: 30,
                  isHorizontallyAnimated: false,
                  isVerticallyAnimated: false,
                ),
              ),
              SizedBox(height: 25,),
              //timestrip
              RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: cblue.withAlpha(100),
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '0 . 54 ',style: TextStyle(
                        color: cblue,
                        fontFamily: 'ProductSans',
                        fontWeight: FontWeight.w200,
                        fontSize: 16,
                      )
                      ),
                      TextSpan(
                        text:"  │  "
                      ),
                      TextSpan(
                        text:" 03 . 15",style: TextStyle(
                        fontSize:16,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'ProductSans',
                      )
                      ),
                    ]
                  )
              ),
              SizedBox(height: 30,),
              AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(
                  "'Okay, she keep cryin'.....",
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w500,
                      color: Color(0xff05dae6),
                    ),
                    speed: const Duration(milliseconds: 90),
                  ),
                  TyperAnimatedText(
                    " 'she keep cryin' every single night' ",
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'Comfortaa',
                      color: Color(0xff05dae6),
                    ),
                    speed: const Duration(milliseconds: 90),
                  ),
                  TyperAnimatedText(
                    "Day and night, on my mind....",
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w500,
                      color: Color(0xff05dae6),
                    ),
                    speed: const Duration(milliseconds: 90),
                  ),
                  TyperAnimatedText(
                    " please don't kill the vibe....",
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'Comfortaa',
                      color: Color(0xff05dae6),
                    ),
                    speed: const Duration(milliseconds: 90),
                  ),
                  TyperAnimatedText(
                    "Oh no, I swear to God,I be in my mind..",
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w500,
                      color: Color(0xff05dae6),
                    ),
                    speed: const Duration(milliseconds: 90),
                  ),
                  TyperAnimatedText(
                    "Swear I wanna die, yeah,when you...",
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'Comfortaa',
                      color: Color(0xff05dae6),
                    ),
                    speed: const Duration(milliseconds: 90),
                  ),
                  TyperAnimatedText(
                    "Cross mySaid I wanna die, yuh,...",
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w500,
                      color: Color(0xff05dae6),
                    ),
                    speed: const Duration(milliseconds: 90),
                  ),
                  TyperAnimatedText(
                    "no, I'm not alright,yuh I might start a riot, yuh,",
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'Comfortaa',
                      color: Color(0xff05dae6),
                    ),
                    speed: const Duration(milliseconds: 90),
                  ),
                  TyperAnimatedText(
                    "I'm so fuckin' tired, yuh So what's up? ",
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w500,
                      color: Color(0xff05dae6),
                    ),
                    speed: const Duration(milliseconds: 90),
                  ),
                  TyperAnimatedText(
                    " What you say? Feelin' good, I'm feelin' great",
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'Comfortaa',
                      color: Color(0xff05dae6),
                    ),
                    speed: const Duration(milliseconds: 90),
                  ),
                  TyperAnimatedText(
                    "Tired of the fuckin' hate, stackin' cheese all on my plate",
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w500,
                      color: Color(0xff05dae6),
                    ),
                    speed: const Duration(milliseconds: 90),
                  ),
                ],
                displayFullTextOnTap: true,
                repeatForever: true,
              ),
            ],
          ),
        ),
    );
  }
}
