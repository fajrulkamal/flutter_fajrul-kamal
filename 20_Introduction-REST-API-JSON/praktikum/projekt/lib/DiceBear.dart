import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class diceBears extends StatefulWidget {
  const diceBears({super.key});

  @override
  State<diceBears> createState() => _diceBearsState();
}

class _diceBearsState extends State<diceBears> {
  late String avatarUrl;
  List colorBgs = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.pink,
    Colors.brown,
    Colors.teal,
    Colors.cyan,
    Colors.lime,
    Colors.indigo,
    Colors.lightBlue,
    Colors.lightGreen,
    Colors.amber,
    Colors.deepOrange,
    Colors.deepPurple,
  ];
  Random random = new Random();
  int index = 0;
  bool isLoading = false;

  void changeIndex() {
    setState(() => index = random.nextInt(colorBgs.length));
  }

  Future generateRandomAvatar() async {
    final int randomNumber = Random().nextInt(100000);
    avatarUrl = 'https://avatars.dicebear.com/api/avataaars/$randomNumber.svg';
    changeIndex();
  }

  @override
  void initState() {
    super.initState();
    generateRandomAvatar();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 238, 238),
      /* appBar: AppBar(
        title: const Text("Dice Bears Profile NFT's"),
        centerTitle: true,
      ), */
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: colorBgs[index],
                shape: BoxShape.circle,
              ),
              child: ClipOval(
                child: SvgPicture.network(
                  avatarUrl,
                  height: 210,
                  width: 210,
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    isLoading = true;
                    generateRandomAvatar();
                  });
                  isLoading = false;
                },
                child : Text(isLoading ? 'Loading...' : 'Randomize', style: const TextStyle(color: Colors.white, fontSize: 20)),
              ),
            )
          ],
        ),
      ),
    );
  }
}