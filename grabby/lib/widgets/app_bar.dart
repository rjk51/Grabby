import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {},
      ),
      title: Image.asset(
        'assets/images/logo1.png',
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
      centerTitle: true,
      backgroundColor: Colors.black,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            radius: 1.3,
            center: Alignment.center,
            colors: <Color>[Color.fromARGB(31, 251, 255, 0), Color(0x00eaff00)],
          ),
        ),
      ),
    );
  }
}
