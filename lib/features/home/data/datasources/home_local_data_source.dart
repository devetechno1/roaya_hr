import 'package:hive_flutter/hive_flutter.dart';

import '../../../login/data/models/user_model.dart';
import '../models/attendance_model.dart';

abstract class HomeLocalDataSource {
  const HomeLocalDataSource();
  Future<int> updateUser(AttendanceModel attendance);
}

class HomeLocalDataSourceImp extends HomeLocalDataSource {
  const HomeLocalDataSourceImp(this._userBox);
  final Box<Map> _userBox;

  @override
  Future<int> updateUser(AttendanceModel attendance) async {
    final UserModel user = UserModel.fromMap(_userBox.values.last);
    await _userBox.clear();

    return _userBox.add(
      user
          .copyWith(startDate: attendance.clockIn, endDate: attendance.clockOut)
          .toMap(),
    );
  }
}
