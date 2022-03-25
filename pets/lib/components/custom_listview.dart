import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CustomListView extends StatefulWidget {
  final IconData iconePets;
  final String textIcons;

  CustomListView({
    Key? key,
    required this.iconePets,
    required this.textIcons,
  }) : super(key: key);

  @override
  State<CustomListView> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 4,
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 110,
            child: ElevatedButton.icon(
              onPressed: () {
                setState(
                  () {},
                );
              },
              icon: Icon(widget.iconePets, color: AppColors.textoM),
              label: FittedBox(
                fit: BoxFit.fitHeight,
                child: Text(
                  widget.textIcons,
                  style: TextStyle(
                    color: AppColors.logogrey,
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: AppColors.background,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
