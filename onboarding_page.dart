// ignore_for_file: import_of_legacy_library_into_null_safe, prefer_const_constructors, implementation_imports, unnecessary_import, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_11today21may/page/home_page.dart';
import 'package:flutter_application_11today21may/widget/button_widget.dart';
import 'package:introduction_screen/introduction_screen.dart';
//import 'package:introduction_screen/src/model/page_view_model.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Lorem ipsum',
              body:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eleifend quam sed euismod vhulputate, augue velit gravida purus, quis euismod vellt risus at fell.',
              image: buildImage('bg/car1.jpg'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Lorem ipsum',
              body:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eleifend quam sed euismod vhulputate, augue velit gravida purus, quis euismod vellt risus at fell',
              image: buildImage('bg/car1.jpg'),
              //decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Lorem ipsum',
              body:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eleifend quam sed euismod vhulputate, augue velit gravida purus, quis euismod vellt risus at fell',
              footer: ButtonWidget(
                text: 'NEXT',
                onClicked: () => goToHome(context),
              ),
              image: buildImage('bg/car1.jpg'),
              decoration: getPageDecoration(),
            ),
          ],
          done: Text('Read', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () => goToHome(context),
          showSkipButton: true,
          skip: Text('Skip'),
          onSkip: () => goToHome(context),
          next: Icon(Icons.arrow_forward),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          globalBackgroundColor: Theme.of(context).primaryColor,
          //skipFlex: 0,
          nextFlex: 0,
          // isProgressTap: false,
          // isProgress: false,
          // showNextButton: false,
          // freeze: true,
          // animationDuration: 1000,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => HomePage()),
      );

  Widget buildImage(String path) => Center(
          child: Image.asset(
        path,
      ));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        activeColor: Colors.orange,
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        //descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      );
}
