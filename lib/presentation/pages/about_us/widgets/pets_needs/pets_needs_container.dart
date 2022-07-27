import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petology/injectable.dart';
import 'package:petology/presentation/pages/about_us/widgets/pets_needs/bowl_container.dart';

import 'package:petology/presentation/resources/theme/web_strings.dart';

import '../../../../../application/services_cubit/static_service/static_service_cubit.dart';

class PetsNeedsContainer extends StatelessWidget {
  PetsNeedsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<StaticServiceCubit>()..getListPetNeeds(),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: 250.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: double.infinity),
            Text(
              WebAboutUs.howToTakeCare,
              style: Theme.of(context).textTheme.headline3!.copyWith(
                    color: Colors.black,
                    fontSize: 70.sp,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(height: 150.h),
            BlocBuilder<StaticServiceCubit, StaticServiceState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const CircularProgressIndicator();
                } else if (state.isFailure) {
                  return Text('failed to load ${state.error}');
                } else {
                  return Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 150.w,
                    children: [
                      for (var item in state.static)
                        BowlContainer(
                          title: item.title,
                          imgUrl: item.imageUrl,
                        ),
                    ],
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
