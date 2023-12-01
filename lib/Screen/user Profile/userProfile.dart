


import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megma_india/Helper/Colors.dart';

import '../../Widget/custom_app_button.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key, this.isFrom}) : super(key: key);
  final bool? isFrom;
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}



class _ProfileScreenState extends State<ProfileScreen> {

  final _formKey = GlobalKey<FormState>();



  // getdata() async {
  //
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   setState(() {
  //
  //
  //     userId =  preferences.getString('userId');
  //
  //     getProfile();
  //
  //   });
  // }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body:

      imagefiledummy==null?Container(height: MediaQuery.of(context).size.height,

          width: MediaQuery.of(context).size.width,
          child: Center(child: CircularProgressIndicator(),)
      ):

      SingleChildScrollView(
        child: Column(
          children: [

            Stack(
              children: [
                ClipPath(
                  clipper: DiagonalPathClipperOne(),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.33,
                    color: Colors.red,
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
                        child: Image.asset(
                          'assets/images/SPLASH SCREEN.png',
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
                ClipPath(
                  clipper: DiagonalPathClipperOne(),
                  child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.33,
                      width: MediaQuery.of(context).size.width,
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  AppColors.secondary,

                                ])),
                      )),
                ),
                Positioned(
                    top: MediaQuery.of(context).size.height / 7,
                    right: MediaQuery.of(context).size.width / 3,
                    left: MediaQuery.of(context).size.width / 3,
                    child:

                    // imageFile==null?
                    Stack(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            color: AppColors.secondary,
                            shape: BoxShape.circle,
                            border: Border.all(width: 5, color: AppColors.whiteTemp),
                            image:  DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage("${imagefiledummy}")),

                            /*backgroundImage: _image != null
                                      ? FileImage(_image!)
                                  as ImageProvider<Object>
                                      : AssetImage(
                                      'assets/images/Profile.png')
                                  as ImageProvider<
                                      Object>,*/ // Explicit casting
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: InkWell(
                              onTap: () {
                                // showOptions(context);
                              },
                              child:  CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 20,
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  color: AppColors.secondary,
                                ),
                              ),
                            )),
                      ],
                    )

