import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart' as toast;
import 'package:oktoast/oktoast.dart';

abstract class ToastFile {
  void toastMsg({
    required String msg,
    Color? backgroundColor,
    ToastPosition? position,
    Duration? duration,
    TextStyle? textStyle,
    double? radius,
  }) {
    toast.showToast(
      msg,
      position: position ?? ToastPosition.center,
      backgroundColor: backgroundColor ?? Colors.black.withOpacity(0.8),
      radius: radius ?? 13.0,
      duration: duration ?? const Duration(seconds: 5),
      textStyle:
          textStyle ?? const TextStyle(fontSize: 12.0, color: Colors.white),
      dismissOtherToast: true,
    );
  }
}
