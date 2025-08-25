import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:magnet_x_dao/constant/ui_helper.dart';

class DuoStackContainer extends StatelessWidget {
  const DuoStackContainer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 4),
          width: size.width * 0.91,
          child: Stack(
            children: [
              // Background Image
              SizedBox(
                height: size.height / 1.5,
                child: Image.asset(
                  "assets/images/musharaf.jpg",
                  fit: BoxFit.fill,
                ),
              ),

              // Positioned Blur Container
              Positioned(
                top: 70,
                left: 40,
                right: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20), // keep same radius
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 10.0,
                      sigmaY: 10.0,
                    ),
                    child: Container(
                      padding: EdgeInsets.only(
                        top: (size.height) / 20,
                        left: (size.height) / 30,
                        right: (size.height) / 30,
                      ),
                      width: size.width,
                      height: (size.height / 1.95),
                      decoration: BoxDecoration(
                        color: MGTColors.accent.withOpacity(0.15),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: "Welcome to ",
                                style: Styles.commonTextStyle(context,
                                    color: MGTColors.white),
                              ),
                              TextSpan(
                                text: "Duollance",
                                style: Styles.semiBoldHeaderTextStyle(context,
                                    color: Colors.black),
                              ),
                            ]),
                          ),
                          Styles.KspacingL,
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: "Ready to hire top talent or \n",
                                style: Styles.commonTextStyle(
                                  context,
                                  color: MGTColors.white,
                                  size: 20,
                                ),
                              ),
                              TextSpan(
                                text: "land your next gig?",
                                style: Styles.commonTextStyle(
                                  context,
                                  color: MGTColors.white,
                                  size: 20,
                                ),
                              ),
                            ]),
                          ),
                          Styles.KspacingM,
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text:
                                    "This is you go-to platform for finding skilled talents. whether you're \n",
                                style: Styles.commonTextStyle(
                                  context,
                                  color: MGTColors.white,
                                  size: 7.5,
                                ),
                              ),
                              TextSpan(
                                text:
                                    "building a dream team or chasing the next opportunity. Duoliance \n",
                                style: Styles.commonTextStyle(
                                  context,
                                  color: MGTColors.white,
                                  size: 7.5,
                                ),
                              ),
                              TextSpan(
                                text:
                                    "Connects you to the right people, project and purpose \n",
                                style: Styles.commonTextStyle(
                                  context,
                                  color: MGTColors.white,
                                  size: 7.5,
                                ),
                              ),
                            ]),
                          ),
                          SizedBox(
                            height: (size.height) / 15,
                          ),
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  18), // Adjust the radius
                              child: Image.asset(
                                "assets/images/Duo.jpeg",
                                fit: BoxFit
                                    .cover, // Makes sure the image fills properly
                              ),
                            ),
                          ),
                          SizedBox(
                            height: (size.height) / 10,
                          ),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: "Already have an account?\n",
                                style: Styles.commonTextStyle(
                                  context,
                                  color: MGTColors.white,
                                  size: 10,
                                ),
                              ),
                              TextSpan(
                                text: "Sign in",
                                style: Styles.commonTextStyle(
                                  context,
                                  color: MGTColors.white,
                                  size: 15,
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: size.height / 1.5,
          width: size.width * 0.07,
          decoration: BoxDecoration(
            color: MGTColors.white,
            border: Border.all(color: MGTColors.white),
          ),
        )
      ],
    );
  }
}
