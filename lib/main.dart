import 'package:flutter/material.dart';
import 'attendance.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Chat(),
    );
  }
}

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Attendance()));
        },
        label: const Text(
          'Attendance',
          style: TextStyle(color: Color(0xff616A69)),
        ),
        icon: const Icon(Icons.menu_book_outlined),
        backgroundColor: const Color(0xff5ED0D0),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xff5ED0D0),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.feedback_outlined,
                  color: Color(0xff5ED0D0),
                ),
                label: 'Feedback'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_bubble,
                  color: Color(0xff5ED0D0),
                ),
                label: 'Chat'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                  color: Color(0xff5ED0D0),
                ),
                label: 'Menu'),
          ]),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 60,
                width: 180,
                decoration: const BoxDecoration(
                  color: Color(0xff5ED0D0),
                  border: Border(
                    top: BorderSide(
                      color: Color(0xff5ED0D0),
                      width: 1,
                    ),
                    bottom: BorderSide(
                      color: Color(0xff5ED0D0),
                      width: 1,
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80),
                      topRight: Radius.circular(80),
                      bottomRight: Radius.circular(80)),
                ),
              ),
            ),
            // Container 2
            Padding(
              padding: const EdgeInsets.only(top: 95, left: 9),
              child: Container(
                height: 60,
                width: 280,
                decoration: const BoxDecoration(
                  color: Color(0xff5ED0D0),
                  border: Border(
                    top: BorderSide(
                      color: Color(0xff5ED0D0),
                      width: 1,
                    ),
                    bottom: BorderSide(
                      color: Color(0xff5ED0D0),
                      width: 1,
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80),
                      topRight: Radius.circular(80),
                      bottomRight: Radius.circular(80)),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 180, left: 9),
              child: Container(
                height: 60,
                width: 150,
                decoration: const BoxDecoration(
                  color: Color(0xff5ED0D0),
                  border: Border(
                    top: BorderSide(
                      color: Color(0xff5ED0D0),
                      width: 1,
                    ),
                    bottom: BorderSide(
                      color: Color(0xff5ED0D0),
                      width: 1,
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80),
                      topRight: Radius.circular(80),
                      bottomRight: Radius.circular(80)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 270, left: 9),
              child: Container(
                height: 60,
                width: 340,
                decoration: const BoxDecoration(
                  color: Color(0xff5ED0D0),
                  border: Border(
                    top: BorderSide(
                      color: Color(0xff5ED0D0),
                      width: 1,
                    ),
                    bottom: BorderSide(
                      color: Color(0xff5ED0D0),
                      width: 1,
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80),
                      topRight: Radius.circular(80),
                      bottomRight: Radius.circular(80)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 360, left: 280),
              child: Container(
                height: 60,
                width: 150,
                decoration: const BoxDecoration(
                  color: Color(0xffD9D9D9),
                  border: Border(
                    top: BorderSide(
                      color: Color(0xff5ED0D0),
                      width: 1,
                    ),
                    bottom: BorderSide(
                      color: Color(0xffD9D9D9),
                      width: 1,
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),
                    bottomLeft: Radius.circular(80),
                    topRight: Radius.circular(80),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 440, left: 280, right: 20),
              child: Container(
                height: 60,
                width: 300,
                decoration: const BoxDecoration(
                  color: Color(0xffD9D9D9),
                  border: Border(
                    top: BorderSide(
                      color: Color(0xff5ED0D0),
                      width: 1,
                    ),
                    bottom: BorderSide(
                      color: Color(0xffD9D9D9),
                      width: 1,
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),
                    bottomLeft: Radius.circular(80),
                    topRight: Radius.circular(80),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 530, left: 9),
              child: Container(
                height: 60,
                width: 280,
                decoration: const BoxDecoration(
                  color: Color(0xff5ED0D0),
                  border: Border(
                    top: BorderSide(
                      color: Color(0xff5ED0D0),
                      width: 1,
                    ),
                    bottom: BorderSide(
                      color: Color(0xff5ED0D0),
                      width: 1,
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80),
                      topRight: Radius.circular(80),
                      bottomRight: Radius.circular(80)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 670, left: 10, right: 110),
              child: SingleChildScrollView(
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    icon: const Icon(Icons.add, size: 40),
                    prefixIcon: const Icon(Icons.emoji_emotions),
                    prefixIconColor: const Color(0xff9A9A9A),
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    enabled: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40)),
                    hintText: 'Type Your Message',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 690, left: 350),
              child: Icon(
                Icons.camera_alt_outlined,
                color: Color(0xff9A9A9A),
                size: 35,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 690, left: 400),
              child: Icon(
                Icons.mic_none_outlined,
                color: Color(0xff9A9A9A),
                size: 35,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 820,
              ),
              child: Divider(
                thickness: 7,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
