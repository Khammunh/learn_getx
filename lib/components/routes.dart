import 'package:get/get.dart';

import '../home_page.dart';
import '../pages/about_screen.dart';
import '../pages/contact_screen.dart';

var allPageRoutes = [
  GetPage(
    name: '/',
    page: () => const HomePage(),
  ),
  GetPage(
    name: '/about',
    page: () => const AboutScreen(),
  ),
  GetPage(
      name: '/contact',
      page: () => const ContactScreen(),
      transition: Transition.rightToLeft),
];
