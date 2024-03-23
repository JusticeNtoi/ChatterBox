

import 'package:chatterbox/constants/constants.dart';
import 'package:chatterbox/services/info.dart';
import 'package:chatterbox/views/widgets/receiver_message_card.dart';
import 'package:chatterbox/views/widgets/sender_messge_card.dart';

class ChatList extends StatelessWidget {
  final double screenWidth;
  const ChatList({super.key, this.screenWidth = 0.7});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (BuildContext context, int index) {
        if(messages[index]['isMe'] == true) {
          return SenderMessageCard(
            message: messages[index]['text'].toString(),
            time: messages[index]['time'].toString(),
            screenWidth: screenWidth,
          );
        } else {
          return ReceiverMessageCard(
            message: messages[index]['text'].toString(),
            time: messages[index]['time'].toString(),
            screenWidth: screenWidth,
          );
        }
      },
    );
  }
}
