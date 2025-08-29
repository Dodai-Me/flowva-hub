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
              children: const [FirstPage(), SecondPage()],
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
            child: ElevatedButton(onPressed: () {}, child: Text('Get Started')),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
