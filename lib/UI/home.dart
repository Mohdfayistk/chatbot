import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../bloc/chatbot_bloc.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF282931),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 140.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 45.w),
                child: Container(
                  width: 319.w,
                  height: 234.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF3F3F3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                  ),
                  child: SizedBox(
                    width: 319.w,
                    height: 234.h,
                    child: Center(
                      child: Text(
                        'fayis',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 35.20.sp,
                          fontFamily: 'Barlow',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 110.w),
                child: GestureDetector(onTap: () {
                  BlocProvider.of<ChatbotBloc>(context).add(
                      FetchTranslate(text: controller.text));
                },
                  child: Container(
                    width: 190.w,
                    height: 80.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF3F3F3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Get',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.20.sp,
                          fontFamily: 'Barlow',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 45.w),
                  child: Container(
                      width: 319.w,
                      height: 234.h,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF3F3F3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                      child: SizedBox(
                          width: 319.w,
                          height: 234.h,
                          child: Center(
                            child: BlocProvider(
                              create: (context) => ChatbotBloc(),
                              child: Text(
                                'fayyh',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 35.20.sp,
                                  fontFamily: 'Barlow',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ))))
            ]));
  }
}
