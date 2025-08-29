import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  const CardTile({
    super.key,
    required this.image,
    required this.name,
    required this.bill,
    required this.notice,
    required this.width,
    required this.height,
  });

  final String image;
  final String name;
  final String bill;
  final String notice;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 82,
      decoration: BoxDecoration(
        color: Color(0xFFFBE5E5),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(image, width: width, height: height),
                SizedBox(width: 10),
                Text(name),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(bill), Text(notice)],
            ),
          ],
        ),
      ),
    );
  }
}
