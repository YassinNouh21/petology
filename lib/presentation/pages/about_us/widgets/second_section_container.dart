import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petology/injectable.dart';
import 'package:petology/presentation/pages/shared/web_button/sign_button.dart';
import 'package:petology/presentation/resources/theme/web_asset.dart';
import 'package:petology/presentation/resources/theme/web_gradient.dart';
import 'package:petology/presentation/resources/theme/web_strings.dart';

import '../../../../application/services_cubit/static_service/static_service_cubit.dart';

class SecondSectioncontainer extends StatelessWidget {
  const SecondSectioncontainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<StaticServiceCubit>()..getSecondSection(),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: [
            Expanded(flex: 1, child: Image.asset(WebAsset.dogAndCatIamge)),
            Expanded(
              flex: 1,
              child: BlocBuilder<StaticServiceCubit, StaticServiceState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const CircularProgressIndicator();
                  } else if (state.isFailure) {
                    return Text('failed to load ${state.error}');
                  } else {
                    return Container(
                      padding:
                          EdgeInsets.only(right: 300.w, left: 170.w, top: 200),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.static.title ?? '',
                            style: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(color: Colors.black),
                          ),
                          SizedBox(
                            height: 50.h,
                          ),
                          Text(state.static.body ?? '',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(
                                      color: Colors.black, fontSize: 42.sp)),
                          SizedBox(
                            height: 50.h,
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
