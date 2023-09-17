import 'package:flutter/material.dart';

import 'add_list_tile.dart';

class WhiteBackGraundWidget extends StatelessWidget {
  const WhiteBackGraundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return SingleChildScrollView(
      child: Container(
          width:  MediaQuery.of(context).size.width-30,
          height: MediaQuery.of(context).size.height-160,

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: AddListTile(),
      ),
    );
  }
}
