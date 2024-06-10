import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart' as toast;
import 'package:oktoast/oktoast.dart';

/// An abstract class that provides a method to display toast messages.
///
/// The [ToastFile] class defines a method for showing toast notifications with customizable
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
  /// Displays a customizable toast message.
  ///
  /// The [toastMsg] function allows you to show a toast message with various
  /// customizable options such as message text, background color, position,
  /// duration, text style, border radius, text overflow handling, maximum text
  /// lines, text alignment, and text direction.
  ///
  /// The function uses default values for the optional parameters if they are
  /// not provided.
  ///
  /// Example usage:
  /// ```dart
  /// toastMsg(
  ///   msg: "Hello, World!",
  ///   backgroundColor: Colors.blue,
  ///   position: ToastPosition.bottom,
  ///   duration: Duration(seconds: 3),
  ///   textStyle: TextStyle(fontSize: 16.0, color: Colors.white),
  ///   radius: 10.0,
  ///   textOverflow: TextOverflow.ellipsis,
  ///   textMaxLines: 2,
  ///   textAlign: TextAlign.left,
  ///   textDirection: TextDirection.rtl,
  /// );
  /// ```
  ///
  /// Parameters:
  /// - [msg] (String): The message to be displayed in the toast.
  /// - [backgroundColor] (Color?, optional): The background color of the toast.
  ///   Defaults to `Colors.black.withOpacity(0.8)`.
  /// - [position] (ToastPosition?, optional): The position where the toast
  ///   should be displayed. Defaults to `ToastPosition.center`.
  /// - [duration] (Duration?, optional): The duration for which the toast
  ///   should be displayed. Defaults to `Duration(seconds: 5)`.
  /// - [textStyle] (TextStyle?, optional): The text style of the message.
  ///   Defaults to `TextStyle(fontSize: 12.0, color: Colors.white)`.
  /// - [radius] (double?, optional): The border radius of the toast.
  ///   Defaults to `13.0`.
  /// - [textOverflow] (TextOverflow?, optional): How the text should overflow.
  ///   Defaults to `TextOverflow.ellipsis`.
  /// - [textMaxLines] (int?, optional): The maximum number of lines for the
  ///   text. Defaults to `8`.
  /// - [textAlign] (TextAlign?, optional): How the text should be aligned.
  ///   Defaults to `TextAlign.center`.
  /// - [textDirection] (TextDirection?, optional): The text direction for the
  ///   message. Defaults to `TextDirection.ltr`.
  ///
  /// Note:
  /// Ensure the toast package is properly initialized and imported before
  /// using this function.
  static void toastMsg({
    required String msg,
    Color? backgroundColor,
    ToastPosition? position,
    Duration? duration,
    TextStyle? textStyle,
    double? radius,
    TextOverflow? textOverflow,
    int? textMaxLines,
    TextAlign? textAlign,
    TextDirection? textDirection,
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
      textOverflow: textOverflow ?? TextOverflow.ellipsis,
      textMaxLines: textMaxLines ?? 8,
      textAlign: textAlign ?? TextAlign.center,
      textDirection: textDirection ?? TextDirection.ltr,
    );
  }
}