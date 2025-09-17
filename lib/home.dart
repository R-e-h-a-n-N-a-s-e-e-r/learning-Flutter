import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinput/pinput.dart';
import 'package:readmore/readmore.dart';
import 'package:badges/badges.dart' as badges;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Pub dev"),
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Pinput(
                onChanged: (value){},
                length: 5,
                defaultPinTheme:PinTheme(
                  width: 45,
                  height: 56,
                  textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(5),
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// children: [
// Icon(FontAwesomeIcons.houseMedicalCircleCheck),
// ReadMoreText(
// 'The Annotation feature enhances the interactivity and functionality of the text content. You can define custom styles and interactions for patterns like hashtags, URLs, and mentions.',
// trimMode: TrimMode.Line,
// trimLines: 2,
// colorClickableText: Colors.pink,
// trimCollapsedText: 'Show more',
// trimExpandedText: 'Show less',
// moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
// ),
// badges.Badge(
// badgeContent: Text('6'),
// badgeAnimation: badges.BadgeAnimation.slide(),
// child: Icon(Icons.account_circle),
// ),
// badges.Badge(
// badgeContent: Text('2'),
// badgeAnimation: badges.BadgeAnimation.rotation(),
// child: Icon(FontAwesomeIcons.anchorCircleXmark),
// ),
// badges.Badge(
// badgeContent: Text('1'),
// badgeAnimation: badges.BadgeAnimation.fade(),
// child: Icon(FontAwesomeIcons.alarmClock),
// ),
// Row(
// // mainAxisSize: MainAxisSize.min,
// children: <Widget>[
// const SizedBox(width: 20.0, height: 100.0),
// const Text('Be', style: TextStyle(fontSize: 43.0)),
// const SizedBox(width: 20.0, height: 100.0),
// DefaultTextStyle(
// style: const TextStyle(fontSize: 40.0, color: Colors.black),
// child: AnimatedTextKit(
// animatedTexts: [
// RotateAnimatedText('AWESOME'),
// RotateAnimatedText('OPTIMISTIC'),
// RotateAnimatedText('DIFFERENT'),
// ],
// ),
// ),
// ],
// ),
// ],
