import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  //final Pushname pushname = Get.put(Pushname());

  final String name = "Give-iT";
  static var myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: CircleAvatar(
            // ====== Image Profile ======
            child: GetBuilder<Pushname>(
              init: Pushname(),
              builder: (_) {
                if (_.namee == null || _.namee == '') {
                  _.namee = "Give-iT";
                }
                return Text(
                  "${_.namee[0]}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 50,
                  ),
                );
              },
            ),
            // Text(
            //   'G',
            //   style: TextStyle(
            //     fontWeight: FontWeight.bold,
            //     color: Colors.white,
            //     fontSize: 50,
            //   ),
            // ),
            radius: size.width / 6,
            backgroundColor: Color(0xFF009533),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<Pushname>(
                  init: Pushname(),
                  builder: (_) {
                    if (_.namee == null || _.namee == '') {
                      _.namee = "Give-iT";
                    }

                    return Text(
                      "${_.namee}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    );
                  }),
              //======= Profile name changer ========
              IconButton(
                icon: Icon(Icons.create),
                //======= show dialog for text change ======
                onPressed: () {
                  return showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        actions: [
                          FlatButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text(
                              'Cancel',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                          FlatButton(
                            onPressed: () async {
                              //Pushname(namee: myController.text);
                              await Get.find<Pushname>().nameof();
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Ok',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                        content: TextField(
                          controller: myController,
                          textAlign: TextAlign.center,
                          autofocus: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: ' enter name',
                            hintStyle: new TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 12.0,
                              fontFamily: 'helvetica_neue_light',
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Pushname extends GetxController {
  Pushname({this.namee});
  String namee;
  Future nameof() async {
    namee = Profile.myController.text;
    update();
  }
}

//====== OBX GETX Study Purpose =======
class ProfileName {
  String name;
  ProfileName({this.name = 'Give-iT'});
}

class ProfileController extends GetxController {
  final profilename = ProfileName().obs;

  //updateProfile();
}
