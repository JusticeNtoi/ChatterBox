
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
                  'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
                ),
                radius: 28,
              ),
              const SizedBox(width: 10,),
              Text(
                info[1]['name'].toString(),
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
