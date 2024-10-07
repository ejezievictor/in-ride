part of '../../controller/home_controller.dart';

/// Display the sigin page of the application when it's been opened
///
///

class _HomeView extends StatelessView<HomeScreen, HomeController> {
  const _HomeView(super.key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Positioned(
            top: 30.h,
            left: 20,
            child: buildCustomDrawer(onTap: () {
              Scaffold.of(context).openDrawer();
            }),
          ),
          GoogleMap(
            mapType: MapType.hybrid,
            initialCameraPosition: controller.kGooglePlex,
            onMapCreated: controller.onMapCreated,
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.3,
            minChildSize: 0.25,
            maxChildSize: 0.9,
            builder: (_, controller) =>
                LocationBottomSheet(scrollController: controller),
          ),
        ],
      ),
    );
  }
}

Widget buildCustomDrawer({required VoidCallback onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14), color: Colors.blue),
      child: const Icon(Icons.menu, color: Colors.black, size: 24),
    ),
  );
}
