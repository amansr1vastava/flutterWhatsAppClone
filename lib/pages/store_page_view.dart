import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    final List<StoryItem> storyItems = [
      StoryItem.text('''volvo plz fix''', Colors.green),
      StoryItem.pageImage(NetworkImage(
          "https://pbs.twimg.com/media/C16w3mJWQAMOCl5.jpg")),
    ];
    return Material(
      child: StoryView(
        storyItems,
        controller: controller,
        inline: false,
        repeat: true,
      ),
    );
  }
}
