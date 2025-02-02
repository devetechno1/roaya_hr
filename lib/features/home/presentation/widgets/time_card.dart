import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr/core/utils/constants/app_constants.dart';
import 'package:intl/intl.dart';

class TimeCard extends StatelessWidget {
  const TimeCard({
    super.key,
    required this.title,
    this.time,
    this.isLoading = false,
    this.isEnded = false,
  });
  final String title;
  final String? time;
  final bool isLoading;
  final bool isEnded;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0.5 * AppConst.defaultPadding),
      decoration: BoxDecoration(
        color: isEnded
            ? Colors.black87
            : time != null
                ? Colors.green
                : Colors.grey,
        borderRadius: BorderRadius.circular(AppConst.borderRadius),
      ),
      child: Column(
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              title,
              style: context.textTheme.headlineSmall?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Visibility(
              visible: !isLoading,
              replacement: const Center(
                child: CircularProgressIndicator(color: Colors.white),
              ),
              child: Text(
                time == null
                    ? DateFormat("HH:mm").format(DateTime(2030))
                    : time!,
                style: context.textTheme.headlineMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
