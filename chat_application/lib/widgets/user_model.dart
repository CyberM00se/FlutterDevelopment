class User {
  final String id;
  final String name;
  final String lastName;
  final String imageUrl;

  const User({
    required this.id,
    required this.name,
    required this.lastName,
    required this.imageUrl,
  });

  static const List<User> users = [
    User(
        id: '1',
        name: 'John',
        lastName: 'Nobel',
        imageUrl:
            'https://images.unsplash.com/photo-1639747280804-dd2d6b3d88ac?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80'),
    User(
        id: '2',
        name: 'Kara',
        lastName: 'Thrace',
        imageUrl:
            'https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80'),
    User(
        id: '3',
        name: 'Lisa',
        lastName: 'Jones',
        imageUrl:
            'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2670&q=80'),
    User(
        id: '4',
        name: 'Bigbee',
        lastName: 'Balls',
        imageUrl:
            'https://images.unsplash.com/photo-1518020382113-a7e8fc38eac9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1317&q=80'),
  ];
}
