import 'dart:async';
import 'dart:io';

import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:hr/core/status/status.dart';
import 'package:hr/core/utils/config/locale/generated/l10n.dart';
import 'package:hr/core/utils/functions/handle_response_in_controller.dart';
import 'package:hr/core/utils/functions/show_my_snack_bar.dart';
import 'package:hr/core/utils/helper/geolocator_helper.dart';
import 'package:hr/core/utils/helper/network_helper.dart';

import '../../../login/data/models/user_model.dart';
import '../../data/models/attendance_model.dart';
import '../../domain/repositories/record_time_repositories.dart';

abstract class HomeController extends GetxController {
  UserModel user;
  final RecordTimeRepositories repo;
  HomeController({
    required this.user,
    required this.repo,
  });

  String? get startDate => user.startDate;
  String? get endDate => user.endDate;

  bool isLoading = false;

  bool showStatusCard = false;

  bool isDayEnded = false;

  Future<void> setLocation();

  void closeStatusDialog([bool isDayEnded = false]);
  void recordTime();

  void onPopInvoked();
}

class HomeControllerImp extends HomeController {
  HomeControllerImp({
    required super.user,
    required super.repo,
  });

  Position? _position;

  @override
  Future<void> setLocation() async {
    _position = await GeolocatorHelper.handlePermission();
  }

  @override
  void onInit() {
    showStatusCard = startDate != null;
    super.onInit();
  }

  @override
  void closeStatusDialog([bool isDayEnded = false]) {
    showStatusCard = false;
    this.isDayEnded = isDayEnded;
    update();
  }

  @override
  void recordTime() async {
    if (NetworkInfo.showSnackBarWhenNoInternet) return;

    isLoading = true;
    update();
    await setLocation();

    if (_position == null) {
      isLoading = false;
      update();
      return null;
    }

    Status<AttendanceModel> status = await repo.recordTime(_position!);

    handleResponseInController<AttendanceModel>(
      status: status,
      onSuccess: (data) {
        user = user.copyWith(startDate: data.clockIn, endDate: data.clockOut);
        showStatusCard = true;
      },
    );

    isLoading = false;
    _position = null;
    update();
  }

  DateTime _back = DateTime.now();
  @override
  void onPopInvoked() {
    if (DateTime.now().difference(_back) < const Duration(seconds: 2)) {
      exit(0);
    }
    ShowMySnackBar.call(
      S.current.pressAgainToExit,
      duration: const Duration(seconds: 2),
    );
    _back = DateTime.now();
  }
}
