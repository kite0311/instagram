import 'package:flutter/material.dart';
import 'package:instagram/widgets/icons/user_icon.dart';

import '../widgets/icons/verified_icon.dart';
import '../widgets/instagram_post_item.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('フィード'),
        ),
        body: const InstagramPostList());
  }
}

/// Instagram投稿画面リスト
class InstagramPostList extends StatelessWidget {
  final List<String> images = const [
    'https://cdn.pixabay.com/photo/2023/03/29/19/32/man-7886201_640.jpg',
    'https://cdn.pixabay.com/photo/2024/01/03/19/37/photography-8486085_640.jpg',
    'https://cdn.pixabay.com/photo/2023/11/17/14/40/street-art-8394476_640.jpg',
    'https://cdn.pixabay.com/photo/2023/11/02/15/58/flower-8360946_640.jpg',
  ];

  const InstagramPostList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, index) {
        return InstagramPostWidget(
          imageUrl: images[index], // Replace with actual captions
        );
      },
    );
  }
}

/// Instagram投稿画面
class InstagramPostWidget extends StatelessWidget {
  final String imageUrl;

  const InstagramPostWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(color: Colors.black12),
                ),
                child: UserIcon(),
                padding: EdgeInsets.all(8),
              ),
              const SizedBox(
                width: 8,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'instagram',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      VerifiedIcon(),
                    ],
                  ),
                  Text(
                    'サンディエゴ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
                  ),
                ],
              ),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
            ],
          ),
        ),
        Column(
          children: [
            InstagramPostItem(imageUrl: imageUrl),
            Column(
              children: [
                Row(
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.favorite_border),
                        SizedBox(width: 8),
                        Icon(Icons.chat_bubble_outline),
                        SizedBox(width: 8),
                        Icon(Icons.send_outlined),
                      ],
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                    const Icon(Icons.more_horiz, size: 32),
                    const Spacer(
                      flex: 3,
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.archive_outlined)),
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      '「いいね！」',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Text(
                      '704,899件',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  "Hello, I'm Thunder Struck, a 30-year-old System Engineer. Passionate about crafting innovative solutions, I navigate the digital realm with expertise in system development. Embracing challenges, I strive to make a positive impact through cutting-edge technology. Let's build the future together! ⚡️👨‍💻 #TechEnthusiast",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
