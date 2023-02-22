import 'package:flutter_project/features/messenger/domain/message.dart';
import 'package:get/get.dart';

abstract class MessagesBehavior {
  RxList<Message> get rxMessages;
  void saveMessage();
}
