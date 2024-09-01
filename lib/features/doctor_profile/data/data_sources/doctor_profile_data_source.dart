import 'package:day_picker/day_picker.dart';

/// DoctorProfileDataSource is an abstract class defining the contract for fetching
/// data from various sources.
/// This abstract class outlines the methods that concrete data source
/// implementations should implement, such as fetching data from a remote API, local database, or any other data source.
abstract class DoctorProfileDataSource {
  List<DayInWeek> getAvailableDays();
}

/// DoctorProfileDataSourceImpl is the concrete implementation of the DoctorProfileDataSource
/// interface.
/// This class implements the methods defined in DoctorProfileDataSource to fetch
/// data from a remote API or other data sources.
class DoctorProfileDataSourceImpl implements DoctorProfileDataSource {
  final List<DayInWeek> days = [
    DayInWeek("Mon", dayKey: "monday"),
    DayInWeek("Tue", dayKey: "tuesday"),
    DayInWeek("Wed", dayKey: "wednesday"),
    DayInWeek("Thu", dayKey: "thursday"),
    DayInWeek("Fri", dayKey: "friday"),
    DayInWeek(
      "Sat",
      dayKey: "saturday",
    ),
    DayInWeek(
      "Sun",
      dayKey: "sunday",
    ),
  ];
  @override
  List<DayInWeek> getAvailableDays() {
    return days;
  }
}
