import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../config/size_config.dart';

class InfoCardTablero extends StatelessWidget {
  const InfoCardTablero({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      width: 300,
      height: 220,
      child: Row(
        children: [
          Expanded(
            child: Column(children: [
              Icon(Icons.image, size: 80),
              Expanded(
                  child: SizedBox(
                width: double.infinity,
                child: Container(
                  padding: EdgeInsets.all(SizeConfig.blockSizeVertical! * 2),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Title",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  decoration: TextDecoration.none)),
                          Text("xx/xx/xx",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  decoration: TextDecoration.none)),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 2,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.none)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ))
            ]),
          )
        ],
      ),
    );
  }
}
