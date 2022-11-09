import 'package:doctor_app/logic/cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app_router.dart';

void main() {
  runApp( Doctors(appRoute: AppRouter()));
}

class Doctors extends StatelessWidget {
  const Doctors({super.key, required this.appRoute});
  final AppRouter appRoute ;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit()..getDates(),
      child: BlocConsumer <AppCubit,AppState>(
        listener: (context,state){},
        builder: (context,state){
         return MaterialApp(
            debugShowCheckedModeBanner: false,
            onGenerateRoute:appRoute.generateRoute,
          );
        },
      )
    );
  }
}

