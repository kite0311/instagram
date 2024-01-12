import 'package:flutter/material.dart';

/// 認証マーク
class VerifiedIcon extends StatelessWidget {
  const VerifiedIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.verified, color: Colors.blue,size: 16,);
  }
}
