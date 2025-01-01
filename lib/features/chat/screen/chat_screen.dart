import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/features/chat/cubit/chat_cubit.dart';
import 'package:restaurant/shared/classes/text_style.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: BottomAppBar(
        padding: EdgeInsets.zero,
        height: 50.h,
        color: Colors.white,
        child: Container(
          height: 50.h,
          alignment: Alignment.center,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              left: BorderSide(
                width: 1.w,
                color: Colors.grey.withOpacity(0.50),
              ),
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(7, 2),
                blurRadius: 5,
                spreadRadius: 2,
                color: Colors.grey.withOpacity(0.5),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 50.w,
                height: 50.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    right: BorderSide(
                      width: 1.w,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    left: BorderSide(
                      width: 1.w,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(7, 2),
                      blurRadius: 5,
                      spreadRadius: 2,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                    hintText: "Type here...",
                    hintStyle: AppTextStyle.textStyle(
                      appFontSize: 10.sp,
                      appFontHeight: 12.1.sp,
                      appFontWeight: FontWeight.w500,
                      color: Color(0xff7D7D7D),
                    ),
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff7C0631),
        leadingWidth: 0,
        leading: SizedBox(),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Osama",
              style: AppTextStyle.textStyle(
                appFontSize: 16.sp,
                appFontHeight: 19.36.sp,
                appFontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            Container(
              height: 31.h,
              width: 31.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.r),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: BlocBuilder<ChatCubit, ChatState>(
        builder: (context, state) {
          return ListView.separated(
            padding: EdgeInsets.only(
              left: 16.w,
              right: 16.w,
              top: 58.h,
              bottom: 20.h,
            ),
            shrinkWrap: true,
            itemCount: ChatCubit.instance.chats.length,
            itemBuilder: (_, index) {
              return Align(
                alignment: ChatCubit.instance.chats[index].isMe == true
                    ? Alignment.centerLeft
                    : Alignment.centerRight,
                child: Column(
                  spacing: 8.h,
                  crossAxisAlignment:
                      ChatCubit.instance.chats[index].isMe == true
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      ChatCubit.instance.chats[index].name,
                      style: AppTextStyle.textStyle(
                        appFontSize: 12.sp,
                        appFontHeight: 14.52.sp,
                        appFontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Directionality(
                      textDirection:
                          ChatCubit.instance.chats[index].isMe == true
                              ? TextDirection.ltr
                              : TextDirection.rtl,
                      child: Row(
                        spacing: 8.w,
                        children: [
                          Container(
                            height: 31.h,
                            width: 31.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.r),
                              border: Border.all(
                                width: 1.w,
                                color: Colors.black.withOpacity(0.29),
                              ),
                            ),
                          ),
                          Container(
                            height: 31.h,
                            width: 151.w,
                            decoration: BoxDecoration(
                              borderRadius:
                                  ChatCubit.instance.chats[index].isMe == true
                                      ? BorderRadius.only(
                                          topRight: Radius.circular(6.r),
                                          bottomLeft: Radius.circular(6.r),
                                          bottomRight: Radius.circular(6.r),
                                        )
                                      : BorderRadius.only(
                                          topLeft: Radius.circular(6.r),
                                          bottomLeft: Radius.circular(6.r),
                                          bottomRight: Radius.circular(6.r),
                                        ),
                              color: ChatCubit.instance.chats[index].isMe
                                  ? Color(0xffD9FDD3)
                                  : Color(0xff7C0631).withOpacity(0.59),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      ChatCubit.instance.chats[index].date,
                      style: AppTextStyle.textStyle(
                        appFontSize: 10.sp,
                        appFontHeight: 12.1.sp,
                        appFontWeight: FontWeight.w500,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(height: 38.h),
          );
        },
      ),
    );
  }
}
