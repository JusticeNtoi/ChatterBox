
import 'package:chatterbox/constants/constants.dart';
import 'package:chatterbox/views/widgets/contacts_list.dart';
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
          ),

        ],
      )
    );
  }
}
