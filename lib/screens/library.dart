import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music/screens/nowplaying.dart';
import 'constants.dart';

class Library extends StatelessWidget {
  const Library({Key? key}) : super(key: key);
//genre card
Widget genreCard(String img,String title,String foll){
  return Container(
    padding: EdgeInsets.all(45),
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(gcard)),
    ),
    child: Column(children: <Widget>[
      CircleAvatar(
        backgroundImage: AssetImage(img),
        radius: 50,
      ),
      SizedBox(height: 15,),
      Text(title,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontFamily: 'Montserrat',
        fontSize: 18,
      ),),
      SizedBox(height: 5,),
      Text("$foll Followers",style: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w100,
        fontFamily: 'ProductSans',
        fontStyle: FontStyle.normal,
      ),)
    ],),
  );
}

//songcard
  Widget songcard(String img,String title,String artist){
  return Column(
    children: <Widget>[
      SizedBox(height: 10,),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(width: 20,),
          CircleAvatar(
            backgroundImage: AssetImage(img),
            radius: 30,
          ),
          SizedBox(width: 25,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
               Text(title,style: TextStyle(
                 fontWeight: FontWeight.w500,
                 fontFamily: 'ProductSans',
                 fontSize: 13,
                 letterSpacing: 1,
               ),),
              SizedBox(height: 5,),
              Text(artist,style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w100,
                fontFamily: 'Montserrat',
              ),)
            ],
          ),
        ],
      )
    ],
  );
  }

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget> [
              SizedBox(height: 50,),
              Padding(
                padding: EdgeInsets.only(left: 20,),
                child: Text('POPULAR',style: TextStyle(
                  letterSpacing: 3,
                  fontSize: 18,
                  fontFamily: 'ProductSans',
                  fontWeight: FontWeight.w500,
                  color: cblue,
                ),),
              ),
              SizedBox(height: 10,),
              //scrollview
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:<Widget> [
                    //calling genre widgets at top
                    genreCard(pop, "POP", '751,586'),
                    genreCard(hiphop, "HipHop", '85,006'),
                    genreCard(country, "Country", '600,148'),
                    genreCard(heavymetal, "Heavy Metal", '638,370'),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 40),
                child: Text("TRENDING",style: TextStyle(
                  letterSpacing: 3,
                  fontFamily: 'ProductSans',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: cblue,
                ),),
              ),
              SizedBox(height: 10,),
              //trending songs container
              Container(
                width: MediaQuery.of(context).size.width,
                height: 330,
                padding: EdgeInsets.fromLTRB(38, 27, 10, 12),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(scard)),
                ),
                child:SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                child: Column(
                  children: <Widget>[
                    //songcard
                    songcard( art1, 'Hope', 'XXXTENTACION'),
                    songcard( art2, 'Moonlight', 'XXXTENTACION'),
                    songcard( art3, 'Детство (Childhood)', 'RAUF &  FAIK'),
                    songcard( art4, 'Changes', 'XXXTENTACION'),
                    songcard( art5, 'Industry Baby', 'Lil Nas X & Jack Harlow'),
                    songcard(art6, 'Arcade', 'Duncan Laurence'),
                    songcard(art7, 'Ainsi bas la vida', 'Indila'),
                    songcard(art8, 'Look At Me!', 'XXXTENTACION'),
                    songcard(art9, 'Да Да Да (Da Da Da)', 'Tanir & Tyomcha'),
                    songcard(art10, 'Ex Bitch', 'XXXTENTACION'),

                  ],
                ),
              ),
              ),
              //navigationbuttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                       MaterialPageRoute(builder: (context)=>NowPlaying())
                      );
                    },
                      child: cbutton(play),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
