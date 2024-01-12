import 'package:flutter/material.dart';

/// ユーザーアイコン
class UserIcon extends StatelessWidget {
  const UserIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://static-00.iconduck.com/assets.00/instagram-icon-2048x2048-uc6feurl.png',
      width: 24,
      height: 24,
    );
  }
}
