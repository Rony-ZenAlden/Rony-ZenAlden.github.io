import 'package:flutter/material.dart';
import '../../../components/animated_progress_indicator.dart';
import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.96,
          label: "Dart",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.91,
          label: "Python",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.51,
          label: "Go lang",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.70,
          label: "Java",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.64,
          label: "C#",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.80,
          label: "C++",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.90,
          label: "HTML",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.65,
          label: "CSS",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.52,
          label: "JavaScript",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.68,
          label: "PHP",
        ),
      ],
    );
  }
}
