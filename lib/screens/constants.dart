import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
//colors
const cwhite=Color(0xffeaebf3);
const cblue=Color(0xff0a3068);
//icons
const wave='assets/icons/wave.svg';
const back='assets/icons/back.svg';
const home='assets/icons/home.png';
const list='assets/icons/list.png';
const next='assets/icons/next.svg';
const options='assets/icons/options.svg';
const play='assets/icons/play.svg';
const podcast='assets/icons/podcast.png';
const previous='assets/icons/previous.svg';
const search='assets/icons/search.png';
//img
const button='assets/images/button.png';
const disk='assets/images/disk.png';
const albumart='assets/images/AlbumArt.jpeg';
const pop='assets/images/pop.jpg';
const hiphop='assets/images/hiphop.jpg';
const heavymetal='assets/images/heavymetal.jpg';
const country='assets/images/country.jpg';
const scard='assets/images/scard.png';
const gcard='assets/images/gcard.png';
const art1='assets/images/art1.png';
const art2='assets/images/art2.png';
const art3='assets/images/art3.jpg';
const art4='assets/images/art4.png';
const art5='assets/images/art5.png';
const art6='assets/images/art6.jpg';
const art7='assets/images/art7.jpg';
const art8='assets/images/art8.png';
const art9='assets/images/art9.jpg';
const art10='assets/images/art10.png';
//button
Widget cbutton(String symbol){
  return Container(
    padding: EdgeInsets.fromLTRB(25, 25, 20, 20),
    height: 80,
    width: 80,
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(button))
    ),
    child: SvgPicture.asset(symbol),
  );
}

