import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thai_hhotline_app/views/about_ui.dart';
import 'package:thai_hhotline_app/views/sub_a_home_ui.dart';
import 'package:thai_hhotline_app/views/sub_b_home_ui.dart';
import 'package:thai_hhotline_app/views/sub_c_home_ui.dart';
import 'package:thai_hhotline_app/views/sub_d_home_ui.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  //สร้างตัวแปรควบคุม currentIndex ของ BarItem
  int currentIndexStatus = 1;
  //สร้างตัวแปรเก็บ widget หน้าจอที่จะมาแสดงที่ body ของ Scaffold
  List<Widget> showBody = [
    SubAHomeUi(),
    SubBHomeUi(),
    SubCHomeUi(),
    SubDHomeUi(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade400,
        title: Text(
          'สายด่วน THAILAND',
          style: GoogleFonts.kanit(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.info_outline_rounded),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutUi(),
                )
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: GoogleFonts.kanit(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: GoogleFonts.kanit(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        onTap: (value) {
          setState(() {
            currentIndexStatus = value;
          });
        },
        currentIndex: currentIndexStatus,
        selectedItemColor: Color(0xFFE9967A),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/travel.png',
              width: 30,
              height: 30,
            ),
            label: 'การเดินทาง',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/incident.png',
              width: 30,
              height: 30,
            ),
            label: 'อุบัติเหตุ',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/bank.png',
              width: 30,
              height: 30,
            ),
            label: 'ธนาคาร',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/utilities.png',
              width: 30,
              height: 30,
            ),
            label: 'สาธารณูปโภค',
          ),
        ],
      ),
      body: showBody[currentIndexStatus],
    );
  }
}
