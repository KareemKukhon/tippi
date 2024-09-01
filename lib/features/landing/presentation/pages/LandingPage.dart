import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:tibbi/core/common_widgets/AppBar.dart';
import 'package:tibbi/core/common_widgets/CustomButton.dart';
import 'package:tibbi/core/common_widgets/NavDrawer.dart';
import 'package:tibbi/core/utils/app_colors.dart';
import 'package:tibbi/core/variable/var.dart';
import 'package:tibbi/features/auth/presentation/pages/Login.dart';
import 'package:tibbi/features/landing/presentation/blocs/UiProvider.dart';
import 'package:tibbi/features/landing/presentation/pages/FindDoctor.dart';
import 'package:tibbi/features/landing/presentation/pages/FindPharmacy.dart';
import 'package:tibbi/features/landing/presentation/widgets/DoctorCard.dart';
import 'package:tibbi/features/landing/presentation/widgets/Footer.dart';
import 'package:tibbi/features/landing/presentation/widgets/HomePageServiceCard.dart';
import 'package:tibbi/features/landing/presentation/widgets/OpinionCard.dart';
import 'package:tibbi/features/landing/presentation/widgets/QuestionCard.dart';
import 'package:tibbi/features/landing/presentation/widgets/ServiceCard.dart';
import 'package:tibbi/features/landing/presentation/widgets/Statistics.dart';
import 'package:tibbi/features/landing/presentation/widgets/commentSlider.dart';

