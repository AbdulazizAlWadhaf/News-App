import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            'https://www.collegenp.com/uploads/2023/06/Benefits-of-Technology.jpg',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          'This is the Title of the news',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          'This is the subtitle of the news',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        )
      ],
    );
  }
}