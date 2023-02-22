import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:flutter_project/features/messenger/domain/message.dart';
import 'package:injectable/injectable.dart';

import 'input_behavior.dart';
import 'messages_behavior.dart';

abstract class MessengerController {
  InputBehavior get inputBehavior;
  MessagesBehavior get messagesBehavior;
}

@Injectable(as: MessengerController)
class MessengerControllerImpl extends MessengerController
    implements InputBehavior, MessagesBehavior {
  @override
  final RxList<Message> rxMessages = RxList<Message>();

  @override
  void send(String message) {
    final text = message.trim();
    rxMessages.add(Message(text));
  }

  @override
  void saveMessage() {}

  @override
  MessagesBehavior get messagesBehavior => this;

  @override
  InputBehavior get inputBehavior => this;
}
