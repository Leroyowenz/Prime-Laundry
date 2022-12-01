import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        ListTile(
            leading: const Icon(Icons.music_note),
            title: const Text('Music'),
            onTap: () => {}),
        ListTile(
          leading: const Icon(Icons.videocam),
          title: const Text('Video'),
          onTap: () => {},
        ),
      ],
    );
  }
}
