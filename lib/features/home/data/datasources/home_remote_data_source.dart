import 'package:geolocator/geolocator.dart';
import 'package:hr/core/utils/constants/app_links.dart';
import 'package:hr/core/utils/services/api_services.dart';

import '../models/attendance_model.dart';

abstract class HomeRemoteDataSource {
  const HomeRemoteDataSource();
  Future<AttendanceModel> recordTime(Position position);
}

class HomeRemoteDataSourceImp extends HomeRemoteDataSource {
  const HomeRemoteDataSourceImp(this.apiServices);
  final APIServices apiServices;

  @override
  Future<AttendanceModel> recordTime(Position position) async {
    final Map<String, dynamic> res = await apiServices.post(
      AppLinks.attendanceRecord,
      {
        'latitude': position.latitude.toString(),
        'longtude': position.longitude.toString(),
      },
    );

    return AttendanceModel.fromJson(res);
  }
}
