import 'package:flutter/material.dart';
import 'package:flowva_hub/gen/assets.gen.dart';
import 'button.dart';
import 'card_tile.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: 343,
          height: 150,
          decoration: BoxDecoration(
            color: Color(0xFFFBE5E5),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
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
                          Assets.images.logo.path,
                          height: 24,
                          width: 16,
                        ),
                        SizedBox(width: 10),
                        Text('Framer'),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [Text('\$12'), Text('Billed in 4 days')],
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
        CardTile(
          image: Assets.images.chatgpt.path,
          name: 'ChatGPT',
          bill: '\$12',
          notice: 'Billed in 24 days',
          width: 23,
          height: 23,
        ),
      ],
    );
  }
}
