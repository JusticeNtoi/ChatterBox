
import 'package:chatterbox/constants/constants.dart';
import 'package:chatterbox/views/calls_screen.dart';
import 'package:chatterbox/views/status_screen.dart';
import 'package:chatterbox/views/widgets/contacts_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          elevation: 0,
          title: const Text(
            "ChatterBox",
            style: TextStyle(
              color: textColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: textColor
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
          bottom: const TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 4,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: textColor,
            unselectedLabelColor: textColor,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold
            ),
            tabs: [
              Tab(text: 'CHATS',),
              Tab(text: 'STATUS',),
              Tab(text: 'CALLS',),
            ],
          ),
        ),

        body: const TabBarView(
          physics: BouncingScrollPhysics(),
          children: [
            ContactsList(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {  },
          backgroundColor: tabColor,
          child: const Icon(
            Icons.comment,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
