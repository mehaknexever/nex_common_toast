<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

This package provides utility classes for logging messages with various severity levels and displaying customizable toast messages in Flutter applications.

## Features

- Log messages with different severity levels (info, error, warning, success) and color formatting.
- Filter logs by screen names.
- Customizable toast messages with options for text, background color, position, duration, text style, and more.

## Getting started

Add this package to your `pubspec.yaml` file:

```yaml
dependencies:
  nex_common_toast:
    git:
      url: https://github.com/mehaknexever/nex_common_toast.git
      ref: master
```

## Usage

# Logging
The AppLogs class provides static methods to log messages, errors, warnings, and success messages with optional color formatting.

```dart
import 'package:flutter/foundation.dart';
import 'path_to_log_color/log_color.dart';
import 'path_to_app_logs/app_logs.dart';

void main() {
  // Enable logging
  AppLogs.printHandle = false;

  // Log a message
  AppLogs.logMessage(
    fileName: "example.dart",
    text: "This is a log message.",
    msgColor: LogColors.green,
    textColor: LogColors.blue,
    fileNameColor: LogColors.yellow,
  );

  // Log an error
  AppLogs.logError(
    fileName: "example.dart",
    error: "An unexpected error occurred.",
    stackTrace: StackTrace.current,
    text: "This is additional information.",
    msgColor: LogColors.red,
    textColor: LogColors.blue,
    fileNameColor: LogColors.green,
    errorColor: LogColors.yellow,
    stackTraceColor: LogColors.cyan,
  );

  // Log a warning
  AppLogs.logWarning(
    fileName: "example.dart",
    error: "This is a warning message.",
    stackTrace: StackTrace.current,
    text: "This is additional information.",
    msgColor: LogColors.orange,
    textColor: LogColors.blue,
    fileNameColor: LogColors.green,
    errorColor: LogColors.yellow,
    stackTraceColor: LogColors.cyan,
  );

  // Log a success message
  AppLogs.logSuccess(
    fileName: "example.dart",
    text: "Operation completed successfully.",
    msgColor: LogColors.magenta,
    textColor: LogColors.green,
    fileNameColor: LogColors.blue,
  );
}
```

# Toast Messages
The ToastFile class provides a static method to display customizable toast messages.

```dart
import 'package:flutter/material.dart';
import 'path_to_toast_file/toast_file.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Toast Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              ToastFile.toastMsg(
                msg: "Hello, World!",
                backgroundColor: Colors.blue,
                position: ToastPosition.bottom,
                duration: Duration(seconds: 3),
                textStyle: TextStyle(fontSize: 16.0, color: Colors.white),
                radius: 10.0,
                textOverflow: TextOverflow.ellipsis,
                textMaxLines: 2,
                textAlign: TextAlign.left,
                textDirection: TextDirection.rtl,
              );
            },
            child: Text('Show Toast'),
          ),
        ),
      ),
    );
  }
}
```


## Notes

- Ensure the toast package is properly initialized and imported before using the ToastFile class.
- The LogColors enum should be predefined with appropriate color codes for use in log messages.
- The printHandle variable in AppLogs should be a boolean value indicating whether to handle print operations.
