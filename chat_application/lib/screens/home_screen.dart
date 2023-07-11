import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/user_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List<User> users = User.users;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.secondary,
            ]),
      ),
      child: Scaffold(
        appBar: const _CustomAppbar(),
        body: Column(
          children: [_ChatContacts(height: height, users: users)],
        ),
      ),
    );
  }
}

class _ChatContacts extends StatelessWidget {
  const _ChatContacts({
    super.key,
    required this.height,
    required this.users,
  });

  final double height;
  final List<User> users;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.125,
      margin: const EdgeInsets.only(
        left: 20,
        top: 20,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: users.length,
        itemBuilder: ((context, index) {
          User user = users[index];
          return Container(
            margin: const EdgeInsets.only(right: 10),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(user.imageUrl),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  user.name,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

class _CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const _CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Chats',
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(fontWeight: FontWeight.bold),
      ),
      centerTitle: false,
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {
            Get.changeThemeMode(
                Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
            print(Get.isDarkMode);
          },
          icon: Icon(Get.isDarkMode ? Icons.dark_mode : Icons.light_mode),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
