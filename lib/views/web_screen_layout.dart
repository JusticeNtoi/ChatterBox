
import 'package:chatterbox/constants/constants.dart';
import 'package:chatterbox/views/widgets/chat_list.dart';
import 'package:chatterbox/views/widgets/contacts_list.dart';
import 'package:chatterbox/views/widgets/web_chat_appbar.dart';
import 'package:chatterbox/views/widgets/web_profile_bar.dart';
import 'package:chatterbox/views/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // WebProfileBar(),
                  WebSearchBar(),
                  ContactsList(),
                ],
              ),
            ),
          ),

          Container(
            width: MediaQuery.of(context).size.width*0.70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage2),
                fit: BoxFit.cover,
              )
            ),
            child: Column(
              children: [
                const WebChatAppBar(),
                const Expanded(
                  child: ChatList(),
                ),

                Container(
                  height: 70,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: dividerColor,
                      )
                    ),
                    color: appBarColor,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                      onPressed: () {},
                        icon: const Icon(
                          Icons.emoji_emotions_outlined,
                          color: textColor,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.attach_file,
                          color: textColor,
                        ),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                          ),
                          child: TextField(
                            style: const TextStyle(
                              color: textColor2,
                            ),
                            decoration: InputDecoration(
                              fillColor: searchBarColor,
                              filled: true,
                              hintText: "Type a message",
                              hintStyle: const TextStyle(
                                color: receiverMessageColor,
                                fontSize: 14,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(28),
                                borderSide: BorderSide.none,
                              ),
                              contentPadding: const EdgeInsets.only(left: 15, right: 15,),
                            ),
                          ),
                        ),
                      ),

                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: textColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.mic,
                            color: appBarColor,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),

        ],
      )
    );
  }
}
