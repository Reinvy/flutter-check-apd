import 'package:check_apd/views/pengawasan_view.dart';
import 'package:check_apd/views/karyawan_view.dart';
import 'package:check_apd/views/laporan_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int i = 1;
  List<Widget> screens = [
    const PengawasanView(),
    const KaryawanView(),
    const LaporanView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[i],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: i,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check_outlined),
            label: "Pengawasan",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_2),
            label: "Karyawan",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_outlined),
            label: "Laporan",
          ),
        ],
        onTap: (value) {
          print(value);
          setState(() {
            i = value;
          });
        },
      ),
    );
  }
}
