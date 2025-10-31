import 'package:flutter/material.dart';
import 'package:nti3/features/Home/peresntation/views/widgets/mainViewBody.dart';
import 'widgets/CustomBottonNavigationBar.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  static const String routeName = 'homeView';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currintindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Custombottonnavigationbar(
        changed: (index) {
          currintindex = index;
          setState(() {});
        },
      ),
      body: SafeArea(
        child: MainviewBody(currintindex: currintindex),
      ),
    );
  }
}
