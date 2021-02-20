import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otto_login_page/app/model/social_item.dart';
import 'package:otto_login_page/app/ui/shared/otto_login_colors.dart';

class SocialMediaCarousel extends StatelessWidget {
  final List<SocialItem> socialItems;
  final Function onPageChanged;

  const SocialMediaCarousel({this.socialItems, this.onPageChanged});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 1,
        scrollDirection: Axis.vertical,
        height: 70,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        pauseAutoPlayOnTouch: true,
        aspectRatio: 2.0,
        onPageChanged: onPageChanged,
      ),
      items: socialItems.map((item) {
        return Container(
          decoration: BoxDecoration(
            color: item.slideColor,
            borderRadius: BorderRadius.circular(3),
          ),
          height: 70,
          child: Row(
            children: [
              FlatButton(
                child: Text(
                  item.text,
                  style: TextStyle(
                      fontSize: 17, color: OttoColors.white, letterSpacing: 1),
                ),
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
