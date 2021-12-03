import 'package:admirer_app/shared/theme.dart';
import 'package:flutter/material.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 164,
      width: double.infinity,
      margin: EdgeInsets.only(left: 36, right: 36, bottom: 30),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image_message_card.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/icon_star.png',
                width: 14,
                height: 14,
              ),
              SizedBox(
                width: 18,
              ),
              Text(
                'To :',
                style: whiteTextStyle.copyWith(fontWeight: semiBold),
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                //Name
                'Azri',
                style: whiteTextStyle.copyWith(fontWeight: semiBold),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium.',
              style: whiteTextStyle.copyWith(fontSize: 10),
            ),
          )
        ],
      ),
    );
  }
}
