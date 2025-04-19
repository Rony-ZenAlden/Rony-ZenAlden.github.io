
import 'package:url_launcher/url_launcher.dart';

class Project {
  final String? title, description;
  final Function? onTaps;

  Project({this.title, this.description, this.onTaps});
}

List<Project> demoProjects = [
  Project(
    onTaps: () {
      launchUrl(
        Uri.parse('https://github.com/Rony-ZenAlden/shop_smart'),
      );
    },
    title: "E-Commerce Complete App.",
    description:
        "In the first part of our complete e-commerce app, we show you how you can create a nice clean onboarding screen for your e-commerce app that can run both Android and iOS devices because it builds with flutter. Then on the second episode, we build a Sign in, Forgot Password screen with a custom error indicator.",
  ),
  Project(
    onTaps: () {
      launchUrl(
        Uri.parse('https://github.com/Rony-ZenAlden/book_store'),
      );
    },
    title: "Book-Store.",
    description:
    "Golang Project - With MySQL and Full Api to storage & create & show & update & delete books.",
  ),
  Project(
    onTaps: () {
      launchUrl(
        Uri.parse('https://github.com/Rony-ZenAlden'),
      );
    },
    title: "Complete Tiktok-Clone App.",
    description:
        "Imitate the Flutter app of Tik Tok. It mainly realizes the function of watching videos,You can brush the video very smoothly,Swipe left and right,A little love , Forgot Password screen with a custom error indicator , Translation Feature & Network Connection Checking & Theme Mode.",
  ),
  Project(
    onTaps: () {
      launchUrl(
        Uri.parse('https://github.com/Rony-ZenAlden/todo-task-backend'),
      );
    },
    title: "Todo-Task Back-End.",
    description:
    "This Go Lang Todo-Task Api is designed to provide users perfect experience most speed response.",
  ),
  Project(
    onTaps: () {
      launchUrl(
        Uri.parse('https://github.com/Rony-ZenAlden/instagram_app'),
      );
    },
    title: "Complete Instagram-Clone App.",
    description:
        "Instagram Clone Flutter - with Clean Architecture Firebase as backend (Full-Stack) , Forgot Password screen with a custom error indicator , Translation Feature & Network Connection Checking & Theme Mode.",
  ),
  Project(
    onTaps: () {
      launchUrl(
        Uri.parse('https://github.com/Rony-ZenAlden/Advance-Todo-Task'),
      );
    },
    title: "Advance Todo-Task App.",
    description:
        "This Flutter Todo-Task App is designed to provide users local storage with SqLite package to provide perfect experience, and with Api form Go Lang The performance is the Best.",
  ),
  Project(
    onTaps: () {
      launchUrl(
        Uri.parse('https://github.com/Rony-ZenAlden/covid_trackers'),
      );
    },
    title: "Covid-19 App.",
    description:
        "Covid Tracker is an Android app made with Flutter framework to provide worldwide information related to Covid-19 pandemic. The intended use of this app is to provide the public with honest and easy-to-navigate information regarding Covid-19. Providing users with this information can help lessen the spread of Covid-19 and inform users about how to stay safe.",
  ),
  Project(
    onTaps: () {
      launchUrl(
        Uri.parse('https://github.com/Rony-ZenAlden/whats_app'),
      );
    },
    title: "Chat App.",
    description:
        "A one-to-one chat app built on Flutter with firebase authentication and image sharing capability & Files what ever her type.",
  ),
  Project(
    onTaps: () {
      launchUrl(
        Uri.parse('https://github.com/Rony-ZenAlden/weather_app'),
      );
    },
    title: "Complete Weather App.",
    description:
        "This Flutter Weather App is designed to provide users with a sleek and intuitive weather experience, inspired by the Apple Weather App. It offers weather information for every city and locality worldwide, and even provides current location weather data. Whether you're a developer looking for a reference project or a weather enthusiast, this app is a great starting point.",
  ),
];
