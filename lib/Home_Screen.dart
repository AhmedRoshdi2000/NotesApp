import 'package:flutter/material.dart';
import 'package:flutter_application_2/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'app_styles.dart';

class HomesScreen extends StatelessWidget {
  const HomesScreen({super.key});

  @override
  // SvgPicture.asset('images/menu_icon.svg')

  Widget build(BuildContext context) {
    SizeConfg().init(context);
    return SafeArea(
        child: SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: KPaddingHorizontal),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Your Dribbox',
                style: kQuestriaSemilBold.copyWith(
                  color: KBlackColor,
                  fontSize: SizeConfg.blockSizeHorizontal! * 6,
                ),
              ),
              SvgPicture.asset('assests/images/menu_icon.svg')
            ],
          ),
          SizedBox(height: SizeConfg.blockSizeHorizontal! * 6),
          TextField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(KBorderRaduis),
                  borderSide: const BorderSide(width: 1.0, color: KGrayColor)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(KBorderRaduis),
                  borderSide: const BorderSide(width: 1.0, color: KGrayColor)),
              prefixIcon: Container(
                  width: 24,
                  height: 24,
                  alignment: Alignment.center,
                  child: SvgPicture.asset('assests/images/search_icon.svg')),
              hintText: 'Search folder',
            ),
            style: kQuestrialMeduim.copyWith(
                fontSize: SizeConfg.blockSizeHorizontal! * 4,
                color: KDarkGrayColor),
          ),
        ],
      ),
    ));
  }
}
