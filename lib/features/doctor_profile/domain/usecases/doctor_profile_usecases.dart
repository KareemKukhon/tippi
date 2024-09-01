import 'package:tibbi/features/doctor_profile/domain/repositories/doctor_profile_repository.dart';



/// use case is a class responsible for encapsulating a specific piece of business logic or 
/// a particular operation that your application needs to perform.
/// It acts as a bridge between the presentation
/// layer and the data layer.
class DoctorProfileUseCase {
	  
   final DoctorProfileRepository doctorProfileRepository;
   DoctorProfileUseCase(this.doctorProfileRepository);
}