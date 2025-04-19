import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart'; // Ensure defaultPadding is defined here.

class Knowledges extends StatelessWidget {
  const Knowledges({
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
            "Flutter Knowledge:",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const KnowledgeText(text: "RESTful API"),
        const KnowledgeText(text: "GetX StateManagement"),
        const KnowledgeText(text: "Provider StateManagement"),
        const KnowledgeText(text: "Riverpod StateManagement"),
        const KnowledgeText(text: "Firebase Tools"),
        const KnowledgeText(text: "GIT Knowledge"),
        const KnowledgeText(text: "Clean Architecture: MVC & MVVM"),
        const KnowledgeText(text: "Payment Gateway (Stripe,Paypal,..etc)"),
        const KnowledgeText(text: "Push Notification (Local,Firebase)"),
        const KnowledgeText(text: "Google_MLKit Packages"),
        const KnowledgeText(text: "Google Maps With All Features"),
        const KnowledgeText(text: "Security of App"),
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Django Knowledge:",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const KnowledgeText(text: "REST API"),
        const KnowledgeText(text: "Third-party service integration"),
        const KnowledgeText(text: "Database(MySql,Sqlite,Sql Server)"),
        const KnowledgeText(text: "Authentication(JWT,Token,OAuth,2FA)"),
        const KnowledgeText(text: "Django Forms(MVT)"),
        const KnowledgeText(text: "Real Time Data(Channels)"),
        const KnowledgeText(text: "Deployment & Docker"),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"), // Ensure this path is correct
          const SizedBox(width: defaultPadding / 2),
          Text(
            text,
            style: const TextStyle(
              overflow: TextOverflow.clip,
            ),
          ),
        ],
      ),
    );
  }
}
