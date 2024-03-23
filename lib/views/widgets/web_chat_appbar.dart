
import 'package:chatterbox/constants/constants.dart';
import 'package:chatterbox/services/info.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      // height: MediaQuery.of(context).size.height*0.12,
      width: MediaQuery.of(context).size.width*0.7,
      padding: const EdgeInsets.all(10),
      color: appBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
                ),
                radius: 28,
              ),
              const SizedBox(width: 10,),
              Text(
                info[3]['name'].toString(),
                style: const TextStyle(
                  fontSize: 18,
                  color: textColor,
                ),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: textColor,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: textColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
