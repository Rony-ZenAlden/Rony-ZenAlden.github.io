import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: const Color(0xFF242430),
        child: Column(
          children: [
            const Spacer(flex: 2),
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage(
                'assets/images/me2.png',
              ),
            ),
            const Spacer(),
            Text(
              "Rony ZenAlden",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const Text(
              "Flutter Developer & Back-End Developer",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                height: 1.5,
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
