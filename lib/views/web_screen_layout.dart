
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
                  WebProfileBar(),
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
                image: AssetImage(backgroundImage),
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
                  height: 60,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: dividerColor,
                      )
                    ),
                    color: chatBarMessageColor,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                      onPressed: () {},
                        icon: const Icon(
                          Icons.emoji_emotions_outlined,
                          color: greyColor,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.attach_file,
                          color: greyColor,
                        ),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: searchBarColor,
                              filled: true,
                              hintText: "Type a message",
                              hintStyle: const TextStyle(
                                color: greyColor,
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

                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.mic,
                          color: greyColor,
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
