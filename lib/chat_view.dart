import 'package:chat_app/colors.dart';
import 'package:chat_app/widgets/fav_contacts.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const Text(
          'Chats',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              ))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // favorite chats
          const FavContactsWidget(),

          // chats
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                width: double.infinity,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1614289371518-722f2615943d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              children: [
                                Text('Ahmed Amer'),
                                Text('How are you')
                              ],
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            Text('10:00 PM')
                          ],
                        )
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 18,
                    );
                  },
                  itemCount: 15,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
