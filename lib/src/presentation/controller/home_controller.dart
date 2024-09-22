import 'package:flutter/material.dart';
import 'package:in_ride/src/presentation/features/features_barrel.dart';

part './../features/home/home_view.dart';

class HomeScreen extends StatefulWidget {
   static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeController();
}

class HomeController extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) => _HomeView(this);
}
