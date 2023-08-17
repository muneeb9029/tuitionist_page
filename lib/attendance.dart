import 'package:flutter/material.dart';

class Attendance extends StatefulWidget {
  const Attendance({super.key});

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  List<DropdownMenuItem<String>> get counties {
    return [
      const DropdownMenuItem(child: Text('Present'), value: '1'),
      const DropdownMenuItem(child: Text('Absent'), value: '2'),
      const DropdownMenuItem(child: Text('Leave'), value: '3'),
    ];
  }

  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pop(context);
        },
        label: const Text(
          'Chat',
          style: TextStyle(color: Color(0xff616A69)),
        ),
        icon: const Icon(
          Icons.chat_bubble,
          color: Color(0xff5ED0D0),
        ),
        backgroundColor: Colors.white,
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
                  Icons.home_filled,
                  color: Color(0xff5ED0D0),
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                  color: Color(0xff5ED0D0),
                ),
                label: 'Menu'),
          ]),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: 450,
            width: 500,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.tealAccent,
                    Color(0xff54A5C3),
                  ]),
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  color: Colors.white,
                ),
              ),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(130),
                  bottomLeft: Radius.circular(130)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120, left: 10),
            child: Row(
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 40,
                    color: Color(0xff9A9A9A),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Muneeb Asif',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 210),
                  child: Icon(
                    Icons.notifications_sharp,
                    size: 40,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 260, left: 20),
            child: RichText(
              text: const TextSpan(
                  text: 'THE',
                  style: TextStyle(
                    fontSize: 28,
                  )),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 260, left: 90),
            child: RichText(
              text: const TextSpan(
                  text: 'TUITIONIST',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 470, left: 130),
            child: Text(
              'Attendance',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff616A69)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 230, left: 20, right: 20),
            child: Center(
              child: DropdownButtonFormField(
                items: counties,
                onChanged: (String? value) {},
                decoration: InputDecoration(
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  fillColor: Colors.grey.shade100,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: 'Islamic Studies',
                  label: const Text('Islamic Studies'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 430, left: 20, right: 20),
            child: Center(
              child: DropdownButtonFormField(
                items: counties,
                onChanged: (String? value) {},
                decoration: InputDecoration(
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  fillColor: Colors.grey.shade100,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: 'Physics',
                  label: const Text('Physics'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 620, left: 20, right: 20),
            child: Center(
              child: DropdownButtonFormField(
                items: counties,
                onChanged: (String? value) {},
                decoration: InputDecoration(
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  fillColor: Colors.grey.shade100,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: 'English',
                  label: const Text('English'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
