import 'package:flutter/material.dart';
import 'package:megma_india/Helper/Colors.dart';
class CustomTemtextField extends StatefulWidget {

 IconData? iconData;
 String?imagedataa;
  String ?hinttext;
   VoidCallback ?ontab;
   TextEditingController?controllerfield;

   int?itemcount;
   String?validation;







CustomTemtextField({Key? key,this.hinttext,this.itemcount,this.controllerfield,this.ontab,this.iconData,this.validation,this.imagedataa}) : super(key: key);

  @override
  State<CustomTemtextField> createState() => _CustomTemtextFieldState();
}

class _CustomTemtextFieldState extends State<CustomTemtextField> {
  @override
  Widget build(BuildContext context) {
    return

      Card(

      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child:


              TextFormField(
                controller: widget.controllerfield,
                // keyboardType: TextInputType.text,
                validator: (msg) {
                  if (msg!.isEmpty) {
                    return "Please Enter ${widget.hinttext}";
                  }
                },
                maxLength: widget.itemcount,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  counterText: "",
                  contentPadding: const EdgeInsets.only(
                      left: 15, top: 18),
                  hintText: "${widget.hinttext}",hintStyle: TextStyle(color: AppColors.fieldTextColors),

                  prefixIcon:
                      Image.asset("${widget.imagedataa.toString()}",scale: 1.5,),





                ),
              ),

        ),
      ),
    );


  }
}
// textfield for email

class TextfieldEmailphone extends StatefulWidget {

  IconData? iconData;
  String?imagedataa;
  String ?hinttext;
  VoidCallback ?ontab;
  TextEditingController?controllerfield;

  int?itemcount;
  String?validation;







  TextfieldEmailphone({Key? key,this.hinttext,this.itemcount,this.controllerfield,this.ontab,this.iconData,this.validation,this.imagedataa}) : super(key: key);

  @override
  State<TextfieldEmailphone> createState() => _TextfieldEmailphoneState();
}

class _TextfieldEmailphoneState extends State<TextfieldEmailphone> {
  @override
  Widget build(BuildContext context) {
    return

      Card(

        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 4,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child:


            TextFormField(
              controller: widget.controllerfield,
              // keyboardType: TextInputType.text,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please Enter ${widget.hinttext}';
                }
                else if (value.length<10) {
                  return 'Please Enter valid ${widget.hinttext}';
                }
                return null; // Return null if the input is valid
              },

              maxLength: widget.itemcount,
              decoration: InputDecoration(
                border: InputBorder.none,
                counterText: "",
                contentPadding: const EdgeInsets.only(
                    left: 15, top: 15),
                hintText: "${widget.hinttext}",hintStyle: TextStyle(color: AppColors.fieldTextColors),

                prefixIcon: Image.asset("${widget.imagedataa.toString()}",scale: 1.5,),





              ),
            ),

          ),
        ),
      );


  }
}

//password field

class Textfieldpassword extends StatefulWidget {

  IconData? iconData;
  String?imagedataa;
  String ?hinttext;
  VoidCallback ?ontab;
  TextEditingController?controllerfield;

  int?itemcount;
  String?validation;







  Textfieldpassword({Key? key,this.hinttext,this.itemcount,this.controllerfield,this.ontab,this.iconData,this.validation,this.imagedataa}) : super(key: key);

  @override
  State<Textfieldpassword> createState() => _TextfieldpasswordState();
}

class _TextfieldpasswordState extends State<Textfieldpassword> {

  bool isobscure=true;
  @override
  Widget build(BuildContext context) {
    return

      Card(

        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 4,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child:


            TextFormField(

              obscureText: isobscure,
              controller: widget.controllerfield,
              // keyboardType: TextInputType.text,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please Enter ${widget.hinttext}';
                }
                return null; // Return null if the input is valid
              },

              maxLength: widget.itemcount,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(isobscure ? Icons.visibility : Icons.visibility_off,color: AppColors.secondary,),
                  onPressed: () {
                    setState(() {
                      isobscure = !isobscure;
                    });
                  },
                ),

                border: InputBorder.none,
                counterText: "",
                contentPadding: const EdgeInsets.only(
                    left: 15, top: 18),
                hintText: "${widget.hinttext}",hintStyle: TextStyle(color: AppColors.fieldTextColors),

                prefixIcon:
                Image.asset("${widget.imagedataa.toString()}",scale: 1.5,),





              ),
            ),

          ),
        ),
      );


  }
}

