import 'package:flutter/material.dart';
import 'package:flutter_dynamictheming/Blocs/blocs_class.dart';
import 'package:flutter_dynamictheming/UI/DesignedTheme.dart';

class Options extends StatelessWidget {
  final Color color;
  final String str;


  Options(this.color, this.str);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: IconButton(
          icon: Icon(
            Icons.opacity,
            color: color,
            size: 40.0,
          ),
          onPressed: (){
            if (str == 'pc'){
              DesignedTheme.getPrimaryColor(color);
            }else if (str == 'pcd'){
              DesignedTheme.getPrimaryColorDark(color);
            }else {
              DesignedTheme.getAccentColor(color);
            }

            Blocs.themeBloc.changeTheme.add(DesignedTheme.themeSelected());
          },
        ),
    );

  }

}
