import 'package:flowva_hub/constants.dart';
import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  //For each card in the FirstPage except the first one

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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Colors.white.withValues(alpha: 0.4)),
      ),
      width: 343,
      height: 82,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(image, width: width, height: height),
                SizedBox(width: 10),
                Text(
                  name,
                  style: kTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(bill, style: kTextStyle.copyWith(fontSize: 18)),
                Text(
                  notice,
                  style: kTextStyle.copyWith(
                    fontSize: 15,
                    color: Colors.black26,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
