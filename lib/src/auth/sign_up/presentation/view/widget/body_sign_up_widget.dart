import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:elec_lib_app/core/enum/state.dart';
import 'package:elec_lib_app/core/get_It/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../../../../../core/widget/custom_text_form_field.dart';
import '../../view_model/cubit/sign_up_cubit.dart';

class BodySignUpWidget extends StatelessWidget {
  const BodySignUpWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(getIt()),
      child: BlocConsumer<SignUpCubit, SignUpState>(
        listener: (context, state) {
          if (state.signUpNewUserState == AuthRequestState.erorr) {
            EasyLoading.dismiss();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.red,
                content: Text(state.signUpNewUserMessage.tr(context)),
              ),
            );
          } else if (state.signUpNewUserState == AuthRequestState.loading) {
            EasyLoading.show(
                status: 'loading...'.tr(context),
                maskType: EasyLoadingMaskType.black);
          } else if (state.signUpNewUserState == AuthRequestState.success) {
            EasyLoading.dismiss();
            EasyLoading.showSuccess(
              state.signUpNewUserMessage,
            );
            BlocProvider.of<SignUpCubit>(context).claearFailed();
          }
        },
        builder: (context, state) {
          final signUpCubit = context.watch<SignUpCubit>();
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: signUpCubit.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextFormFiled(
                      controller: signUpCubit.emailController,
                      title: "Email".tr(context),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter Your Email".tr(context);
                        } else if (value.length < 6) {
                          return "Email is short".tr(context);
                        }
                        return null;
                      },
                      onChanged: (value) {
                        signUpCubit.validateFormRegister();
                      },
                      obsec: false),
                  CustomTextFormFiled(
                      controller: signUpCubit.userNameController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter Username".tr(context);
                        } else if (value.length < 6) {
                          return "username is short".tr(context);
                        }
                        return null;
                      },
                      title: "Username".tr(context),
                      onChanged: (value) {
                        signUpCubit.validateFormRegister();
                      },
                      obsec: false),
                  CustomTextFormFiled(
                      controller: signUpCubit.passwordController,
                      title: "Password".tr(context),
                      onChanged: (value) {
                        signUpCubit.validateFormRegister();
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter Password".tr(context);
                        }
                        if (signUpCubit.passwordController.text !=
                            signUpCubit.confirmPasswordController.text) {
                          return "password is not equtable".tr(context);
                        }
                        return null;
                      },
                      obsec: false),
                  CustomTextFormFiled(
                      controller: signUpCubit.confirmPasswordController,
                      title: "Confirm password".tr(context),
                      onChanged: (value) {
                        signUpCubit.validateFormRegister();
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter Confirm Password".tr(context);
                        }
                        if (signUpCubit.passwordController.text !=
                            signUpCubit.confirmPasswordController.text) {
                          return "password is not equtable".tr(context);
                        }
                        return null;
                      },
                      obsec: false),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: state.isActive
                          ? () {
                              BlocProvider.of<SignUpCubit>(context)
                                  .signUpNewUser();
                            }
                          : null,
                      style: ButtonStyle(
                        elevation: WidgetStateProperty.all<double>(0),
                        shape: WidgetStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                        backgroundColor: WidgetStateProperty.all<Color>(
                          !state.isActive
                              ? Theme.of(context).colorScheme.onPrimary
                              : Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      child: Text(
                        "Sign up".tr(context),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
