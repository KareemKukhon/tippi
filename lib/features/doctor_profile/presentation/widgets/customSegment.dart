import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tibbi/core/utils/app_colors.dart';
import 'package:tibbi/features/doctor_profile/presentation/blocs/profileProvider.dart';

class CustomSegmentedControl extends StatelessWidget {
  final List<String> segments;
  final ValueChanged<int> onSegmentChanged;

  CustomSegmentedControl({
    Key? key,
    required this.segments,
    required this.onSegmentChanged,
  }) : super(key: key);

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileProvider>(builder: (context, provider, child) {
      return Column(
        children: [
          Row(
            children: List.generate(segments.length, (index) {
              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    provider.setSegmentIndex(index);
                    onSegmentChanged(index);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    alignment: Alignment.center,
                    child: Text(
                      segments[index],
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: provider.segmentIndex == index
                            ? Colors.black
                            : Colors.grey,
                        fontWeight: provider.segmentIndex == index
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
          Stack(
            children: [
              Container(
                height: 2.0,
                color: AppColors.Fancy,
              ),
              AnimatedPositioned(
                duration: Duration(milliseconds: 300),
                left: provider.segmentIndex *
                    (MediaQuery.of(context).size.width / segments.length),
                width: MediaQuery.of(context).size.width / segments.length,
                height: 2.0,
                child: Container(
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
        ],
      );
    });
  }
}
