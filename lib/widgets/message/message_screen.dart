import 'package:firebase_crud/widgets/message/animated_prompt.dart';
import 'package:flutter/material.dart';

class MessageScreen {
  /// Displays an overlay on the screen
  static show(
    BuildContext context, {
    required String title,
    required String subTitle,
    required Icon icon,
    required Color iconContainerColor,
  }) {
    final overlay = OverlayEntry(
      builder: (context) {
        return Center(
          child: Material(
            child: AnimatedPromptWidget(
              title: title,
              subTitle: subTitle,
              icon: icon,
              iconContainerColor: iconContainerColor,
            ),
          ),
        );
      },
    );

    // Display the overlay
    final state = Overlay.of(context);
    state.insert(overlay);

    Future.delayed(const Duration(seconds: 3), () {
      overlay.remove();
    });
  }
}
