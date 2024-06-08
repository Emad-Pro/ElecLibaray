import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/widget/custom_text_form_field.dart';
import '../../view_model/cubit/register_cubit.dart';

class BodyRegisterWidget extends StatelessWidget {
  const BodyRegisterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocBuilder<RegisterCubit, RegisterState>(
        builder: (context, state) {
          final registerCubit = context.watch<RegisterCubit>();
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: registerCubit.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextFormFiled(
                      controller: registerCubit.emailController,
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
                        registerCubit.validateFormRegister();
                      },
                      obsec: false),
                  CustomTextFormFiled(
                      controller: registerCubit.userNameController,
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
                        registerCubit.validateFormRegister();
                      },
                      obsec: false),
                  CustomTextFormFiled(
                      controller: registerCubit.passwordController,
                      title: "Password".tr(context),
                      onChanged: (value) {
                        registerCubit.validateFormRegister();
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter Password".tr(context);
                        }
                        if (registerCubit.passwordController.text !=
                            registerCubit.confirmPasswordController.text) {
                          return "password is not equtable".tr(context);
                        }
                        return null;
                      },
                      obsec: false),
                  CustomTextFormFiled(
                      controller: registerCubit.confirmPasswordController,
                      title: "Confirm password".tr(context),
                      onChanged: (value) {
                        registerCubit.validateFormRegister();
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter Confirm Password".tr(context);
                        }
                        if (registerCubit.passwordController.text !=
                            registerCubit.confirmPasswordController.text) {
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
                      onPressed: registerCubit.isActive ? () {} : null,
                      style: ButtonStyle(
                          elevation: WidgetStateProperty.all<double>(0),
                          shape: WidgetStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          )),
                          backgroundColor: WidgetStateProperty.all<Color>(
                              registerCubit.isActive
                                  ? registerCubit.loginActiveButtonColor
                                  : registerCubit.loginUnActiveButtonColor)),
                      child: Text("Sign up".tr(context)),
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
