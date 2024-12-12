import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';

import 'core/utils/config/locale/locale_model.dart';

abstract final class AppInfo {
  const AppInfo();

  static const String baseURL = "https://hrms.roayaalum.com";

  static const String appName = "Roaya - HR";
  static const String appId = "com.roaya.hr";
  static const String appVersion = "1.0.0";
  static const int appBuildVersion = 1;

  static const bool isDebugMode = false;
  // static const bool isDebugMode = kDebugMode;

  /// default the work start at 9:00 am
  static const TimeOfDay workStartTime = TimeOfDay(hour: 9, minute: 0);

  /// default the work end at 5:00 pm but if null .. will calculated by
  /// adding [workingHours] to [workStartTime]
  static const TimeOfDay? workEndTime =
      null; //= TimeOfDay(hour: 17, minute: 0);

  /// Number of work hours if [workEndTime] is null ..
  /// will calculate end date by adding duration
  static const Duration workingHours = Duration(hours: 8);

  /// weekend to not send notification
  static const List<DaysInWeek> weekend = [
    DaysInWeek.friday,
    DaysInWeek.saturday,
  ];

  /// * To add locale .. You have to add it in package(flutter intel)
  /// and add text in its file .arb and don't forget to add it in info.plist file
  static const List<LocaleModel> supportedLocales = [
    LocaleModel(
      languageCode: "ar",
      countryCode: "EG",
      languageName: "العربية",
    ),
    LocaleModel(
      languageCode: "en",
      countryCode: "US",
      languageName: "English",
    ),
  ];

  // static const String appIcon = AppAssets.appIcon;
  // static const String splashIcon = AppAssets.splashIcon;
  // static const String splashAndroid12 = AppAssets.splashAndroid12;
}

enum DaysInWeek {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday;

  static bool isWeekend(int weekday) {
    return AppInfo.weekend.contains(DaysInWeek.values[weekday - 1]);
  }
}