                    //     :
                    // Stack(
                    //   children: [
                    //     Container(
                    //       height: 120,
                    //       width: 120,
                    //       decoration: BoxDecoration(
                    //           color: AppColors.secondary,
                    //           shape: BoxShape.circle,
                    //           border: Border.all(width: 5, color: AppColors.whiteTemp),
                    //           image: DecorationImage(
                    //               fit: BoxFit.cover,
                    //               image: FileImage(imageFile!))),
                    //
                    //       /*backgroundImage: _image != null
                    //                   ? FileImage(_image!)
                    //               as ImageProvider<Object>
                    //                   : AssetImage(
                    //                   'assets/images/Profile.png')
                    //               as ImageProvider<
                    //                   Object>,*/ // Explicit casting
                    //     ),
                    //     Positioned(
                    //         bottom: 0,
                    //         right: 0,
                    //         child: InkWell(
                    //           onTap: () {
                    //             // showOptions(context);
                    //           },
                    //           child: const CircleAvatar(
                    //             backgroundColor: Colors.white,
                    //             radius: 20,
                    //             child: Icon(
                    //               Icons.camera_alt_outlined,
                    //               color: AppColors.secondary,
                    //             ),
                    //           ),
                    //         )),
                    //   ],
                    // )
                ),
              ],
            ),


            Center(
                child: Text(
                  "",
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            SizedBox(height: 20,),
            isEditProfile ? const SizedBox.shrink():
            Center(
                child:
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Icon(Icons.account_balance_wallet_sharp,
                      color: AppColors.secondary),
                  Text(
                    "${wallet.toString()}" ,
                    style: const TextStyle(fontSize: 16, color: AppColors.secondary),
                  ),
                ])),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: isEditProfile
                  ?
              Form(
                key: _formKey,
                child: Column(
                  children: [


                    // textFieldContainer(
                    //     Icons.phone, 'Phone Number',phoneC),

                    Column(

                      children: [
                        Row(
                            children: [
                              Icon(Icons.phone, color: AppColors.secondary,),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Phone Number", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                            ]
                        ),

                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 3,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            maxLength: 10,
                            controller: phoneC,
                            decoration:  InputDecoration(
                                hintText:  'Phone Number',
                                border: InputBorder.none,
                                contentPadding: const EdgeInsets.only(top: 0,left: 10),
                                counterText: ""
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter Phone Number';
                              }
                              else if (value.length<10) {
                                return 'Please enter valid Phone Number';
                              }
                              return null; // Return null if the input is valid
                            },
                          ),
                        ),

                      ],
                    ),


                    SizedBox(height: 10,),


                    Column(
                      children: [
                        Row(children: [
                          Icon(Icons.email, color: AppColors.secondary,),
                          const SizedBox(
                            width: 5,
                          ),
                          Text('Email Address', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                        ]),

                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 3,
                          child: TextFormField(
                            maxLength: 10,
                            controller: emailC,
                            // obscureText: isSecure ?? false,
                            decoration:  InputDecoration(
                                hintText:  'Email Address',
                                border: InputBorder.none,
                                contentPadding: const EdgeInsets.only(top: 0,left: 10),
                                counterText: ""
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter Email';
                              }
                              else if (!value.contains('@')||!value.contains("gmail.com")) {
                                return 'Please enter valid Email';
                              }
                              // else if (value.length<10) {
                              //   return 'Please enter valid Phone Number';
                              // }
                              return null; // Return null if the input is valid
                            },
                          ),
                        ),

                      ],
                    ),



                    const SizedBox(height: 10,),
                    textFieldContainer(
                        Icons.location_on, 'Address',addressC),



                    const SizedBox(height: 40,),
                    CustomButton(textt: "Update profile")
                  ],
                ),
              )

                  :

              Column(
                children: [

                  textContainer(
                      Icons.email, 'Email Address',emailC.text ),
                  const SizedBox(
                    height: 20,
                  ),
                  textContainer(
                      Icons.phone, 'Phone Number', '+91${phoneC.text}'),
                  const SizedBox(
                    height: 20,
                  ),
                  textContainer(Icons.location_on, 'Address',
                      addressC.text),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomButton(textt: "Edit profile")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


  bool isEditProfile = false ;
  final phoneC = TextEditingController();
  final emailC = TextEditingController();
  final addressC = TextEditingController();

  Widget textFieldContainer(
      IconData icon, String title, TextEditingController textEditingController) {
    return Column(
      children: [
        textviewRow(title, icon),
        otherTextField(controller: textEditingController),
      ],
    );
  }
  Widget textviewRow(String title, IconData icon) {
    return Row(children: [
      Icon(icon, color: AppColors.secondary,),
      const SizedBox(
        width: 5,
      ),
      Text(title, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
    ]);
  }


  Widget otherTextField({TextEditingController? controller, String? hint, bool? isSecure }){

    return

      Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)),
        elevation: 3,
        child: TextFormField(
          controller: controller,
          obscureText: isSecure ?? false,
          decoration:  InputDecoration(
            hintText: hint ?? '',
            border: InputBorder.none,
            contentPadding: const EdgeInsets.only(top: 0,left: 10),
          ),
        ),
      );


  }

  Widget textContainer(IconData icon, String title, String data) {
    return Container(
      height: 90,
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: AppColors.whiteTemp,
          border: Border.all(color: AppColors.secondary),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 20,
              offset: const Offset(0, 0), // changes position of shadow
            ),
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 5,
              offset: const Offset(0, 0), // changes position of shadow
            )
          ]),
      child: Row(
        children: [
          Icon(
            icon,
            color: AppColors.secondary,
            size: 30,
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 10,
              ),
              Text(data,
                  style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ],
          )
        ],
      ),
    );
  }

  //
  // Future <void> updateProfile () async{
  //   var request = http.MultipartRequest('POST', Uri.parse('${baseUrl}update_profile'));
  //   request.fields.addAll({
  //     'user_id': userId.toString(),
  //     'name':name.toString(),
  //     'email': emailC.text,
  //     'mobile': phoneC.text,
  //     'address': addressC.text,
  //
  //   });
  //
  //   if(imageFile!=null) {
  //     request.files.add(
  //
  //
  //         await http.MultipartFile.fromPath('image', imageFile!.path));
  //   }
  //
  //   http.StreamedResponse response = await request.send();
  //
  //   if (response.statusCode == 200) {
  //     var result =await response.stream.bytesToString();
  //     var finalresult=jsonDecode(result);
  //     bool error = finalresult['status'];
  //     String msg = finalresult['message'];
  //     if(error){
  //
  //       Fluttertoast.showToast(msg: msg);
  //
  //       isEditProfile = false;
  //       setState(() {
  //
  //       });
  //     }
  //     //
  //   }
  //   else {
  //     print(response.reasonPhrase);
  //   }
  //
  //   // var param = {
  //   //   'user_id': userId.toString(),
  //   //   'name':name.toString(),
  //   //   'email': emailC.text,
  //   //   'mobile': phoneC.text,
  //   //   'address': addressC.text,
  //   //   'image': imageFile,
  //   // };
  //   // apiBaseHelper.postAPICall(updateProfileApi, param).then((getData) {
  //   //   bool error = getData['status'];
  //   //   String msg = getData['message'];
  //   //
  //   //   if (error) {
  //   //
  //   //
  //   //     Fluttertoast.showToast(msg: msg);
  //   //
  //   //
  //   //   } else {
  //   //     Fluttertoast.showToast(msg: msg);
  //   //   }
  //   //
  //   // });
  // }


  var wallet;
  String? imagefiledummy;
  //
  // Future showOptions(BuildContext context,) async {
  //
  //   showCupertinoModalPopup(
  //     context: context,
  //     builder: (context) => CupertinoActionSheet(
  //       actions: [
  //         CupertinoActionSheetAction(
  //           child: const Text('Photo Gallery'),
  //           onPressed: () {
  //             // close the options modal
  //             Navigator.of(context).pop();
  //             // get image from gallery
  //             getImageFromGallery();
  //           },
  //         ),
  //         CupertinoActionSheetAction(
  //           child: const Text('Camera'),
  //           onPressed: () {
  //             // close the options modal
  //             Navigator.of(context).pop();
  //             // get image from camera
  //             getImageFromCamera();
  //           },
  //         ),
  //       ],
  //     ),
  //   );
  // }

  File? imageFile;
