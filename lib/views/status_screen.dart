import 'package:chatterbox/constants/constants.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Status Screen",
        style: TextStyle(
          color: textColor2,
        ),
      ),
    );
  }
}
