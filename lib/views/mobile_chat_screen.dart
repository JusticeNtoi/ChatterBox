
import 'package:chatterbox/constants/constants.dart';
import 'package:chatterbox/views/widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  final dynamic data;
  const MobileChatScreen({super.key, required this.data,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: appBarColor,
      appBar: AppBar(
        backgroundColor: appBarColor,
        foregroundColor: textColor,
        title: Text(
          data['name'].toString(),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.video_call,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child: ChatList(screenWidth: 1.0,),
          ),

          Container(
            height: 55,
            padding: const EdgeInsets.only(left: 8, right: 8, top: 4),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: const TextStyle(
                      color: textColor,
                    ),
                    decoration: InputDecoration(
                      fillColor: senderMessageColor,
                      filled: true,
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.emoji_emotions_outlined,
                          color: textColor,
                        ),
                      ),
                      suffixIcon: SizedBox(
                        width: 100,
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              padding: const EdgeInsets.all(12),
                              icon: const Icon(
                                Icons.attach_file,
                                color: textColor,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              padding: const EdgeInsets.all(12),
                              icon: const Icon(
                                Icons.camera_alt,
                                color: textColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      hintText: "Type a message",
                      hintStyle: const TextStyle(
                        color: textColor,
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.all(18),
                    ),
                  ),
                ),

                const SizedBox(width: 5,),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: appBarColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mic,
                      color: textColor,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 5,),
        ],
      ),
    );
  }
}
