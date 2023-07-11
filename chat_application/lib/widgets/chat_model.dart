import 'package:chat_application/widgets/message_model.dart';
import 'package:chat_application/widgets/user_model.dart';

class Chat {
  final String? id;
  final List<User>? users;
  final List<Message> messages;

  Chat({
    this.id,
    this.users = const <User>[],
    this.messages = const <Message>[],
  });

  Chat copyWith({
    String? id,
    List<User>? users,
    List<Message>? messages,
  }) {
    return Chat(
        id: id ?? this.id,
        users: users ?? this.users,
        messages: messages ?? this.messages);
  }

  static List<Chat> chats = [];
}
