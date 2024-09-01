import 'package:tibbi/features/landing/domain/repositories/landing_repository.dart';
import 'package:tibbi/features/landing/data/data_sources/landing_data_source.dart';



/// LandingRepositoryImpl is the concrete implementation of the LandingRepository
/// interface.
/// This class implements the methods defined in LandingRepository to interact
/// with data. It acts as a bridge between the domain layer
/// (use cases) and the data layer (data sources).
class LandingRepositoryImpl implements LandingRepository {
      
   final LandingDataSource  landingDataSource;
   LandingRepositoryImpl(this.landingDataSource);
}