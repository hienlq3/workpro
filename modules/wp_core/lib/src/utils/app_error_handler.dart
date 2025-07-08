import 'package:flutter/material.dart';
import 'package:wp_core/wp_core.dart';

class AppErrorHandler {
  static void handle(Object error, StackTrace stackTrace) {
    String userMessage = 'Đã xảy ra lỗi, vui lòng thử lại sau.';
    _showUserError(userMessage);
  }

  static void _showUserError(String message) {
    final context = navigatorKey.currentContext;
    if (context != null) {
      showDialog<void>(
        context: context,
        builder:
            (_) => AlertDialog(
              title: const Text('Thông báo'),
              content: Text(message),
              actions: [
                TextButton(
                  onPressed: () => context.popDialogAndMaybePage(),
                  child: const Text('Đóng'),
                ),
              ],
            ),
      );
    } else {
      debugPrint("⚠️ Không tìm thấy context để hiển thị dialog.");
    }
  }
}
