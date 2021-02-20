import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otto_login_page/app/ui/shared/otto_login_colors.dart';
import 'package:otto_login_page/app/ui/widgets/carousel_indicators.dart';
import 'package:otto_login_page/app/ui/widgets/continue_button.dart';
import 'package:otto_login_page/app/ui/widgets/inputs/runner_input_without_label.dart';
import 'package:otto_login_page/app/ui/widgets/otto_rotated_button.dart';
import 'package:otto_login_page/app/ui/widgets/social_media_carousel.dart';
import 'package:otto_login_page/app/ui/widgets/welcome_text.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';

class LoginView extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
        viewModelBuilder: () => LoginViewModel(),
        builder: (context, model, child) => Scaffold(
              backgroundColor: OttoColors.primaryGrey,
              body: SafeArea(
                  child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/food1.jpg',
                        ),
                        fit: BoxFit.cover),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          OttoColors.primaryGrey,
                          OttoColors.secondaryGrey
                        ])),
                child: SingleChildScrollView(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Left column
                      Column(
                        children: [
                          SizedBox(height: 180),
                          RotatedButton(
                            text: 'LOG IN',
                            textColor: OttoColors.white,
                          ),
                          SizedBox(height: 25),
                          RotatedButton(
                            text: 'SIGN UP',
                            textColor: OttoColors.lightGrey,
                            onPress: model.onSignUpPressHandler,
                          ),
                          SizedBox(height: 255),
                          IndicatorsForCarousel(
                            listWidgets: model.mapForIndicators(
                                model.socialItems, (index, item) {
                              return CarouselIndicator(
                                currentIndex: model.currentIndex,
                                index: index,
                              );
                            }),
                          ),
                        ],
                      ),

                      //Right Column
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 80, left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              WelcomeText(text: 'Welcome back!'),
                              SizedBox(height: 5),
                              WelcomeText(text: 'Log in to continue to Otto'),
                              SizedBox(height: 180),

                              //Card
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: OttoColors.middleGrey,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.4),
                                      spreadRadius: 7,
                                      blurRadius: 15,
                                      offset: Offset(0, 6),
                                    )
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    OttoInputFieldWithoutLabel(
                                      keyboardType: TextInputType.emailAddress,
                                      textColor: OttoColors.white,
                                      controller: _emailController,
                                      hintText: 'Email',
                                      borderColor: Colors.transparent,
                                      onChanged: (text) {},
                                      onTap: () {},
                                    ),
                                    Divider(
                                      color: OttoColors.lightGrey,
                                      height: 1,
                                    ),
                                    OttoInputFieldWithoutLabel(
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      obscureText: true,
                                      textColor: OttoColors.white,
                                      controller: _passwordController,
                                      hintText: 'Password',
                                      borderColor: Colors.transparent,
                                      onChanged: (text) {},
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              ContinueButton(),
                              SizedBox(height: 80),
                              SocialMediaCarousel(
                                socialItems: model.socialItems,
                                onPageChanged: model.onChangeHandler,
                              ),
                              SizedBox(height: 30),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
            ));
  }
}

class IndicatorsForCarousel extends StatelessWidget {
  final List list;
  final List<Widget> listWidgets;

  const IndicatorsForCarousel({this.list, this.listWidgets});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 15),
        Column(children: listWidgets),
      ],
    );
  }
}
