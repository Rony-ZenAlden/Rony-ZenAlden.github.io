import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../constants.dart';
import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:html' as html;

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  void downloadCV() async {
    final ByteData data = await rootBundle.load('assets/images/CV.pdf');
    final Uint8List bytes = data.buffer.asUint8List();
    final blob = html.Blob([bytes]);
    final url = html.Url.createObjectUrlFromBlob(blob);
    final anchor = html.AnchorElement(href: url)
      ..setAttribute('download', 'My-CV.pdf')
      ..click();
    html.Url.revokeObjectUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    const AreaInfoText(
                      title: "Country",
                      text: "Syria",
                    ),
                    const AreaInfoText(
                      title: "City",
                      text: "Aleppo",
                    ),
                    const AreaInfoText(
                      title: "Age",
                      text: "24",
                    ),
                    const Skills(),
                    const SizedBox(height: defaultPadding),
                    const Coding(),
                    const Knowledges(),
                    const Divider(),
                    const SizedBox(height: defaultPadding / 2),
                    // TextButton(
                    //   onPressed: () {
                    //     downloadCV();
                    //   },
                    //   child: FittedBox(
                    //     child: Row(
                    //       children: [
                    //         Text(
                    //           "DOWNLOAD CV",
                    //           style: TextStyle(
                    //             color: Theme.of(context)
                    //                 .textTheme
                    //                 .bodyText1!
                    //                 .color,
                    //           ),
                    //         ),
                    //         const SizedBox(width: defaultPadding / 2),
                    //         SvgPicture.asset("assets/icons/download.svg")
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    Container(
                      margin: const EdgeInsets.only(top: defaultPadding),
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          const Spacer(),
                          IconButton(
                            onPressed: () async {
                              await launchUrl(
                                Uri.parse('https://github.com/Rony-ZenAlden'),
                              );
                            },
                            icon: SvgPicture.asset(
                              "assets/icons/github.svg",
                              height: 60,
                              width: 60,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          IconButton(
                            onPressed: () async {
                              await launchUrl(
                                Uri.parse(
                                    'https://www.linkedin.com/in/rony-zenalden-b288112ab?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app'),
                              );
                            },
                            icon: SvgPicture.asset(
                              "assets/icons/linkedin.svg",
                              height: 60,
                              width: 60,
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
