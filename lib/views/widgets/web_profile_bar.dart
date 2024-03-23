
import 'package:chatterbox/constants/constants.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      // height: MediaQuery.of(context).size.height*0.12,
      width: MediaQuery.of(context).size.width*0.3,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            color: dividerColor,
          ),
        ),
        color: appBarColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
            ),
            radius: 24,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.comment,
                  color: greyColor,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: greyColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
