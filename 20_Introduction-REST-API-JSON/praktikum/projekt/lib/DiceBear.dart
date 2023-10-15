import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AvatarGenerator extends StatefulWidget {
  const AvatarGenerator({super.key});

  @override
  _AvatarGeneratorState createState() => _AvatarGeneratorState();
}

class _AvatarGeneratorState extends State<AvatarGenerator> {
  late String _avatarLink;
  List<Color> _backgroundColors = []; // Empty list for now, but you can add colors if needed.
  Random _randomizer = new Random();
  int _colorIndex = 0;
  bool _isFetching = false;

  void _updateColorIndex() {
    setState(() => _colorIndex = _randomizer.nextInt(_backgroundColors.length));
  }

  Future _fetchRandomAvatar() async {
    final int randomNum = Random().nextInt(100000);
    _avatarLink = 'https://avatars.dicebear.com/api/avataaars/$randomNum.svg';
    _updateColorIndex();
  }

  @override
  void initState() {
    super.initState();
    _fetchRandomAvatar();
  }

  @override
  Widget build(BuildContext context) {
    Color bgColor = _backgroundColors.isNotEmpty ? _backgroundColors[_colorIndex % _backgroundColors.length] : Colors.grey;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 238, 238),
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
                color: bgColor,
                shape: BoxShape.circle,
              ),
              child: ClipOval(
                child: SvgPicture.network(
                  _avatarLink,
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
                    _isFetching = true;
                    _fetchRandomAvatar();
                  });
                  _isFetching = false;
                },
                child: Text(_isFetching ? 'Loading...' : 'Get New Avatar', style: const TextStyle(color: Colors.white, fontSize: 20)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
