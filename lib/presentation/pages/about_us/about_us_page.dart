import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:petology/domain/auth/model/user_model.dart';
import 'package:petology/infrastructure/auth/auth_service.dart';
import 'package:petology/injectable.dart';
import 'package:petology/presentation/pages/about_us/widgets/first_section_container.dart';
import 'package:petology/presentation/pages/about_us/widgets/pets_needs/bowl_container.dart';
import 'package:petology/presentation/pages/about_us/widgets/pets_needs/pets_needs_container.dart';
import 'package:petology/presentation/pages/about_us/widgets/second_section_container.dart';
import 'package:petology/presentation/pages/shared/header/header.dart';

import '../../../application/services_cubit/static_service/static_service_cubit.dart';
import '../../../domain/auth/auth_service_interface.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  void initState() {
    BlocProvider.of<StaticServiceCubit>(context).getFirstSection();
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            const FirstSectionContainer(),
            const SecondSectioncontainer(),
            SizedBox(height: 150.h),
            PetsNeedsContainer(),
            SizedBox(height: 100.h),
          ],
        ),
      ),
    );
  }
}
