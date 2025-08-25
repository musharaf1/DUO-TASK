import 'package:flutter/material.dart';
import 'package:magnet_x_dao/components/duo_stack_container.dart';
import 'package:magnet_x_dao/constant/ui_helper.dart';

class DuoTaskScreen extends StatefulWidget {
  const DuoTaskScreen({super.key});

  @override
  State<DuoTaskScreen> createState() => _DuoTaskScreenState();
}

class _DuoTaskScreenState extends State<DuoTaskScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MGTColors.body,
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: size.height / 4,
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    image: const DecorationImage(
                      image: AssetImage(
                        "assets/images/musharaf.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: size.height / 4,
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    image: const DecorationImage(
                      image: AssetImage(
                        "assets/images/musharaf.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height / 12,
          ),
          DuoStackContainer(size: size),
        ],
      ),
    );
  }
}
