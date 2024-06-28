import 'package:elec_lib_app/core/widget/custom_text_erorr.dart';
import 'package:elec_lib_app/src/author/presentation/view_model/cubit/author_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/enum/state.dart';
import '../../../../../core/widget/custom_widget_loading.dart';
import '../widget/build_author_gridview_item.dart';

class AuthorMobileScreen extends StatelessWidget {
  const AuthorMobileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthorCubit, AuthorState>(builder: (context, state) {
      switch (state.authorRequestState) {
        case RequestState.loading:
          return const CustomWidgetLoading();
        case RequestState.success:
          return GridView.builder(
            itemCount: state.authorModel!.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) => BuildAuthorGridViewItem(
              authorModel: state.authorModel![index],
            ),
          );
        case RequestState.erorr:
          return const CustomTextErorr();
      }
    });
  }
}
