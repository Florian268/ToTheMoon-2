import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:to_the_moon/viewmodels/user_view_model.dart';
import 'package:to_the_moon/views/menu_view.dart';
import 'package:provider/provider.dart';


class AgreementView extends StatelessWidget {
  const AgreementView({super.key});

  @override
  Widget build(BuildContext context) {
    UserViewModel usersViewModel = context.watch<UserViewModel>();
    return Scaffold(
        body:
        Stack(
            children: <Widget>[
              Align(
                alignment: Alignment(0.0, -0.2),
                child: Container(
                  width: 300,
                  child: Flexible(
                      child: new Text("User Agreement. Dassault Systemes may not distribute any Product(s) to any User unless such User is subject to a license agreement with Dassault Systemes similar to the license agreements Dassault Systemes uses for similar or like products. Dassault Systemes will promptly provide PlanetCAD with such license agreement(s) upon PlanetCAD's request."),
                  ),
                ),
              ),
              Align(
                child: Container(
                  alignment: Alignment(0.0, 0.7),
                  child: SizedBox(
                      height: 50,
                      width:200,
                      child:ElevatedButton(
                          child: Text('Accept.', style:TextStyle(color: Colors.white,)),
                          onPressed: () {
                            usersViewModel.setAgreement();
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MenuView()));
                          }
                      )
                  ),
                ),
              )
            ])
      );
  }
}