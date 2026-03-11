import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUi extends StatefulWidget {
  const AboutUi({super.key});

  @override
  State<AboutUi> createState() => _AboutUiState();
}

class _AboutUiState extends State<AboutUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Center(
            child: Column(
          children: [
            Text(
              'ผู้จัดทำ',
              style: GoogleFonts.kanit(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            Image.network(
              'https://app.sau.ac.th/hubfs/SAU-01-1.png',
              width: 100,
              height: 100,
            ),
            Text(
              'มหาวิทยาลัยเอเชียอาคเนย์',
              style: GoogleFonts.kanit(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/images/gojo.jpg',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Text(
              '6619410060',
              style: GoogleFonts.kanit(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'ศักดิ์สกุล สนิท',
              style: GoogleFonts.kanit(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5),
            Text('s6619410060@sau.ac.th',
                style: GoogleFonts.kanit(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                )),
            SizedBox(height: 5),
            Text(
              'สาขาวิศวกรรมคอมพิวเตอร์',
              style: GoogleFonts.kanit(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'คณะวิศวกรรมศาสตร์',
              style: GoogleFonts.kanit(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
