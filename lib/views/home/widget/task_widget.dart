// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child:  AnimatedContainer(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          duration: Duration(milliseconds: 600),
          decoration: BoxDecoration(
              color: MyColors.primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(0, 4),
                  blurRadius: 10,
                )
              ]),
          child: ListTile(
            leading: GestureDetector(
              onTap: () {},
              child: AnimatedContainer(
                  duration: Duration(milliseconds: 600),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: MyColors.primaryColor,
                    border: Border.all(
                        color: Colors.grey , width: (.8)),
                  ),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  )),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 3.0,bottom: 5),
              child: Text(
                "Done",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  // decoration: TextDecoration.lineThrough
                ),
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Description",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10.0, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Date",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            // fontWeight: FontWeight.w300
                          ),
                        ),
                        Text("Sub date",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            // fontWeight: FontWeight.w300
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}