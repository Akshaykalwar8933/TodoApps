// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:todo_app/utils/constants/colors.dart';
import 'package:todo_app/views/home/widget/fab.dart';
import 'package:todo_app/views/home/widget/task_widget.dart';
import '../../utils/constants/images.dart';
import '../../utils/constants/text_strings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<int> testing = [];
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: Fab(),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60),
              height: 100.h,
              width: double.infinity,
              // color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30.h,
                    width: 30.w,
                    child: CircularProgressIndicator(
                      value: 1 / 3,
                      backgroundColor: Colors.grey,
                      valueColor: AlwaysStoppedAnimation(MyColors.primaryColor),
                    ),
                  ),
                  SizedBox(
                    width: 25.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        MyString.mainTitle,
                        style: textTheme.displayLarge,
                      ),
                      SizedBox(
                        height: 3.w,
                      ),
                      Text(
                        "1 of 3 task",
                        style: textTheme.titleMedium,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Divider(
                indent: 100.0,
                thickness: 2.0,
              ),
            ),
            SizedBox(
              height: 550,
              width: double.infinity,
              child: testing.isNotEmpty
                  ? ListView.builder(
                      itemCount: testing.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Dismissible(
                            key: Key(index.toString()),
                            direction: DismissDirection.horizontal,
                            onDismissed: (_) {},
                            background: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.delete_forever_outlined,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  MyString.deletedTask,
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                            child: TaskWidget());
                      })
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FadeIn(
                          child: SizedBox(
                            height: 200.h,
                            width: 200.w,
                            child: Lottie.asset(lottieImage,
                                animate: testing.isNotEmpty ? false : true),
                          ),
                        ),
                        FadeInUp(from: 30, child: Text(MyString.doneAllTask)),
                      ],
                    ),
            )
          ],
        ),
      ),
    );
  }
}
