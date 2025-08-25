import 'package:flutter/material.dart';
import 'package:magnet_x_dao/constant/ui_helper.dart';
import 'package:magnet_x_dao/routesDir/view_routes.dart';
import 'package:magnet_x_dao/routesDir/routes.dart' as router;

import 'package:qr_flutter/qr_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomepageState();
}

class _HomepageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: router.Router.generateRoute,
      initialRoute: ViewRoutes.duoScreen,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: const [],
        ),
        backgroundColor: MGTColors.white,
        body: Column(
          children: <Widget>[
            Image.asset(
              "assets/images/magnetXbanner.jpeg",
              fit: BoxFit.fill,
            ),
            Styles.KspacingL,
            const CircleAvatar(
              radius: 180,
              backgroundImage: AssetImage("assets/images/musharaf.jpg"),
            ),
            Styles.KspacingL,
            Text(
              "MUSHARAF (OG)",
              style: Styles.boldHeaderTextStyle(context),
            ),
            Styles.KspacingS,
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: Styles.KpaddingS, vertical: Styles.KpaddingS),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Software Engr. 💻 | ",
                      style: Styles.semiBoldHeaderTextStyle(context),
                    ),
                    TextSpan(
                      text: " Testnets strategist 🪂 | ",
                      style: Styles.semiBoldHeaderTextStyle(context,
                          color: MGTColors.accent),
                    ),
                    TextSpan(
                      text: "I only share what i have tested 🧪 | ",
                      style: Styles.semiBoldHeaderTextStyle(context),
                    ),
                    TextSpan(
                      text: "Building MagnetXDAO",
                      style: Styles.semiBoldHeaderTextStyle(context),
                    ),
                  ],
                ),
              ),
            ),
            const DividerWidget(),
            QrImageView(
              data: "https://x.com/MagnetXDAO",
              size: 150,
              backgroundColor: Colors.white,
            ),
            Styles.KspacingL,
            Text(
              " Building the future of Web3 communities",
              // textAlign: TextAlign.center,
              style: Styles.commonTextStyle(
                context,
                // color: MGTColors.formError,
                size: 15,
                weight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.black,
      thickness: 1,
      indent: 30,
      endIndent: 30,
    );
  }
}
