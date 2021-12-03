import 'package:admirer_app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WriteMessageCard extends StatelessWidget {
  const WriteMessageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      margin: EdgeInsets.only(left: 36, top: 204, right: 36, bottom: 40),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image_write_card.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/icon_star.png',
                width: 18,
                height: 18,
              ),
              SizedBox(
                width: 14,
              ),
              Text(
                'To :',
                style: whiteTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                width: 6,
              ),
              Expanded(
                //Name Input
                child: TextFormField(
                  style: whiteTextStyle.copyWith(
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Name *max 12 line",
                    hintStyle: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(12),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 42, right: 28),
              //Message Input
              child: TextFormField(
                minLines: 1,
                maxLines: 5,
                style: whiteTextStyle.copyWith(
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Your Message here",
                  hintStyle: greyTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
                inputFormatters: [
                  LengthLimitingTextInputFormatter(100),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
