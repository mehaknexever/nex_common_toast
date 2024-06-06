import 'package:flutter/material.dart';

class ContextManager {
  // Private static instance
  static final ContextManager _instance = ContextManager._internal();

  // Private constructor
  ContextManager._internal();

  // Factory constructor
  factory ContextManager() {
    return _instance;
  }

  // Variable to hold BuildContext
  BuildContext? _context;

  // Method to set context
  void setContext(BuildContext context) {
    _context = context;
  }

  // Method to get context
  BuildContext? get context => _context;
}