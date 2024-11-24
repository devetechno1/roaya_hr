import 'package:equatable/equatable.dart';

class AttendanceModel extends Equatable {
  final int id;
  final int employeeId;
  final String date;
  final String status;
  final String? clockIn;
  final String? clockOut;
  final Duration late;
  final Duration? earlyLeaving;
  final Duration overtime;
  final Duration totalRest;
  final int createdBy;
  final DateTime createdAt;
  final DateTime updatedAt;

  const AttendanceModel({
    required this.id,
    required this.employeeId,
    required this.date,
    required this.status,
    required this.clockIn,
    this.clockOut,
    required this.late,
    this.earlyLeaving,
    required this.overtime,
    required this.totalRest,
    required this.createdBy,
    required this.createdAt,
    required this.updatedAt,
  });

  factory AttendanceModel.fromJson(Map<String, dynamic> json) {
    String? cloCkInJson = json['clock_in'] as String?;
    String? cloCkOutJson = json['clock_out'] as String?;
    if(cloCkInJson == '00:00:00') cloCkInJson = null;
    if(cloCkOutJson == '00:00:00') cloCkOutJson = null;
    return AttendanceModel(
      id: json['id'] as int,
      employeeId: json['employee_id'] as int,
      date: json['date'] as String,
      status: json['status'] as String,
      clockIn: cloCkInJson,
      clockOut: cloCkOutJson,
      late: _parseDuration(json['late'] as String),
      earlyLeaving: json['early_leaving'] != null
          ? _parseDuration(json['early_leaving'] as String)
          : null,
      overtime: _parseDuration(json['overtime'] as String),
      totalRest: _parseDuration(json['total_rest'] as String),
      createdBy: json['created_by'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'employee_id': employeeId,
      'date': date,
      'status': status,
      'clock_in': clockIn,
      'clock_out': clockOut,
      'late': late.toString(),
      // 'early_leaving':
      //     earlyLeaving != null ? _durationToString(earlyLeaving!) : null,
      // 'overtime': _durationToString(overtime),
      // 'total_rest': _durationToString(totalRest),
      'created_by': createdBy,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }

  static Duration _parseDuration(String duration) {
    final parts = duration.split(':').map(int.parse).toList();
    return Duration(hours: parts[0], minutes: parts[1], seconds: parts[2]);
  }

  // static String _durationToString(Duration duration) {
  //   return duration.toString().split('.').first.padLeft(8, "0");
  // }

  @override
  List<Object?> get props => [
        id,
        employeeId,
        date,
        status,
        clockIn,
        clockOut,
        late,
        earlyLeaving,
        overtime,
        totalRest,
        createdBy,
        createdAt,
        updatedAt,
      ];
}
