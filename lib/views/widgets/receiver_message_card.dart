
import 'package:chatterbox/constants/constants.dart';

class ReceiverMessageCard extends StatelessWidget {
  final String message;
  final String time;
  final double screenWidth;

  const ReceiverMessageCard({
    super.key,
    required this.message,
    required this.time,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * screenWidth - 60,
          minWidth: 120,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: receiverMessageColor,
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5,),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 5,
                  bottom: 20,
                ),
                child: Text(
                  message,
                  style: const TextStyle(
                    fontSize: 16,
                    color: textColor,
                  ),
                ),
              ),
              Positioned(
                bottom: 4,
                right: 10,
                child: Row(
                  children: [
                    Text(
                      time,
                      style: TextStyle(
                        fontSize: 12,
                        color: textColor.withOpacity(0.6),
                      ),
                    ),
                    const SizedBox(width: 5,),
                    Icon(
                      Icons.done_all,
                      size: 20,
                      color: textColor.withOpacity(0.6),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
