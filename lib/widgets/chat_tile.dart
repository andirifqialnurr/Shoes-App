import 'package:flutter/material.dart';
import 'package:shoes_app/model/product_model.dart';
import 'package:shoes_app/pages/detail_chat_page.dart';
import 'package:shoes_app/theme.dart';

import '../model/message_model.dart';

class ChatTile extends StatelessWidget {
  final MessageModel message;
  ChatTile(this.message);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailChatPage(
              UninitializedProductModel(),
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(
          top: 33,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/Logo Shop Picture.png',
                  width: 54,
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shoe Store',
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        message.message!,
                        style: secondaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: light,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      const Divider(
                        thickness: 1,
                        color: Color(0xff2B2939),
                      )
                    ],
                  ),
                ),
                Text(
                  'Now',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
