import 'package:flutter/material.dart';
import 'package:flutter_project/core/ui/core_ui.dart';
import 'package:flutter_project/features/messenger/presentation/controllers/messages_behavior.dart';
import 'package:get/get.dart';

class MessagesView extends StatefulWidget {
  final MessagesBehavior messagesBehavior;
  const MessagesView({
    super.key,
    required this.messagesBehavior,
  });

  @override
  State<MessagesView> createState() => _MessagesViewState();
}

class _MessagesViewState extends State<MessagesView> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final rxMessages = widget.messagesBehavior.rxMessages;
      return AnimatedList(
        reverse: true,
        //itemCount: rxMessages.length,
        padding: const EdgeInsets.all(12),
        itemBuilder: (context, index, animation) {
          final message = rxMessages[index];
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 6),
            decoration: BoxDecoration(
                color: context.appTheme.backgroundSecondary,
                borderRadius: BorderRadius.circular(8)),
            padding: const EdgeInsets.all(12),
            child: TextView(
              message.data,
            ),
          );
        },
      );
    });
  }
}
