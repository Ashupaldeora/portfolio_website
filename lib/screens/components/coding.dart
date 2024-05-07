import 'package:flutter/material.dart';

import '../../constants.dart';
import 'animated_progress_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearIndicator(
          percentage: 0.7,
          label: "dart",
        ),
        AnimatedLinearIndicator(
          percentage: 0.5,
          label: "C",
        ),
        AnimatedLinearIndicator(
          percentage: 0.4,
          label: "C++",
        )
      ],
    );
  }
}
