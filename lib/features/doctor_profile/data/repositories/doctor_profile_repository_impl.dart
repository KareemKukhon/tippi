import 'package:tibbi/features/doctor_profile/domain/repositories/doctor_profile_repository.dart';
import 'package:tibbi/features/doctor_profile/data/data_sources/doctor_profile_data_source.dart';



/// DoctorProfileRepositoryImpl is the concrete implementation of the DoctorProfileRepository
/// interface.
/// This class implements the methods defined in DoctorProfileRepository to interact
/// with data. It acts as a bridge between the domain layer
/// (use cases) and the data layer (data sources).
class DoctorProfileRepositoryImpl implements DoctorProfileRepository {
      
   final DoctorProfileDataSource  doctorProfileDataSource;
   DoctorProfileRepositoryImpl(this.doctorProfileDataSource);
}