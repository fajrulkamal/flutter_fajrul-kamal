import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  
  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xFF0071F2);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: Column(

          children: [
            const Text(
              'About Us',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'CampuScholarShip Program',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: MediaQuery.of(context).size.width > 540 ? 2 : 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: [
                  cardWidget(
                    title: "Immersive Program", 
                    subtitle: "Program pelatihan bootcamp intensif bagi kamu yang pemula, baik dengan latar belakang lT maupun Non-IT.", 
                    iconData: Icons.school
                  ),
                  cardWidget(
                    title: "Flexi Program",
                    subtitle: "Bootcamp dengan waktu belajar yang flexible, solusi untuk yang masih bekerja karir di Bidang Digital.", 
                    iconData: Icons.cast_for_education,
                  ),
                  cardWidget(
                    title: "Data Science", 
                    subtitle: "Program pembelajaran intensif untuk menjadi Data Analyst atau Data Scientist.", 
                    iconData: Icons.science
                  ),
                  cardWidget(
                    title: "Performance Marketing", 
                    subtitle: "Program Digital Marketing yang berfokus pada Performance Marketing dan bisa diikuti di luar jam kerja dalam 8 minggu.", 
                    iconData: Icons.auto_graph
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget cardWidget({required String title, required String subtitle, required IconData iconData}) {
    const Color primaryColor = Color(0xFF0071F2);
    const TextStyle titleStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: primaryColor,
    );
    const TextStyle subtitleStyle = TextStyle(
      fontSize: 14,
    );

    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: primaryColor, width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData, size: 100, color: primaryColor),
          Text(title, style: titleStyle),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(subtitle, style: subtitleStyle, textAlign: TextAlign.justify),
          ),
        ],
      ),
    );
  }
}