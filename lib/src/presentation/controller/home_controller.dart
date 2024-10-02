import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:in_ride/src/core/utils/palette/color_palette.dart';
import 'package:in_ride/src/core/widgets/custom_loader.dart';
import 'package:in_ride/src/core/widgets/custom_sizedbox.dart';
import 'package:in_ride/src/presentation/features/features_barrel.dart';
import 'package:in_ride/src/presentation/features/home/widgets/location_bottomsheet.dart';

part './../features/home/home_view.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeController();
}

class HomeController extends State<HomeScreen> {

   late GoogleMapController mapController;
   

  CameraPosition kGooglePlex = const CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

 void onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) => _HomeView(this);
}
