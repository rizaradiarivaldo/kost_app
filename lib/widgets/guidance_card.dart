import 'package:flutter/material.dart';
import 'package:kost_app/models/guidance_model.dart';
import 'package:kost_app/theme.dart';

class GuidanceCard extends StatelessWidget {
  final Guidance guidance;
  GuidanceCard(this.guidance);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          guidance.imageUrl,
          width: 80,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              guidance.title,
              style: blackTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Updated ${guidance.updatedAt}',
              style: greyTextStyle,
            ),
          ],
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_right,
            color: greyColor,
          ),
        )
      ],
    );
  }
}
