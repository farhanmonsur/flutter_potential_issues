import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_potential_issues/application/issue_cubit.dart';
import 'package:flutter_potential_issues/domain/interfaces/i_issue_provider.dart';
import 'package:flutter_potential_issues/injection.dart';
import 'package:flutter_potential_issues/presentation/issue_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  final IIssueProvider _issueProvider = getIt<IIssueProvider>();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, _) => MaterialApp(
          builder: EasyLoading.init(),
          title: 'Flutter Potential Issues',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: BlocProvider<IssueCubit>(
            create: (context) => IssueCubit(_issueProvider)..fetchIssues(),
            child: IssuePage()
          ),
          ),
    );
  }
}