//only phone

class Textfieldonlyphone extends StatefulWidget {

  IconData? iconData;
  String?imagedataa;
  String ?hinttext;
  VoidCallback ?ontab;
  TextEditingController?controllerfield;

  int?itemcount;
  String?validation;







  Textfieldonlyphone({Key? key,this.hinttext,this.itemcount,this.controllerfield,this.ontab,this.iconData,this.validation,this.imagedataa}) : super(key: key);

  @override
  State<Textfieldonlyphone> createState() => _TextfieldonlyphoneState();
}

class _TextfieldonlyphoneState extends State<Textfieldonlyphone> {
  @override
  Widget build(BuildContext context) {
    return

      Card(

        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 4,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child:


            TextFormField(
keyboardType: TextInputType.number,
              controller: widget.controllerfield,
              // keyboardType: TextInputType.text,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please Enter ${widget.hinttext}';
                }
                else if (value.length<10) {
                  return 'Please Enter Valid ${widget.hinttext}';
                }
                return null; // Return null if the input is valid
              },

              maxLength: 10,
              decoration: InputDecoration(
                border: InputBorder.none,
                counterText: "",
                contentPadding: const EdgeInsets.only(
                    left: 15, top: 15),
                hintText: "${widget.hinttext}",hintStyle: TextStyle(color: AppColors.fieldTextColors),

                prefixIcon: Image.asset("${widget.imagedataa.toString()}",scale: 1.5,),





              ),
            ),

          ),
        ),
      );


  }
}



//only email

class Textfieldonlyemail extends StatefulWidget {

  IconData? iconData;
  String?imagedataa;
  String ?hinttext;
  VoidCallback ?ontab;
  TextEditingController?controllerfield;

  int?itemcount;
  String?validation;







  Textfieldonlyemail({Key? key,this.hinttext,this.itemcount,this.controllerfield,this.ontab,this.iconData,this.validation,this.imagedataa}) : super(key: key);

  @override
  State<Textfieldonlyemail> createState() => _TextfieldonlyemailState();
}

class _TextfieldonlyemailState extends State<Textfieldonlyemail> {
  @override
  Widget build(BuildContext context) {
    return

      Card(

        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 4,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child:


            TextFormField(
keyboardType: TextInputType.emailAddress,
              controller: widget.controllerfield,
              // keyboardType: TextInputType.text,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please Enter ${widget.hinttext}';
                }
                else if (!value.contains('@')||!value.contains("gmail")||!value.contains(".com")) {
                  return 'Please Enter Valid ${widget.hinttext}';
                }
                return null; // Return null if the input is valid
              },

              maxLength: widget.itemcount,
              decoration: InputDecoration(
                border: InputBorder.none,
                counterText: "",
                contentPadding: const EdgeInsets.only(
                    left: 15, top: 15),
                hintText: "${widget.hinttext}",hintStyle: TextStyle(color: AppColors.fieldTextColors),

                prefixIcon: Image.asset("${widget.imagedataa.toString()}",scale: 1.5,),





              ),
            ),

          ),
        ),
      );


  }
}
//only adhar

class textfieldAdhat extends StatefulWidget {

  IconData? iconData;
  String?imagedataa;
  String ?hinttext;
  VoidCallback ?ontab;
  TextEditingController?controllerfield;

  int?itemcount;
  String?validation;







  textfieldAdhat({Key? key,this.hinttext,this.itemcount,this.controllerfield,this.ontab,this.iconData,this.validation,this.imagedataa}) : super(key: key);

  @override
  State<textfieldAdhat> createState() => _textfieldAdhatState();
}

class _textfieldAdhatState extends State<textfieldAdhat> {
  @override
  Widget build(BuildContext context) {
    return

      Card(

        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 4,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child:


            TextFormField(
              keyboardType: TextInputType.number,
              controller: widget.controllerfield,
              // keyboardType: TextInputType.text,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please Enter ${widget.hinttext}';
                }
                else if (value.length<12) {
                  return 'Please Enter Valid ${widget.hinttext}';
                }
                return null; // Return null if the input is valid
              },

              maxLength: 12,
              decoration: InputDecoration(
                border: InputBorder.none,
                counterText: "",
                contentPadding: const EdgeInsets.only(
                    left: 15, top: 15),
                hintText: "${widget.hinttext}",hintStyle: TextStyle(color: AppColors.fieldTextColors),

                prefixIcon: Image.asset("${widget.imagedataa.toString()}",scale: 1.5,),





              ),
            ),

          ),
        ),
      );


  }
}

