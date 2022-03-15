// ignore: unused_import
import 'dart:io';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:beststar/transfer.dart';
import 'package:beststar/account.dart';
import 'package:beststar/payment.dart';
import 'package:beststar/lifestyle.dart';
import 'package:beststar/cheques.dart';
import 'package:beststar/loans.dart';
import 'package:beststar/bills.dart';
import 'package:beststar/login.dart';
import 'package:beststar/new.dart';
import 'package:beststar/unlock.dart';
import 'package:beststar/device.dart';
import 'package:beststar/home.dart';
import 'package:beststar/homee.dart';
import 'package:beststar/rewards.dart';
import 'package:beststar/support.dart';
import 'package:beststar/accounts.dart';
import 'package:beststar/live.dart';
import 'package:beststar/inflow.dart';
import 'package:beststar/faq.dart';
import 'package:beststar/report.dart';
import 'package:beststar/help.dart';
import 'package:beststar/customer.dart';
import 'package:beststar/social.dart';
import 'package:beststar/feed.dart';
import 'package:beststar/community.dart';
import 'package:beststar/suggestions.dart';
import 'package:beststar/otp.dart';
import 'package:beststar/password.dart';
import 'package:beststar/accountss.dart';
import 'package:beststar/beneficiaries.dart';
import 'package:beststar/transactions.dart';
// ignore: unused_import
import 'package:carousel_slider/carousel_slider.dart';
// ignore: unused_import
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// ignore: unused_import
import 'package:firebase_auth/firebase_auth.dart';
// ignore: unused_import
import 'package:cloud_firestore/cloud_firestore.dart';
// ignore: unused_import
import 'package:firebase_core/firebase_core.dart';
// ignore: unused_import
import 'firebase_options.dart';
// ignore: unused_import
import 'package:local_auth/local_auth.dart';
import 'package:beststar/accountnext.dart';
import 'package:beststar/transfernext.dart';
import 'package:beststar/paymentmethods.dart';
import 'package:beststar/billspayment.dart';
import 'package:beststar/lifestyles.dart';
import 'package:beststar/profile.dart';
// ignore: unused_import
import 'package:beststar/mobile.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      // ignore: deprecated_member_use
      accentColor: Colors.amber,
      primaryColor: Colors.white,
      brightness: Brightness.dark,
    ),
    initialRoute: '/home',
    routes: {
      '/': (context) => const Account(),
      '/transfer': (context) => const Transfer(),
      '/payment': (context) => const Payment(),
      '/bills': (context) => const Bills(),
      '/lifestyle': (context) => const Lifestyle(),
      '/cheques': (context) => const Cheques(),
      '/loans': (context) => const Loans(),
      '/new': (context) => const New(),
      '/login': (context) => const Login(),
      '/unlock': (context) => const Unlock(),
      '/device': (context) => const Device(),
      '/home': (context) => const Home(),
      '/homee': (context) => const Homee(),
      '/rewards': (context) => const Rewards(),
      '/support': (context) => const Support(),
      '/accounts': (context) => const Accounts(),
      '/live': (context) => const Live(),
      '/inflow': (context) => const Inflow(),
      '/faq': (context) => const Faq(),
      '/report': (context) => const Report(),
      '/help': (context) => const Help(),
      '/customer': (context) => const Customer(),
      '/social': (context) => const Social(),
      '/feed': (context) => const Feed(),
      '/community': (context) => const Community(),
      '/suggestions': (context) => const Suggestions(),
      '/account': (context) => const Account(),
      '/otp': (context) => const Otp(),
      '/password': (context) => const Password(),
      '/accountss': (context) => const Accountss(),
      '/beneficiaries': (context) => const Beneficiaries(),
      '/transactions': (context) => const Transactions(),
      '/accountnext': (context) => const Accountnext(),
      '/transfernext': (context) => const Transfernext(),
      '/paymentmethods': (context) => const Paymentmethods(),
      '/billspayment': (context) => const Billspayment(),
      '/lifestyles': (context) => const Lifestyles(),
      '/profile': (context) => const Profile(),
      '/mobile': (context) => const Mobile(),
    },
  ));
}
