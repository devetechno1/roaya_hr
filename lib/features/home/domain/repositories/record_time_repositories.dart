import 'package:geolocator/geolocator.dart';
import 'package:hr/core/status/status.dart';

import '../../data/models/attendance_model.dart';

abstract class RecordTimeRepositories {
  const RecordTimeRepositories();

  Future<Status<AttendanceModel>> recordTime(Position position);
}
