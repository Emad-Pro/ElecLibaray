import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:elec_lib_app/src/home/view_model/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/responsive_layout/app_styles.dart';
import '../../../../core/theme/colors.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.surface;
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(5),
          color: kBackgroundColorGreen,
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(
                  Icons.menu,
                  color: color,
                ),
                color: color,
              ),
              if (state.selectedIndex != 0)
                IconButton(
                    onPressed: () {
                      context.read<HomeCubit>().changeSelectedPageDrawer(0);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: color,
                    )),
              const Spacer(),
              Text(
                "booky".tr(context),
                style: TextStyle(
                    fontSize: getResponsiveFontSize(context, fontSize: 24),
                    color: color),
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: color,
                  ))
            ],
          ),
        );
      },
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(65);
}
