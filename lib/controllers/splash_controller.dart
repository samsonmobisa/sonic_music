import 'package:get/get.dart';

class SplashScreenController {
  /*
  GET X
  * adding data to the list
  * add a variable RXInt

  * use the int to display data from the list
  * a function to switch the variable value (RxInt)

  * wrap the column in the splashcreen with an OBX()

  * pass the function to the button
  * and trigger the function using the button
  *
  * */


  //create a new RXList
  RxList bodyData = [
    {
      "image":"assets/Ellipse -1.png",
      "title":"Harmony Hub",
      "subTitle":"Discover. Listen. Enjoy.",
      "description":"Explore new music, listen to your favorites, and enjoy the ultimate music experience with our app",
      "primaryColor":0xff335571,
      "secondaryColor":0xff707070,
      "buttonText":"Power Up",
      "position":0,
    },
    {
      "image":"assets/Ellipse -2.png",
      "title":"TuneWave",
      "subTitle":"Where Sound Meets Soul",
      "description":"Let the power of music touch your soul as you embark on a musical adventure with us.",
      "primaryColor":0xff485045,
      "secondaryColor":0xffC8D0C2,
      "buttonText":"Songs Picked",
      "position":1,
    },
    {
      "image":"assets/Ellipse -3.png",
      "title":"Rhythmic Beats",
      "subTitle":"Your Gateway to the World of Music",
      "description":"Step into a world of endless musical possibilities with our app",
      "primaryColor":0xff858688,
      "secondaryColor":0xff707070,
      "buttonText":"Speakers Ready",
      "position":2,
    },
    {
      "image":"assets/Ellipse1.png",
      "title":"SoundSculpt",
      "subTitle":"Elevate Your Audio Experience",
      "description":" Elevate your audio experience like never before with our curated collection of tracks and playlists.",
      "primaryColor":0xffE5554D,
      "secondaryColor":0xffC8D0C2,
      "buttonText":"Songs Picked",
      "position":3,
    },
  ].obs;

  RxInt currentShowing = 0.obs;

  //this will change the value of title
  changeCurrentShowing(){
    print(currentShowing.value);
    currentShowing.value = currentShowing.value+1;
  }
}