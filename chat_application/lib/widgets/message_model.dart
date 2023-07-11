class Message {
  final String senderId;
  final String recipientId;
  final String text;
  final DateTime createdAt;

  const Message({
    required this.senderId,
    required this.recipientId,
    required this.text,
    required this.createdAt,
  });

  static List<Message> messages = [
    Message(
      senderId: '2',
      recipientId: '1',
      text: 'hey man whats going on?',
      createdAt: DateTime(2022, 08, 01, 10, 10, 10).add(
        const Duration(seconds: 400),
      ),
    ),
    Message(
      senderId: '1',
      recipientId: '2',
      text: 'Not much how are you doing?',
      createdAt: DateTime(2022, 08, 01, 10, 10, 10).add(
        const Duration(seconds: 400),
      ),
    ),
    Message(
      senderId: '2',
      recipientId: '1',
      text: 'Great! Goin to the farm',
      createdAt: DateTime(2022, 08, 01, 10, 10, 10).add(
        const Duration(seconds: 400),
      ),
    ),
    Message(
      senderId: '3',
      recipientId: '2',
      text: 'hey man whats going on?',
      createdAt: DateTime(2022, 08, 01, 10, 10, 10).add(
        const Duration(seconds: 400),
      ),
    ),
    Message(
      senderId: '1',
      recipientId: '3',
      text: 'hey AAA man whats going on?',
      createdAt: DateTime(2022, 08, 01, 10, 10, 10).add(
        const Duration(seconds: 400),
      ),
    ),
  ];
}
