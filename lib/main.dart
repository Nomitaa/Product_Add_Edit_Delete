import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:newpro/features/bottombar/bottom_bar.dart';
import 'core/theme/pallete.dart';


///riverpod



// ///provider-immutable
//
//
// final nameProvider = Provider((ref) {
//   return "hello";
// });
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Pallete.darkModeAppTheme,
      title: 'reddit tutorial',
        home: Bottomnavigation()
    );
  }
}
