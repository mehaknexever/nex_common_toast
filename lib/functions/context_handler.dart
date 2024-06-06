import 'package:flutter/material.dart';

/// A class for managing the application context.
///
/// The `ContextManager` class provides a way to set and retrieve the current `BuildContext`
/// within the application. It follows the singleton design pattern to ensure there's only
/// one instance of the context manager throughout the application.
///
/// Example usage:
/// ```dart
/// // Instantiate the ContextManager
/// ContextManager contextManager = ContextManager();
///
/// // Set the BuildContext
/// contextManager.setContext(context);
///
/// // Retrieve the BuildContext
/// BuildContext? currentContext = contextManager.context;
/// ```
class ContextManager {
  /// Private static instance
  static final ContextManager _instance = ContextManager._internal();

  /// Private constructor
  ContextManager._internal();

  /// Factory constructor
  factory ContextManager() {
    return _instance;
  }

  /// Variable to hold BuildContext
  BuildContext? _context;

  /// Sets the current BuildContext.
  ///
  /// Parameters:
  /// - [context] (`BuildContext`): The BuildContext to set.
  void setContext(BuildContext context) {
    _context = context;
  }

  /// Gets the current BuildContext.
  ///
  /// Returns:
  /// The current BuildContext, or `null` if not set.
  BuildContext? get context => _context;
}