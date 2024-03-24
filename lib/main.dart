import 'package:chatterbox/constants/constants.dart';
import 'package:chatterbox/responsive/responsive_layout.dart';
import 'package:chatterbox/views/mobile_screen_layout.dart';
import 'package:chatterbox/views/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChatterBox',
      theme: ThemeData.dark().copyWith(
        primaryColor: appBarColor,
        scaffoldBackgroundColor: backgroundColor,
        colorScheme: ColorScheme.fromSeed(seedColor: appBarColor)
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
