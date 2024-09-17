import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';

class Fab extends StatelessWidget {
  const Fab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if (kDebugMode) {
          print("tap");
        }
      },
      child: Material(
        elevation: 1,
        // color: Colors.red,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: MyColors.primaryColor,
              borderRadius: BorderRadius.circular(15)
          ),
          child: const Icon(
            Icons.add,
            size: 32,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}