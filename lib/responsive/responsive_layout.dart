
import 'package:chatterbox/constants/constants.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;

  const ResponsiveLayout({
    super.key,
    required this.mobileScreenLayout,
    required this.webScreenLayout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth > 900) {
          // WEB SCREEN
          return webScreenLayout;
        }
        return mobileScreenLayout;
      },
    );
  }
}
