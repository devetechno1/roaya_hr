import 'package:geolocator/geolocator.dart';
import 'package:hr/core/status/status.dart';
import 'package:hr/core/utils/functions/execute_and_handle_remote_errors.dart';

import '../../domain/repositories/record_time_repositories.dart';
import '../datasources/home_local_data_source.dart';
import '../datasources/home_remote_data_source.dart';
import '../models/attendance_model.dart';

class RecordTimeRepositoriesImp extends RecordTimeRepositories {
  const RecordTimeRepositoriesImp({
    required this.remoteDataSource,
    required this.localDataSource,
  });
  final HomeRemoteDataSource remoteDataSource;
  final HomeLocalDataSource localDataSource;

  @override
  Future<Status<AttendanceModel>> recordTime(Position position) async {
    return executeAndHandleErrors<AttendanceModel>(
      () async {
        final AttendanceModel res = await remoteDataSource.recordTime(position);
        await localDataSource.updateUser(res);

        return res;
      },
    );
  }
}
