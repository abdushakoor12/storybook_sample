import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import 'package:storybook_sample/switch.dart';

void main() => runApp(const StorybookApp());

class StorybookApp extends StatelessWidget {
  const StorybookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Storybook(
      stories: [
        Story(
          name: 'Widgets',
          description: 'Testing Widgets',
          builder: (context) => Center(
            child: CustomSwitch(
              value: context.knobs.boolean(label: 'Enabled', initial: true),
              onChanged: (_) {},
            ),
          ),
        ),
      ],
    );
  }
}
