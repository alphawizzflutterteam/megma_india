import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:megma_india/Screen/Auth/login_scr.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Helper/Colors.dart';
import '../../Widget/customAppbar.dart';
import '../Home Screen/homeScreen.dart';
import '../user Profile/userProfile.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() =>
      _DashboardState();
}
class _DashboardState extends State<Dashboard> {

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),



    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    ProfileScreen(),


  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:

      WillPopScope(

        onWillPop: () async {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Confirm Exit"),
              content: Text("Are you sure you want to exit?"),
              actions: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: AppColors.secondary),
                  child: Text("YES"),
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: AppColors.secondary),
                  child: Text("NO"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
      return true;
    },
        child: Scaffold(
          key: openDrawer,


          appBar:


          PreferredSize(
            preferredSize: Size.fromHeight(

                _selectedIndex==2?0:
                80

            ),

            child:


            _selectedIndex==2?SizedBox():
            Container(height: 80,

              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(


                  gradient:RadialGradient(colors:

                  [AppColors.primary,AppColors.secondary]

                  ) ,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))),
              child: Center(child:

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [




                  InkWell(
                    onTap: () {
                      openDrawer.currentState!.openDrawer();

                    },
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        _selectedIndex==0?Image.asset('assets/images/Group 74898.png',scale: 1.5,):
                        _selectedIndex==1?
                       SizedBox():
                           SizedBox()

                      ],
                    ),
                  ),
                  _selectedIndex==0?
                  Text('Home',style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.whiteTemp,fontSize: 20),):

                  _selectedIndex==1?
                  Text('Mercedes - Benz Gla',style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.whiteTemp,fontSize: 20),):
                      SizedBox(width: 10,),


Row(children: [
                  _selectedIndex==0?Image.asset('assets/images/Icon feather-bell.png',scale: 1.5,):
                  _selectedIndex==1?
                  Image.asset('assets/images/Icon feather-bell.png',scale: 1.5,):


                  SizedBox(width: 30,),

  SizedBox(width: 20,)

],)

                ],
              ),

              ),
            )


          ),

          drawer:
          Drawer(
            child: ListView(children: [


              DrawerHeader(
                decoration: BoxDecoration(
                    gradient: RadialGradient(

                        colors: [AppColors.primary,AppColors.secondary])),



                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),


                    CircleAvatar(
                      radius: 43,
                      backgroundColor: AppColors.whiteTemp,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/images/profile.png",
                        ),
                        radius: 40,
                      ),
                    ),


                    SizedBox(
                      width: 10,
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Hello!',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          'Gayatri Chouhan',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),


              InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Dashboard()),
                    );

                    setState(() {
                      currentIndex = 1;
                    });
                  },
                  child: DrawerIconTab(
                    titlee: 'Home',
                    icon: Icons.home,
                    tabb: 1,
                    indexx: currentIndex,
                  )),
              SizedBox(
                height: 5,
              ),
              InkWell(
                  onTap: () {
                    // Navigator.push(
                    // context,
                    // MaterialPageRoute(
                    //     builder: (context) => const  notificationPage()),
                    // );

                    setState(() {
                      currentIndex = 2;
                    });
                  },
                  child: DrawerIconTab(
                      titlee: 'Notification',
                      icon: Icons.notification_add,
                      tabb: 2,
                      indexx: currentIndex)),
              SizedBox(
                height: 5,
              ),
              InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const custmerSupport()),
                    // );

                    setState(() {
                      currentIndex = 3;
                    });
                  },
                  child: DrawerIconTab(
                      titlee: 'Customer Support',
                      icon: Icons.file_copy,
                      tabb: 3,
                      indexx: currentIndex)),
              SizedBox(
                height: 5,
              ),
              InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const  privacy_policy()),
                    // );

                    setState(() {
                      currentIndex = 4;
                    });
                  },
                  child: DrawerIconTab(
                    titlee: 'Privacy Policy',
                    icon: Icons.file_copy,
                    tabb: 4,
                    indexx: currentIndex,
                  )),
              SizedBox(
                height: 5,
              ),
              InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const  termsAndCondition()),
                    // );

                    setState(() {
                      currentIndex = 5;
                    });
                  },
                  child: DrawerIconTab(
                    titlee: 'Terms & Conditions',
                    icon: Icons.file_copy,
                    tabb: 5,
                    indexx: currentIndex,
                  )),
              SizedBox(
                height: 5,
              ),
              InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const FaqPage()),
                    // );
                    setState(() {
                      currentIndex = 6;
                    });
                  },
                  child: DrawerIconTab(
                    titlee: 'FAQ',
                    icon: Icons.payment,
                    tabb: 6,
                    indexx: currentIndex,
                  )),
              SizedBox(
                height: 5,
              ),
              InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Confirm Logout"),
                            content: Text("Are you sure to Logout?"),
                            actions: <Widget>[
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: AppColors.secondary),
                                child: Text("YES"),
                                onPressed: () async {
                                  setState(() {
                                    removesession();
                                  });
                                  Navigator.pop(context);
                                  // SystemNavigator.pop();
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Login_Screen(),
                                      ));
                                },
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: AppColors.secondary),
                                child: Text("NO"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              )
                            ],
                          );
                        });
                    setState(() {
                      currentIndex = 7;
                    });
                  },
                  child: DrawerIconTab(
                    titlee: 'Logout',
                    icon: Icons.logout_outlined,
                    tabb: 7,
                    indexx: currentIndex,
                  )),
              SizedBox(
                height: 5,
              ),
            ]),
          ),
          body:



          Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Container(
                      height: 30,
                      width: 30,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                          _selectedIndex == 0 ? Colors.orange : Colors.white),
                      child: Icon(
                        Icons.home,
                        size: 15,
                        color: _selectedIndex == 0 ? Colors.white : Colors.black,
                      )),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Container(
                      height: 30,
                      width: 30,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                          _selectedIndex == 1 ? Colors.orange : Colors.white),
                      child: Icon(
                        Icons.line_style_outlined,
                        size: 15,
                        color: _selectedIndex == 1 ? Colors.white : Colors.black,
                      )),
                ),
                label: 'Categories',
              ),
              BottomNavigationBarItem(
                icon: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Container(
                      height: 30,
                      width: 30,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                          _selectedIndex == 2 ? Colors.orange : Colors.white),
                      child: Icon(
                        Icons.person_2_outlined,
                        size: 15,
                        color: _selectedIndex == 2 ? Colors.white : Colors.black,
                      )),
                ),
                label: 'My Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[800],
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }


  final GlobalKey<ScaffoldState> openDrawer = GlobalKey();
  int _selectedIndex = 0;
  int currentIndex = 99;
  removesession() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('id');
    await prefs.remove('role');
  }

}

