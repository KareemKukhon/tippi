import 'dart:collection';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileProvider extends ChangeNotifier {
  int segmentIndex = 0;
  List<Widget> qualifications = [];
  List<Widget> experince = [];
  List<dynamic> days = [];
  TimeOfDay? selectedStartTime = TimeOfDay.now();
  TimeOfDay? selectedEndTime = TimeOfDay.now();
  Map<String, List<String>> timeSlots = new HashMap<String, List<String>>();
  XFile? image;

  void setSegmentIndex(int index) {
    if (index != segmentIndex) {
      segmentIndex = index;
      notifyListeners();
    }
  }

  addQualificationWidget(Widget qualificationWidget) {
    qualifications.add(qualificationWidget);
    notifyListeners();
  }

  removeQualificationWidget(Widget qualificationWidget) {
    qualifications.remove(qualificationWidget);
    notifyListeners();
  }

  addExperinceWidget(Widget experinceWidget) {
    experince.add(experinceWidget);
    notifyListeners();
  }

  removeExperinceWidget(Widget experinceWidget) {
    experince.remove(experinceWidget);
    notifyListeners();
  }

  addDay(
    List<dynamic> day,
    BuildContext context,
  ) {
    String removedDays =
        days.toSet().difference(day.toSet()).firstOrNull.toString();
    print(removedDays);
    if (timeSlots.containsKey(removedDays)) {
      timeSlots.remove(removedDays); // Remove the day from the list
      log("message: ${timeSlots}");
    }
    days = day;
    days.forEach((element) => timeSlots[element] = [
          "${selectedStartTime?.format(context)}",
          "${selectedEndTime?.format(context)}"
        ]);
    notifyListeners();
  }

  Future<void> selectTime(
      BuildContext context, String day, bool isStartTime) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null && picked != selectedStartTime) {
      if (isStartTime)
        selectedStartTime = picked;
      else {
        selectedEndTime = picked;
      }
      timeSlots[day] = [
        "${selectedStartTime?.format(context)}",
        "${selectedEndTime?.format(context)}"
      ];
      notifyListeners();
    }
  }

  Future<void> fetchImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedImage =
        await picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      image = pickedImage;
      notifyListeners();
    } else {
      print('No image selected.');
    }
  }
}
