import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:in_ride/src/core/utils/palette/color_palette.dart';
import 'package:in_ride/src/core/utils/theme/theme.dart';
import 'package:in_ride/src/core/widgets/custom_button.dart';
import 'package:in_ride/src/core/widgets/custom_sizedbox.dart';

class LocationBottomSheet extends StatelessWidget {
  final ScrollController scrollController;
  const LocationBottomSheet({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    final locations = [
      'Marina palace',
      'Container',
      'Main Hostel',
      'Extension',
      'Chapel',
    ];
    final popularLocations = [
      'Girl\'s Hostel',
      'Engineering Hostel',
      'Sapetro',
      'Event Center',
    ];
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ListView(
        controller: scrollController,
        padding: const EdgeInsets.all(16),
        children: [
          Center(
            child: Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          Space.h(10),
          buildLocationField(
            icon: Icons.location_on,
            text: 'Chosen Pickup Location',
            color: Colors.blue,
          ),

          Space.h(15),
          Text(
            'LOCATIONS NEAR YOU',
            style: AppTheme.textSmallRegular.copyWith(
              color: Palette.greyTextColor,
              fontSize: 12,
            ),
          ),
          // Space.h(10),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (ctx, index) =>
                const Divider(color: Palette.greyTextColor, thickness: 0.5),
            itemCount: locations.length,
            itemBuilder: (ctx, index) {
              return _buildLocationItem(locations.first, true);
            },
          ),
          // ...buildNearbyLocations(),
          Space.h(15),
          Text(
            'POPULAR LOCATIONS',
            style: AppTheme.textSmallRegular.copyWith(
              color: Palette.greyTextColor,
              fontSize: 12,
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (ctx, index) =>
                const Divider(color: Palette.greyTextColor, thickness: 0.5),
            itemCount: popularLocations.length,
            itemBuilder: (ctx, index) {
              return _buildLocationItem(locations.first, false);
            },
          ),
          // ...buildPopularLocations(),
          Space.h(20),
          CustomButton(
            text: 'Find Drivers',
            onPressed: () {
              // const CustomLoader();
            },
          ),
          Space.h(20),
        ],
      ),
    );
  }

  Widget buildLocationField({
    required IconData icon,
    required String text,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.blue),
                ),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const ShapeDecoration(
                    shape: CircleBorder(),
                    color: Colors.blue,
                  ),
                ),
              ),
              Space.w(12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: AppTheme.textSmallMedium.copyWith(
                        color: Palette.headerTextColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'PICKUP',
                      style: AppTheme.textSmallRegular.copyWith(
                        fontSize: 10,
                        color: Palette.textColor4,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:
                      const Icon(Icons.close, color: Colors.white30, size: 20)),
            ],
          ),
          Space.h(10),
          const Divider(color: Colors.grey, thickness: 0.5),
          Space.h(10),
          Row(
            children: [
              Icon(icon, color: color, size: 20),
              Space.w(12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chosen Dropoff Location',
                      style: AppTheme.textSmallMedium.copyWith(
                        color: Palette.headerTextColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'DROPOFF',
                      style: AppTheme.textSmallRegular.copyWith(
                        fontSize: 10,
                        color: Palette.textColor4,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:
                      const Icon(Icons.close, color: Colors.white30, size: 20)),
            ],
          ),
        ],
      ),
    );
  }

  List<Widget> buildNearbyLocations() {
    final locations = [
      'Marina palace',
      'Container',
      'Main Hostel',
      'Extension',
      'Chapel',
    ];
    return locations
        .map((location) => _buildLocationItem(location, true))
        .toList();
  }

  List<Widget> buildPopularLocations() {
    final locations = [
      'Girl\'s Hostel',
      'Engineering Hostel',
      'Sapetro',
      'Event Center',
    ];
    return locations
        .map((location) => _buildLocationItem(location, false))
        .toList();
  }

  Widget _buildLocationItem(String location, bool isNearby) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: Row(
        children: [
          isNearby
              ? Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.blue),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const ShapeDecoration(
                      shape: CircleBorder(),
                      color: Colors.blue,
                    ),
                  ),
                )
              : const Icon(Icons.location_on, color: Colors.red, size: 20),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              location,
              style: AppTheme.textMediumRegular.copyWith(
                fontSize: 17,
                color: Palette.headerTextColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Icon(
            isNearby ? Icons.star : Icons.star_border,
            color: isNearby ? Colors.amber : Colors.grey,
            size: 20,
          ),
        ],
      ),
    );
  }
}
