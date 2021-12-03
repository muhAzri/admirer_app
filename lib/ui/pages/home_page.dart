import 'package:admirer_app/shared/theme.dart';
import 'package:admirer_app/ui/widgets/message_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(
          left: 22,
          top: 32,
          bottom: 32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello',
              style: whiteTextStyle.copyWith(
                fontSize: 24,
                fontWeight: bold,
              ),
            ),
            Text(
              'Admirers',
              style: whiteTextStyle.copyWith(
                fontSize: 32,
                fontWeight: bold,
              ),
            ),
          ],
        ),
      );
    }

    Widget searchBar() {
      return Container(
        margin: EdgeInsets.only(
          left: 22,
        ),
        width: double.infinity,
        height: 46,
        child: TextFormField(
          style: whiteTextStyle.copyWith(fontSize: 14),
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: kGreyColor,
              ),
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(8),
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: kGreyColor,
              ),
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(8),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: kGreyColor,
              ),
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(8),
              ),
            ),
            hintText: 'search by name',
            hintStyle: whiteTextStyle.copyWith(
              fontSize: 14,
              fontWeight: light,
            ),
            fillColor: kGreyColor,
            filled: true,
            focusColor: kWhiteColor,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 12,
            ),
          ),
        ),
      );
    }

    Widget searchButton() {
      return Container(
        width: 46,
        height: 46,
        margin: EdgeInsets.only(
          right: 22,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.horizontal(
            right: Radius.circular(8),
          ),
          color: kRedColor,
        ),
        child: IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/icon_search.png',
            width: 34,
          ),
        ),
      );
    }

    Widget writeButton() {
      return InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/write-page');
        },
        child: Container(
          width: 90,
          height: 50,
          decoration: BoxDecoration(
            color: kRedColor,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 36, vertical: 16),
            child: Image.asset(
              'assets/icon_write.png',
              width: 18,
              height: 18,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: ListView(
        children: [
          title(),
          Row(
            children: [
              Expanded(
                child: searchBar(),
              ),
              searchButton(),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          MessageCard(),
          MessageCard(),
          MessageCard(),
          MessageCard(),
          SizedBox(
            height: 60,
          )
        ],
      ),
      floatingActionButton: writeButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
