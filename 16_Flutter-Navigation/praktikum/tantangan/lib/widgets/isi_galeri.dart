import 'package:flutter/material.dart';
import 'detail.dart';

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      children: [
        CardExample(),
        Image.asset('assets/image1.jpg'),
        Image.asset('assets/image2.jpg'), 
        Image.asset('assets/image3.jpg'), 
        Image.asset('assets/image4.jpg'), 
      ],
    );
  }
}


class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 400,
                  color: Colors.amber,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset('assets/image1.jpg'),
                        Text('Gambar 1'),
                        Text('Apakah anda ingin memeriksa gambar secara lebih detail?'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              child: const Text('Ya'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Detail()),
                                );
                                Detail();
                              },
                            ),
                            ElevatedButton(
                              child: const Text('Tidak'),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
            debugPrint('Card tapped.');
          },
          child: SizedBox(
            child: Image.asset('assets/image1.jpg'),
          ),
        ),
      ),
    );
  }
}