//   Future getImageFromGallery() async {
//     var image = await ImagePicker().pickImage(
//         source: ImageSource.gallery,
//         imageQuality: 50
//     );
//     imageFile = File(image!.path);
//     print(imageFile);
//     setState(() {
//
//     });
// // Navigator.pop(context) ;
//
//   }
//   Future getImageFromCamera() async {
//     var image = await ImagePicker().pickImage(
//         source: ImageSource.camera,
//         imageQuality: 50
//     );
//     imageFile = File(image!.path);
//     print(imageFile);
//
//     setState(() {
//
//     });
//     // Navigator.pop(context) ;
//   }


  // Future <void> getProfile () async{
  //
  //
  //   print('1');
  //   var param = {
  //     'user_id': userId.toString(),
  //   };
  //   print('2');
  //
  //   apiBaseHelper.postAPICall(getProfileApi, param).then((getData) {
  //     bool error = getData['status'];
  //     String msg = getData['message'];
  //
  //     if (error) {
  //       print('3');
  //
  //       print('${getData['data']['address']}');
  //
  //       name = getData['data']['first_name'].toString();
  //
  //       phoneC.text = getData['data']['mobile'].toString();
  //       emailC.text = getData['data']['email'].toString();
  //       addressC.text =getData['data']['address']??'';
  //       wallet =  getData['data']['wallet'].toString();
  //       imagefiledummy=getData['data']['user_image'].toString();
  //       setState(() {
  //
  //       });
  //       print('4');
  //
  //     } else {
  //     }
  //
  //   });
  // }

}

class DiagonalPathClipperOne extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0.0, size.height)
      ..lineTo(size.width, size.height/1.7)
      ..lineTo(size.width, 0.0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}