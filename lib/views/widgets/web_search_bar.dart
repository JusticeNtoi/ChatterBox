

import 'package:chatterbox/constants/constants.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width*0.3,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: senderMessageColor,),
        ),
        color: appBarColor,
      ),
      child: TextField(
        style: const TextStyle(
          color: textColor2,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: searchBarColor,
          prefixIcon: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.search, color: appBarColor),
          ),
          hintText: 'Search',
          hintStyle: const TextStyle(
            fontSize: 14,
            color: appBarColor,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.all(10),
        ),
      ),
    );
  }
}