class LandingPage extends StatelessWidget {
  LandingPage({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> _list = [
    'Schedule the appointment directly.',
    'Search for your Doctor, Pharmacy, Clinic or any service provider, and contact their office.',
    'View Doctors who are accepting new patients, use the online scheduling tool to select an appointment time.',
    'Buy your medications online using Tibbi store.',
    'Download and view your medical history and files easly.'
  ];
  List<OpinionCard> cardList = [
    OpinionCard(
      rating: 4,
      name: 'Mohammed kareem',
      description:
          '" تطبيق ممتاز لحجز المواعيد وشراء الادوية بحجز بكل سهولة وبشتري ادويتي من الصيدلية بالروشيتا الالكترونية"',
      image: 'assets/images/patient-avatar.png',
    ),
    OpinionCard(
      rating: 4,
      name: 'Mohammed kareem',
      description:
          '" تطبيق ممتاز لحجز المواعيد وشراء الادوية بحجز بكل سهولة وبشتري ادويتي من الصيدلية بالروشيتا الالكترونية"',
      image: 'assets/images/patient-avatar.png',
    ),
    OpinionCard(
      rating: 4,
      name: 'Mohammed kareem',
      description:
          '" تطبيق ممتاز لحجز المواعيد وشراء الادوية بحجز بكل سهولة وبشتري ادويتي من الصيدلية بالروشيتا الالكترونية"',
      image: 'assets/images/patient-avatar.png',
    ),
    OpinionCard(
      rating: 4,
      name: 'Mohammed kareem',
      description:
          '" تطبيق ممتاز لحجز المواعيد وشراء الادوية بحجز بكل سهولة وبشتري ادويتي من الصيدلية بالروشيتا الالكترونية"',
      image: 'assets/images/patient-avatar.png',
    ),
    OpinionCard(
      rating: 4,
      name: 'Mohammed kareem',
      description:
          '" تطبيق ممتاز لحجز المواعيد وشراء الادوية بحجز بكل سهولة وبشتري ادويتي من الصيدلية بالروشيتا الالكترونية"',
      image: 'assets/images/patient-avatar.png',
    ),
  ];
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: NavDrawer(),
      body: Consumer<UiProvider>(
        builder: (context, provider, child) => ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppBarWidget(
                    scaffoldKey: _scaffoldKey,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.h),
                    width: double.infinity,
                    height: 200.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/doctors.png"))),
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'We help ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26.sp,
                          color: Colors.black,
                        )),
                    TextSpan(
                        text: 'patients ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26.sp,
                          color: AppColors.primary,
                        )),
                    TextSpan(
                        text: 'live longer, ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26.sp,
                          color: Colors.black,
                        )),
                    TextSpan(
                        text: 'healthier lives.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26.sp,
                          color: AppColors.primary,
                        )),
                  ])),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'With Tibbi, you can now book your appointment with your private doctor and buy your medications from the pharmacy closest to you. Tibbi App also provides you with examination centers, insurance companies, and a complete network of male and female nurses at your service.',
                    style: TextStyle(
                        color: Color.fromARGB(193, 78, 84, 95),
                        fontSize: 18.sp),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CustomButton(
                      onPressed: () {
                        !isLogin
                            ? Navigator.pushNamed(context, '/login',
                                arguments: '/find-doctor')
                            : Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => FindDoctor(),
                              ));
                      },
                      text: "Request an Appointment",
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Wrap(
                      children: [
                        Statistic(
                          value: "2+",
                          valueColor: Color(0xFFFEB60D),
                          description: "Years of Experience",
                        ),
                        SizedBox(
                          width: 20.w,
                          height: 20.h,
                        ),
                        Statistic(
                          value: "16+",
                          valueColor: Color(0xFF9771FF),
                          description: "Locations",
                        ),
                        SizedBox(
                          width: 20.w,
                          height: 20.h,
                        ),
                        Statistic(
                          value: "100%",
                          valueColor: Colors.blue,
                          description: "Patient Satisfaction",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            height: 365.h,
                            child: Column(
                              children: [
                                Container(
                                  width: 200.w,
                                  height: 295.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            "assets/images/tippi_doctor1.png",
                                          ))),
                                ),
                                Expanded(child: Container())
                              ],
                            )),
                        // SizedBox(
                        //   width: 20.w,
                        // ),
                        Container(
                            height: 365.h,
                            child: Column(
                              children: [
                                Container(
                                  width: 150.w,
                                  height: 145.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            "assets/images/tippi_doctor2.png",
                                          ))),
                                ),
                                SizedBox(
                                  height: 30.h,
                                ),
                                Container(
                                  width: 150.w,
                                  height: 145.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            "assets/images/tippi_doctor3.png",
                                          ))),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'Tibbi Providing the best medical services',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'ًWorld-class care for everyone. Tibbi health System offers unmatched, expert health care.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Wrap(
                    children: [
                      ServiceCard(
                        title: 'Find a Doctor',
                        description:
                            'World-class care for everyone. Tibbi health System offers unmatched, expert health care. from the lab to the clinic',
                        imageUrl: 'assets/images/FindDoctor.png',
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => FindDoctor(),
                          ));
                        },
                      ),
                      ServiceCard(
                          title: "Find a Pharmacy",
                          description:
                              'ًTibbi Offers you wide range of pharmacies. Tibbi Connect you and let you buy medications from the pharmacy closest to you.',
                          imageUrl: 'assets/images/FindPharmacy.png',
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => FindPharmacy(),
                            ));
                          }),
                      ServiceCard(
                          title: 'Book Appointment',
                          description:
                              'Search and choose the best suitable date and time for you with your doctor and book with a click.',
                          imageUrl: 'assets/images/BookAppointment.png',
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Login(),
                            ));
                          })
                    ],
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Text("Our medical services",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge),
                  Text(
                    'Tibbi provides multiple services in the healthcare sector, such as selling medicines, booking appointments with doctors and medical centers, providing medical examinations, health insurance services, and managing the patient’s health file.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  HomePageServiceCard(
                    title: 'Appointment Booking',
                    description:
                        'Tibbi provides a mechanism for patients to book appointments with their doctor through the application, so that the doctor sets his working hours for the patient to book accordingly.',
                    numbder: '1',
                    BackgroundColor: Color.fromARGB(56, 250, 183, 26),
                    contentColor: Color(0xFFFEB60D),
                  ),
                  HomePageServiceCard(
                    title: 'Clinic Management',
                    description:
                        'Tibbi provides the best system for doctors, centers, and pharmacies to manage their accounts, patient files, and sales. The application meets the doctor’s need to communicate with various medical service providers and obtain his patient’s data with ease and speed.',
                    numbder: '2',
                    BackgroundColor: Color.fromARGB(35, 151, 113, 255),
                    contentColor: Color(0xFF9771FF),
                  ),
                  HomePageServiceCard(
                    title: 'Selling Medicines',
                    description:
                        'Tibbi provides a special platform for pharmacies to display and sell medical products to patients through prescriptions written by the doctor and attached electronically to the patient’s file.',
                    numbder: '3',
                    BackgroundColor: Color.fromARGB(32, 1, 181, 197),
                    contentColor: Color(0xFF01B5C5),
                  ),
                  HomePageServiceCard(
                    title: 'Medical examinations',
                    description:
                        'Tibbi provides testing centers with a mechanism to upload patient test results, and provides the patient with a mechanism to receive the test result electronically and attach it to the medical file, which makes it easier for any doctor to quickly know the test results.',
                    numbder: '4',
                    BackgroundColor: Color.fromARGB(32, 1, 181, 197),
                    contentColor: Color(0xFF01B5C5),
                  ),
                  HomePageServiceCard(
                    title: 'X-ray centers',
                    description:
                        'Tibbi provides radiology centers with a mechanism to upload image results to patients, and provides the patient with a mechanism to receive the result electronically and attach it to the medical file, which makes it easy for any doctor to download the image quickly.',
                    numbder: '5',
                    BackgroundColor: Color.fromARGB(56, 250, 183, 26),
                    contentColor: Color(0xFFFEB60D),
                  ),
                  HomePageServiceCard(
                    title: 'Insurance Providers',
                    description:
                        'Tibbi provides a wide network of health insurance service providers for patients to renew their health insurance and inquire about the insurance and registration mechanism.',
                    numbder: '1',
                    BackgroundColor: Color.fromARGB(35, 151, 113, 255),
                    contentColor: Color(0xFF9771FF),
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Get virtual treatment anytime.',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  for (int i = 0; i < _list.length; i++)
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '${i + 1}. ${_list[i]}',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child:
                          CustomButton(onPressed: () {}, text: "Learn more")),
                  SizedBox(
                    height: 50.h,
                  ),
                  Container(
                    width: 390.w,
                    height: 390.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage("assets/images/feature-img.png"))),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Text(
                    'Our Great Doctors',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    'Tibbi provides a wide network of distinguished doctors in the country, in various medical specialties and in all governorates.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Wrap(
                    children: [
                      DoctorCard(),
                      DoctorCard(),
                      DoctorCard(),
                      DoctorCard(),
                    ],
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Text(
                    'Most Questions by our beloved pationts',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  QuestionCard(
                    question: 'What is your medical care?',
                    answer:
                        'Tibbi was founded on a better model of care one designed around patients needs that provides a higher level of quality and service affordably. We do this through innovative design, excellent customer service, and the efficient use of technology.',
                  ),
                  QuestionCard(
                    question: 'What happens if I need to buy a medicine?',
                    answer:
                        'Tibbi offers you a wide network of pharmacies in all governorates of the country, through which you can purchase your medications electronically, have them delivered to your door, and pay upon delivery.',
                  ),
                  QuestionCard(
                    question: 'What happens if I need to Book an appointment?',
                    answer:
                        'Tibbi offers you a wide network of doctors in all governorates of the country. You can book your appointment with them through the application by choosing the date and time that suits you with ease.',
                  ),
                  QuestionCard(
                    question:
                        'Can I fully register my financial accounts and patient files?',
                    answer:
                        'Through Tibbi, you, as a doctor, can fully record your patients’ medical files into electronic files, and you can also upload all analyzes and x-ray images to their files for later review.',
                  ),
                  QuestionCard(
                    question: 'What sectors does your application serve?',
                    answer:
                        'Tibbi provides its services first and foremost to patients in general. It also provides management services to doctors from all specialties. It also provides its services to pharmacies and medical centers. It also includes a wide network of health insurance companies.',
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'What our pationts say?',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        'At Tibbi, we value the importance of transparency, so we support patients by expressing their opinions about services and service providers.',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  CommentSlider(
                      cardList: cardList,
                      onPageChange: (index, reason) {
                        provider.setCurrentPageIndex(index);
                      }),
                  SizedBox(
                    height: 100.h,
                  ),
                ],
              ),
            ),
            Footer()
          ],
        ),
      ),
    );
  }
}
