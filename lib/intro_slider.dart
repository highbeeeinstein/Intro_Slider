import 'package:flutter/material.dart';
import 'package:flutter_intro_slider_example/home.dart';
import 'package:flutter_intro_slider_example/splash_screen.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroSliderPage extends StatefulWidget {
  // var melo = myMethod();
  @override
  _IntroSliderPageState createState() => _IntroSliderPageState();

  static myMethod() {
        TextButton(
      onPressed: (){
        launch("https://tech-u.edu.ng/press-release/");
      }, 
      child: Text("Read More", style: TextStyle(color: Colors.blue),)
      );
  }
}

class _IntroSliderPageState extends State<IntroSliderPage> {
  // ignore: deprecated_member_use
  List<Slide> slides = new List();

  @override
  void initState() {
    
    super.initState();
    slides.add(
      new Slide(
       
        title: "Welcome to Tech-U",
        description:
            "The easiest way to order food from your favorite restaurant!",
        pathImage: "assets/image1.jpg",
        // widthImage: 500,
        // heightImage: 100,
        // foregroundImageFit: BoxFit.fill,
        // backgroundImage: "assets/images/travel.png",
        // backgroundImageFit: BoxFit.cover,
      ),
       
    );
   
    slides.add(
      new Slide(
        
        title: "SPECIAL RELEASE",
        // ignore: unnecessary_brace_in_string_interps
        description: "Resumption of Academic Activities In First Technical University",
        pathImage: "assets/image2.jpg",
      ),
    );
    slides.add(
      new Slide(
        title: "LATEST NEWS",
        description: "Tech-U Inaugurates Science Lab",
        pathImage: "assets/image4.png",
      ),
    );
    slides.add(
      new Slide(
        
        title: "World Travel",
        description: "Book tickets of any transportation and travel the world!",
        pathImage: "assets/image5.jpg",
      ),
    );
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = [];
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(
        
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Container(
            // width: 400,
            margin: EdgeInsets.only(bottom: 110, top: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    currentSlide.title,
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 700,
                  height: 300,
                  // padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    // shape: BoxShape.circle,

                    color: Colors.white,
                  ),
                  child: Image.asset(
                    currentSlide.pathImage,
                    fit: BoxFit.fill,
                    matchTextDirection: true,
                    // height: 200,
                    // width: 600,
                  ),
                ),
                 SizedBox(
                  height: 20,
                ),
                Container( 
                  padding: EdgeInsets.symmetric(
                    // horizontal: 20,
                  ),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.spaceAround,
                    children: [
                      Text(
                        currentSlide.description ,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          // height: 1.5,
                        ),
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                      // myMethod(
                      //   if () {
                          
                      //   }
                      // ),

                      // TextButton(
                      //     onPressed: (){
                      //      launch("https://tech-u.edu.ng/press-release/");
                      //      }, 
                      //      child: Text("Read More", style: TextStyle(color: Colors.red, fontSize: 25),)
                      //   ),
                    ],
                  ),
                  margin: EdgeInsets.only(
                    top: 15,
                    left: 20,
                    right: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      backgroundColorAllSlides: Colors.green[700],
      renderSkipBtn: Text("Skip"),
      renderNextBtn: Text(
        "Next",
        style: TextStyle(color: Colors.green[700]),
      ),
      renderDoneBtn: Text(
        "Done",
        style: TextStyle(color: Colors.green[700]),
      ),
      colorDoneBtn: Colors.white,
      colorActiveDot: Colors.white,
      sizeDot: 8.0,
      typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,
      listCustomTabs: this.renderListCustomTabs(),
      scrollPhysics: BouncingScrollPhysics(),
      shouldHideStatusBar: false,
      onDonePress: () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => Splash_Screen(),
          // HomePage(),
        ),
      ),
    );
  }

  myMethod()  {
  
  //  return TextButton(
  //     onPressed: (){
  //       launch("https://tech-u.edu.ng/press-release/");
  //     }, 
  //     child: Text("Read More", style: TextStyle(color: Colors.blue),)
  //     );

  }
}
class Buttton1 extends StatelessWidget {
  const Buttton1({ key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        launch("https://tech-u.edu.ng/press-release/");
      }, 
      child: Text("Read More", style: TextStyle(color: Colors.blue),)
      );
  }
}
