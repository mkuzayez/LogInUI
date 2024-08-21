import 'package:flutter/material.dart';
import 'package:login_ui/log_in.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterDocked,
          floatingActionButton: SizedBox(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 24, 0, 12),
              child: TextButton(
                child: const Text(
                  "Don't have an account? Sign up",
                  style: TextStyle(
                      color: Color.fromARGB(255, 106, 98, 183), fontSize: 18),
                ),
                onPressed: () {},
              ),
            ),
          ),
          resizeToAvoidBottomInset: false,
          body: const LogInScreen()),
    ),
  );
}
