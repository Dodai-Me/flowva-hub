import 'dart:ui';

import 'package:flowva_hub/constants.dart';
import 'package:flutter/material.dart';
import 'package:flowva_hub/gen/assets.gen.dart';
import 'button.dart';
import 'card_tile.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: ListView(
        children: [
          ClipRRect(
            child: Container(
              width: 343,
              height: 150,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFFFBE5E5), Colors.white],
                  stops: [0.3, 1],
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Stack(
                children: [
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  Assets.images.framer.path,
                                  height: 24,
                                  width: 16,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Framer',
                                  style: kTextStyle.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '\$12',
                                  style: kTextStyle.copyWith(fontSize: 17),
                                ),
                                Text(
                                  'Billed in 4 days',
                                  style: kTextStyle.copyWith(
                                    fontSize: 15,
                                    color: Colors.black26,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Button(
                              containerColor: Color(0xFFF8DFEE),
                              textColor: Color(0xFF9013FE),
                              text: 'View',
                            ),
                            Button(
                              containerColor: Color(0xFFF4E1E7),
                              textColor: Colors.black,
                              text: 'Remind',
                            ),
                            Button(
                              containerColor: Color(0xFFFFE0E0),
                              textColor: Color(0xFF800000),
                              text: 'Cancel',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: BoxBorder.symmetric(
                        vertical: BorderSide(
                          color: Colors.white.withValues(alpha: 0.05),
                        ),
                        horizontal: BorderSide(
                          color: Colors.white.withValues(alpha: 0.1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),

          CardTile(
            image: Assets.images.figma.path,
            name: 'Figma',
            bill: '\$12',
            notice: 'Billed in 9 days',
            width: 16.0,
            height: 24.0,
          ),
          SizedBox(height: 20),
          CardTile(
            image: Assets.images.notion.path,
            name: 'Notion',
            bill: '\$12',
            notice: 'Billed in 16 days',
            width: 23,
            height: 23.96,
          ),
          SizedBox(height: 20),
          FrostedContainer(
            image: Assets.images.chatgpt.path,
            name: 'ChatGPT',
            bill: '\$12',
            notice: 'Billed in 12 days',
          ),
          SizedBox(height: 45),
          Text(
            'Keep track of every subscription',
            textAlign: TextAlign.center,
            style: kTextStyle.copyWith(
              fontSize: 35,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Stay on top of what you paid for',
            textAlign: TextAlign.center,
            style: kTextStyle.copyWith(fontSize: 13, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}

class FrostedContainer extends StatelessWidget {
  const FrostedContainer({
    super.key,
    required this.image,
    required this.name,
    required this.bill,
    required this.notice,
    this.child,
  });

  final String image;
  final String name;
  final String bill;
  final String notice;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        decoration: BoxDecoration(color: Colors.grey.withValues(alpha: 0.05)),
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: CardTile(
                image: image,
                name: name,
                bill: bill,
                notice: notice,
                width: 23,
                height: 23,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: BoxBorder.symmetric(
                  vertical: BorderSide(
                    color: Colors.white.withValues(alpha: 0.05),
                  ),
                  horizontal: BorderSide(
                    color: Colors.white.withValues(alpha: 0.1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
