import 'package:flowva_hub/constants.dart';
import 'package:flutter/material.dart';
import 'components/first_page.dart';
import 'components/second_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Flexible(
            fit: FlexFit.loose,
            child: PageView(
              controller: _controller,
              children: [FirstPage(), SecondPage()],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
            decoration: BoxDecoration(
              color: Color(0xFFE2D8D8),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 2,
              effect: WormEffect(
                dotHeight: 8,
                dotWidth: 8,
                activeDotColor: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            height: 48,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black45, Colors.black87],
                  stops: [0.0, 0.4],
                ),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                onPressed: () {},
                child: Text(
                  'Get Started',
                  style: kTextStyle.copyWith(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
