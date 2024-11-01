import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Ripple extends StatelessWidget {
  const Ripple({super.key});

  @override
  Widget build(BuildContext context) {
    var size = Get.size; // Get the size of the screen

    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center, // Align all children to the center
          children: [
            // Bottom Circle (Black)
            Container(
              height: size.height * .25,
              width: size.width * .5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade500,
              ),
            ),
            // Middle Circle (Gray)
            Container(
              height: size.height * .20,
              width: size.width * .45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blueGrey.shade700,
              ),
            ),
            // Top Circle (Ripple Color)
            Container(
              height: size.height * .15,
              width: size.width * .40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black, // Ripple color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