//pan
class textfieldPan extends StatefulWidget {

  IconData? iconData;
  String?imagedataa;
  String ?hinttext;
  VoidCallback ?ontab;
  TextEditingController?controllerfield;

  int?itemcount;
  String?validation;







  textfieldPan({Key? key,this.hinttext,this.itemcount,this.controllerfield,this.ontab,this.iconData,this.validation,this.imagedataa}) : super(key: key);

  @override
  State<textfieldPan> createState() => _textfieldPanState();
}

class _textfieldPanState extends State<textfieldPan> {
  @override
  Widget build(BuildContext context) {
    return

      Card(

        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 4,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child:


            TextFormField(
              textCapitalization: TextCapitalization.characters,
              controller: widget.controllerfield,
              // keyboardType: TextInputType.text,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please Enter ${widget.hinttext}';
                }
                else if (value.length<10) {
                  return 'Please Enter Valid ${widget.hinttext}';
                }
                return null; // Return null if the input is valid
              },

              maxLength: 10,
              decoration: InputDecoration(
                border: InputBorder.none,
                counterText: "",
                contentPadding: const EdgeInsets.only(
                    left: 15, top: 15),
                hintText: "${widget.hinttext}",hintStyle: TextStyle(color: AppColors.fieldTextColors),

                prefixIcon: Image.asset("${widget.imagedataa.toString()}",scale: 1.5,),





              ),
            ),

          ),
        ),
      );


  }
}

//ifsc

class textfieldIFSC extends StatefulWidget {

  IconData? iconData;
  String?imagedataa;
  String ?hinttext;
  VoidCallback ?ontab;
  TextEditingController?controllerfield;

  int?itemcount;
  String?validation;







  textfieldIFSC({Key? key,this.hinttext,this.itemcount,this.controllerfield,this.ontab,this.iconData,this.validation,this.imagedataa}) : super(key: key);

  @override
  State<textfieldIFSC> createState() => _textfieldIFSCState();
}

class _textfieldIFSCState extends State<textfieldIFSC> {
  @override
  Widget build(BuildContext context) {
    return

      Card(

        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 4,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child:


            TextFormField(
              textCapitalization: TextCapitalization.characters,

              controller: widget.controllerfield,
              // keyboardType: TextInputType.text,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please Enter ${widget.hinttext}';
                }
                else if (value.length<11) {
                  return 'Please Enter Valid ${widget.hinttext}';
                }
                return null; // Return null if the input is valid
              },

              maxLength: 11,
              decoration: InputDecoration(
                border: InputBorder.none,
                counterText: "",
                contentPadding: const EdgeInsets.only(
                    left: 15, top: 15),
                hintText: "${widget.hinttext}",hintStyle: TextStyle(color: AppColors.fieldTextColors),

                prefixIcon: Image.asset("${widget.imagedataa.toString()}",scale: 1.5,),





              ),
            ),

          ),
        ),
      );


  }
}

//

class readOnlyFields extends StatefulWidget {

  IconData? iconData;
  String?imagedataa;
  String ?hinttext;
  VoidCallback ?ontab;
  TextEditingController?controllerfield;

  int?itemcount;
  String?validation;







  readOnlyFields({Key? key,this.hinttext,this.itemcount,this.controllerfield,this.ontab,this.iconData,this.validation,this.imagedataa}) : super(key: key);

  @override
  State<readOnlyFields> createState() => _readOnlyFieldsState();
}

class _readOnlyFieldsState extends State<readOnlyFields> {
  @override
  Widget build(BuildContext context) {
    return

      Card(

        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 4,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child:


            TextFormField(
              onTap: widget.ontab,
              readOnly: true,
              textCapitalization: TextCapitalization.characters,

              controller: widget.controllerfield,
              // keyboardType: TextInputType.text,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please Enter ${widget.hinttext}';
                }

                return null; // Return null if the input is valid
              },

              maxLength: 100,
              decoration: InputDecoration(
                border: InputBorder.none,
                counterText: "",
                contentPadding: const EdgeInsets.only(
                    left: 15, top: 15),
                hintText: "${widget.hinttext}",hintStyle: TextStyle(color: AppColors.fieldTextColors),

                prefixIcon: Image.asset("${widget.imagedataa.toString()}",scale: 1.5,),





              ),
            ),

          ),
        ),
      );


  }
}


