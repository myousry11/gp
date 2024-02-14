import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title:Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage(
                  'https://as2.ftcdn.net/v2/jpg/03/64/21/11/1000_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.camera_alt,
                    size: 20.0,
                    color: Colors.white,
                  )))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Container(
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10.0,
               ),
               color: Colors.grey[300],
             ),
             padding: EdgeInsets.all(5.0,),
             child: Row(
               children: [
                 Icon(Icons.search,
                 ),
                 SizedBox(
                   width: 15.0,
                 ),
                 Text(
                   'Search',
                 ),
               ],

             ),
           ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 115.0,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => buildStoryItem(),
                separatorBuilder: (context, index) => SizedBox(
                  width: 20.0,
                ),
                itemCount: 10,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => buildChatItem(),
              separatorBuilder: (context, index) => SizedBox(
                height: 20.0,
              ),
              itemCount: 15,
            ),
          ],
         ),
        ),
      ),
    );
  }
  // arrow function لازم تعمل ترجع لحاجة واحدة بس
  Widget buildChatItem() => Row(
     children: [
       Stack(
         alignment: AlignmentDirectional.bottomEnd,
         children: [
           CircleAvatar(
             radius: 30.0,
             backgroundImage: NetworkImage(
                 'https://as2.ftcdn.net/v2/jpg/03/64/21/11/1000_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg'),
           ),
           Padding(padding: const EdgeInsetsDirectional.only(
             bottom: 3.0,
             end: 3.0,),
           ),
           CircleAvatar(
             radius: 7.0,
             backgroundColor: Colors.red,
           ),
         ],
       ),
       SizedBox(
         width: 20.0,
       ),
       Expanded(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(
               'Mahmoud Yousry',
             ),
             SizedBox(
               height: 5.0,
             ),
             Row(
               children: [
                 Expanded(
                   child: Text(
                     'Hello 7oda',
                     style: TextStyle(
                       fontSize: 16.0,
                       fontWeight: FontWeight.bold,
                     ),
                     maxLines: 1,
                     overflow: TextOverflow.ellipsis,
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 10.0,
                   ),
                   child: Container(
                     width: 5.0,
                     height: 5.0,
                     decoration: BoxDecoration(
                       color: Colors.blue,
                       shape: BoxShape.circle,
                     ),
                   ),
                 ),
                 Text(
                   '02:00 pm',
                 ),

               ],
             ),
           ],
         ),
       ),

     ],
   );
  Widget buildStoryItem() => Container(
    width: 60.0,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://as2.ftcdn.net/v2/jpg/03/64/21/11/1000_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg'),
            ),
            Padding(padding: const EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0,),
            ),
            CircleAvatar(
              radius: 7.0,
              backgroundColor: Colors.red,
            ),
          ],
        ),
        SizedBox(
          height: 5.0,
        ),
        Text('Mahmoud Yousry Abdelaal',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),


      ],
    ),
  );


}
