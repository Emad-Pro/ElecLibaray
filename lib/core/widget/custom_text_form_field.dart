import 'package:flutter/material.dart';

import '../responsive_layout/app_styles.dart';

class CustomTextFormFiled extends StatelessWidget {
  final String title;
  final TextEditingController? controller;
  final bool obsec;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  const CustomTextFormFiled({
    super.key,
    required this.title,
    this.controller,
    this.validator,
    required this.onChanged,
    required this.obsec,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 15.0, bottom: 10, left: 20, right: 20),
          child: Text(
            title,
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: getResponsiveFontSize(context, fontSize: 18)),
          ),
        ),
        TextFormField(
            style: const TextStyle(fontSize: 14),
            validator: validator,
            onChanged: onChanged,
            obscureText: obsec,
            controller: controller,
            decoration: InputDecoration(
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(color: Colors.red)),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(color: Colors.red)),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide:
                    BorderSide(color: Theme.of(context).colorScheme.primary),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide:
                    BorderSide(color: Theme.of(context).colorScheme.primary),
              ),
            ))
      ],
    );
  }
}
