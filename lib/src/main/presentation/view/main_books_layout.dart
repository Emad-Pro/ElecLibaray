import 'package:elec_lib_app/core/import.dart';
import 'package:elec_lib_app/core/responsive_layout/responsive_layout.dart';
import 'package:elec_lib_app/src/main/presentation/view/screen/main_books_mobile_screen.dart';
import 'package:flutter/material.dart';
import '../view_model/cubit/main_books_cubit.dart';
import 'screen/main_books_tablet_screen.dart';

class MainBooksLayout extends StatelessWidget {
  const MainBooksLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBooksCubit, MainBooksState>(
      builder: (context, state) {
        if (ResponsiveDevices.isDesktop(context)) {
          return MainBooksTabletScreen(
            mainBooksState: state,
          );
        } else {
          return MainBooksMobileScreen(
            mainBooksState: state,
          );
        }
      },
    );
  }
}
