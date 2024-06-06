import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart' as toast;
import 'package:oktoast/oktoast.dart';

/// An abstract class that provides a method to display toast messages.
///
/// The `ToastFile` class defines a method for showing toast notifications with customizable
/// parameters such as message text, background color, position, duration, text style, and corner radius.
///
/// Example usage:
/// ```dart
/// class MyToast extends ToastFile {
///   @override
///   void toastMsg({
///     required String msg,
///     Color? backgroundColor,
///     ToastPosition? position,
///     Duration? duration,
///     TextStyle? textStyle,
///     double? radius,
///   }) {
///     super.toastMsg(
///       msg: msg,
///       backgroundColor: backgroundColor,
///       position: position,
///       duration: duration,
///       textStyle: textStyle,
///       radius: radius,
///     );
///   }
/// }
/// ```
abstract class ToastFile {
  /// Displays a toast message with the specified parameters.
  ///
  /// Parameters:
  /// - [msg] (`String`): The message to display in the toast. This parameter is required.
  /// - [backgroundColor] (`Color?`): The background color of the toast. Defaults to a black color with 80% opacity if not provided.
  /// - [position] (`ToastPosition?`): The position where the toast will be displayed. Defaults to `ToastPosition.center` if not provided.
  /// - [duration] (`Duration?`): The duration for which the toast will be displayed. Defaults to 5 seconds if not provided.
  /// - [textStyle] (`TextStyle?`): The style to use for the toast message text. Defaults to a white, 12-point font if not provided.
  /// - [radius] (`double?`): The radius of the corners of the toast. Defaults to 13.0 if not provided.
  ///
  /// Example:
  /// ```dart
  /// toastMsg(
  ///   msg: "This is a toast message.",
  ///   backgroundColor: Colors.red,
  ///   position: ToastPosition.bottom,
  ///   duration: Duration(seconds: 3),
  ///   textStyle: TextStyle(fontSize: 16.0, color: Colors.yellow),
  ///   radius: 10.0,
  /// );
  /// ```
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