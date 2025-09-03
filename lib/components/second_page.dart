import 'package:flowva_hub/constants.dart';
import 'package:flowva_hub/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
      child: ListView(
        children: [
          PageBox(
            angle: -0.05,
            heading: 'Designers Toolkit',
            firstImage: Assets.images.figma.path,
            secondImage: Assets.images.framer.path,
            thirdImage: Assets.images.canva.path,
            subtitle: '1,200 creatives trust this stack',
          ),
          SizedBox(height: 30),
          PageBox(
            angle: 0.05,
            heading: 'Indie Hacker\'s Essential',
            firstImage: Assets.images.blackwhitearrow.path,
            secondImage: Assets.images.notion.path,
            thirdImage: Assets.images.s.path,
            subtitle:
                'Curated by Sam Ortega  building profitable products solo',
          ),
          SizedBox(height: 30),
          PageBox(
            angle: -0.05,
            heading: 'Remote Team Starter Pack',
            firstImage: Assets.images.slack.path,
            secondImage: Assets.images.microyellow.path,
            thirdImage: Assets.images.purple.path,
            subtitle: 'Curated by Kendra Holt helping distributed teams thrive',
          ),
          SizedBox(height: 50),
          Text(
            'Work like the\n best',
            textAlign: TextAlign.center,
            style: kTextStyle.copyWith(
              fontSize: 35,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Discover proven tools from the people who master their craft',
            textAlign: TextAlign.center,
            style: kTextStyle.copyWith(fontSize: 13, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}

class PageBox extends StatelessWidget {
  const PageBox({
    super.key,
    required this.angle,
    required this.heading,
    required this.firstImage,
    required this.secondImage,
    required this.thirdImage,
    required this.subtitle,
  });

  final double angle;
  final String heading;
  final String firstImage;
  final String secondImage;
  final String thirdImage;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle,
      child: Container(
        width: 343,
        height: 130,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: Color(0xFFFDF6F7),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Color(0xFFFFD7D7)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              heading,
              style: kTextStyle.copyWith(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              children: [
                Image.asset(firstImage, width: 21, height: 32),
                SizedBox(width: 20),
                Image.asset(secondImage, width: 21, height: 32),
                SizedBox(width: 20),
                Image.asset(thirdImage, width: 32, height: 32),
              ],
            ),
            Text(
              subtitle,
              style: kTextStyle.copyWith(fontSize: 13, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
