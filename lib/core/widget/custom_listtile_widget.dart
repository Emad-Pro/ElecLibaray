import 'package:flutter/material.dart';

class CustomListTileWidget extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget? widget;
  final void Function()? onTap;
  final IconData icon;
  final Color? color;
  const CustomListTileWidget(
      {super.key,
      required this.title,
      this.subtitle,
      this.widget,
      this.onTap,
      required this.icon,
      required this.color});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      trailing: widget ?? const Icon(Icons.keyboard_arrow_right),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle!,
              style: const TextStyle(
                fontSize: 12,
              ),
            )
          : null,
      leading: LeadingContainerWidget(icon: icon, color: color),
    );
  }
}

class LeadingContainerWidget extends StatelessWidget {
  const LeadingContainerWidget(
      {super.key, required this.icon, required this.color});
  final IconData icon;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.08,
      height: MediaQuery.of(context).size.width * 0.08,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Icon(
        icon,
        //   color: Colors.white,
      ),
    );
  }
}
