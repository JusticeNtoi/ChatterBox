

import 'package:chatterbox/constants/constants.dart';
import 'package:chatterbox/services/info.dart';
import 'package:chatterbox/views/mobile_chat_screen.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return MobileChatScreen(data: info[index],);
                    }),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        info[index]['profilePic'].toString()
                      ),
                      radius: 28,
                    ),

                    title: Text(
                      info[index]['name'].toString(),
                      style: const TextStyle(
                        fontSize: 18,
                        color: textColor,
                      ),
                    ),

                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Text(
                        info[index]['message'].toString(),
                        style: const TextStyle(
                          fontSize: 15,
                          color: textColor,
                        ),
                      ),
                    ),

                    trailing: Text(
                      info[index]['time'].toString(),
                      style: const TextStyle(
                        fontSize: 13,
                        color: greyColor,
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(color: dividerColor,),
            ],
          );
        },
      ),
    );
  }
}
