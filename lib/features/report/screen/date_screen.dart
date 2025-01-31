import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';
import 'package:restaurant/shared/classes/text_style.dart';
import 'package:restaurant/shared/extentions/navigations.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';
import 'package:scrollable_clean_calendar/utils/enums.dart';

class DateScreen extends StatefulWidget {
  const DateScreen({super.key});

  @override
  State<DateScreen> createState() => _DateScreenState();
}

class _DateScreenState extends State<DateScreen> {
  final calendarController = CleanCalendarController(
    minDate: DateTime.now(),
    maxDate: DateTime.now().add(Duration(days: 365)),
    onRangeSelected: (firstDate, secondDate) {},
    onDayTapped: (date) {},
    // readOnly: true,
    onPreviousMinDateTapped: (date) {},
    onAfterMaxDateTapped: (date) {},
    weekdayStart: DateTime.monday,
    // initialFocusDate: DateTime(2023, 5),
    // initialDateSelected: DateTime(2022, 3, 15),
    // endDateSelected: DateTime(2022, 3, 20),
  );
  @override
  Widget build(BuildContext context) {
    return
        // Scaffold(
        //   appBar: AppBar(
        //     backgroundColor: Color(0xff7C0631),
        //     leading: IconButton(
        //       onPressed: () {
        //         calendarController.clearSelectedDates();
        //       },
        //       icon: const Icon(
        //         Icons.clear,
        //         color: Colors.white,
        //       ),
        //     ),
        //     bottom: PreferredSize(
        //       preferredSize: Size(390.w, 117.h),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Text(
        //             "jul 1 - aug 20",
        //             style: AppTextStyle.textStyle(
        //               appFontSize: 16.sp,
        //               appFontWeight: FontWeight.w500,
        //               appFontHeight: 19.36.sp,
        //               color: Colors.white,
        //             ),
        //           ),
        //           IconButton(
        //             onPressed: () {
        //               calendarController.clearSelectedDates();
        //             },
        //             icon: const Icon(
        //               Icons.edit,
        //               color: Colors.white,
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //     actions: [
        //       GestureDetector(
        //         onTap: () {
        //           context.pop();
        //         },
        //         child: Padding(
        //           padding: EdgeInsets.symmetric(horizontal: 10.w),
        //           child: Text(
        //             "Done",
        //             style: AppTextStyle.textStyle(
        //               appFontSize: 10.sp,
        //               appFontWeight: FontWeight.w500,
        //               appFontHeight: 12.1.sp,
        //               color: Colors.white,
        //             ),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        //   body: Custom(),
        // );
        Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icons.arrow_downward),
      //   onPressed: () {
      //     calendarController.jumpToMonth(date: DateTime(2022, 8));
      //     setState(() {});
      //   },
      // ),
      appBar: AppBar(
        backgroundColor: Color(0xff7C0631),
        leading: IconButton(
          onPressed: () {
            calendarController.clearSelectedDates();
          },
          icon: const Icon(
            Icons.clear,
            color: Colors.white,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size(390.w, 117.h),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "jul 1 - aug 20",
                  style: AppTextStyle.textStyle(
                    appFontSize: 16.sp,
                    appFontWeight: FontWeight.w500,
                    appFontHeight: 19.36.sp,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    calendarController.clearSelectedDates();
                  },
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              context.pop();
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(
                "Done",
                style: AppTextStyle.textStyle(
                  appFontSize: 10.sp,
                  appFontWeight: FontWeight.w500,
                  appFontHeight: 12.1.sp,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
      body: ScrollableCleanCalendar(
        calendarController: calendarController,
        layout: Layout.BEAUTY,
        calendarCrossAxisSpacing: 0,
        monthTextAlign: TextAlign.left,
        daySelectedBackgroundColor: Color(0xff7C0631),
        daySelectedBackgroundColorBetween: Color(0xff7C0631).withOpacity(0.15),
        monthTextStyle: AppTextStyle.textStyle(
          appFontSize: 10.sp,
          appFontHeight: 12.1.sp,
          appFontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        dayTextStyle: AppTextStyle.textStyle(
          appFontSize: 10.sp,
          appFontHeight: 12.1.sp,
          appFontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        weekdayTextStyle: AppTextStyle.textStyle(
          appFontSize: 10.sp,
          appFontHeight: 12.1.sp,
          appFontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        showWeekdays: true,
        // dayDisableColor: Color(0xff7C0631),
        // dayBackgroundColor: Color(0xff7C0631),
      ),
    );
  }
}

class Custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PagedVerticalCalendar(
      startWeekWithSunday: true,

      /// customize the month header look by adding a week indicator
      monthBuilder: (context, month, year) {
        return Column(
          children: [
            /// create a customized header displaying the month and year
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Text(
                DateFormat('MMMM yyyy').format(DateTime(year, month)),
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),

            /// add a row showing the weekdays
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  weekText('Su'),
                  weekText('Mo'),
                  weekText('Tu'),
                  weekText('We'),
                  weekText('Th'),
                  weekText('Fr'),
                  weekText('Sa'),
                ],
              ),
            ),
          ],
        );
      },

      /// added a line between every week
      dayBuilder: (context, date) {
        return Column(
          children: [
            Text(DateFormat('d').format(date)),
            const Divider(),
          ],
        );
      },
    );
  }

  Widget weekText(String text) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Text(
        text,
        style: TextStyle(color: Colors.grey, fontSize: 10),
      ),
    );
  }
}
