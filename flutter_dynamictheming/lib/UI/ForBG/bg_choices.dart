import 'package:flutter/material.dart';
import 'package:flutter_dynamictheming/Blocs/blocs_class.dart';
import 'package:flutter_dynamictheming/UI/DesignedTheme.dart';

class BgChoices extends StatelessWidget {
  final String str;
  BgChoices(this.str);
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
        onTap: (){
          DesignedTheme.getBackgroundImg(str);
          Blocs.bgBloc.changeBg.add(DesignedTheme.backgroundImg);
        },
        child: Container(
          height: 150.0,
          width: 120.0,
          child: Image.asset(str),
        ),
      ),
    );
  }
}
