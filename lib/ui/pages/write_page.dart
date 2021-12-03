import 'package:admirer_app/shared/theme.dart';
import 'package:admirer_app/ui/widgets/write_message_card.dart';
import 'package:flutter/material.dart';

class WritePage extends StatelessWidget {
  const WritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(
          top: 50,
          left: 36,
        ),
        child: Text(
          'Write Some Message',
          style: whiteTextStyle.copyWith(
            fontSize: 24,
            fontWeight: bold,
          ),
        ),
      );
    }

    Widget note() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 36),
        child: Text(
          '* Maximum Character : 100',
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget submitButton() {
      return InkWell(
        onTap: () {},
        child: Container(
          width: 200,
          height: 50,
          decoration: BoxDecoration(
            color: kRedColor,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 46, vertical: 7),
            child: Text(
              'Submit',
              style:
                  whiteTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title(),
            WriteMessageCard(),
            note(),
          ],
        ),
      ),
      floatingActionButton: submitButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
