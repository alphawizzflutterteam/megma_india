import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:megma_india/Helper/Colors.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> carImageList = [
    'assets/images/Group 6770.png',
    'assets/images/Group 6769.png',
    'assets/images/Group 6770.png',
    'assets/images/icon3.png',
    'assets/images/Group 6770.png',
    'assets/images/Group 74839.png',
    'assets/images/Group 74843.png',
    'assets/images/Group 74843.png',
  ];
  final items = [
    Image.asset(
      'assets/images/banner2.png',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/banner002.png',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/banner003.png',
      fit: BoxFit.fill,
    ),
  ];
  int currentIndex = 99;
  List<String> productListImage = [
    'assets/images/41OpBJoqq+L.png',
    'assets/images/51eqZmyasJL-removebg-preview.png',
    'assets/images/Ceramic-Car-Brake-Pads-Excellent-Manufacturer-Durable-No-Dust-Quiet-D872-for-Mercedes-Benz-C-Class-E-Class-S-Class-Clk-Cls-Slk-SLR-removebg-preview.png',
    'assets/images/41OpBJoqq+L.png',
    'assets/images/51eqZmyasJL-removebg-preview.png',
    'assets/images/41OpBJoqq+L.png',
    'assets/images/51eqZmyasJL-removebg-preview.png',
    'assets/images/51eqZmyasJL-removebg-preview.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(



        body: Container(
          padding:

          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: ListView(
            children: [
              Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.black.withOpacity(0.3))),
                  child: const TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search",
                      border: InputBorder.none,
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Filter',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    size: 24,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 10,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height * 0.18,
                  autoPlay: false,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
                items: items,
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  width: 50,
                  height: 5.5,
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: items.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 0.5,
                        width: index == currentIndex ? 10 : 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: index == currentIndex
                              ? Colors.orange
                              : Color(0xffFEE9E9E9),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 5,
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(color: Colors.orange, fontSize: 12),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                width: MediaQuery.of(context).size.width,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          // backgroundColor: Colors.white,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Image(
                              image: AssetImage(carImageList[index]),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            'Mercedes - Benz Gla',
                            style: TextStyle(fontSize: 8),
                          ),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 10,
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Products',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(color: Colors.orange, fontSize: 12),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 160,
                width: MediaQuery.of(context).size.width,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return productContainer(index: index);
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 20,
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Distributors',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 130,
                width: MediaQuery.of(context).size.width,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return distribuiterContainer();
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 0,
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Retailers',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 130,
                width: MediaQuery.of(context).size.width,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return distribuiterContainer();
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 0,
                    );
                  },
                ),
              ),
            ],
          ),
        )
    );
  }

  Widget distribuiterContainer() {
    return Container(
      width: 170,
      child: Stack(
        children: [
          Container(
            width: 160,
            height: 70,
            margin: EdgeInsets.only(top: 25),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.orange)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.orange,
                      size: 16,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Devesh Parihar',
                      style:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.pin_drop_sharp,
                      color: Colors.orange,
                      size: 14,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Vijay Nagar ,Indore',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 160,
            alignment: Alignment.topCenter,
            child: Container(
              height: 55,
              width: 55,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.orange, width: 1)),
              child: Image(
                image: AssetImage('assets/images/icon3.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget productContainer({required int index}) {
    return Container(
      width: 135,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.orange, width: 1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 3,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(productListImage[index]),
                            fit: BoxFit.fill)),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.orange)),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              )),
          Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'PRO-Series Brake Pads',
                      style:
                      TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '₹ 2100',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text(
                                '4.8',
                                style: TextStyle(
                                  fontSize: 8,
                                ),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 10,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 10,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 10,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 10,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 10,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      padding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.orange,
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        'Add to cart',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class DrawerIconTab extends StatefulWidget {
  final IconData? icon;
  final String? titlee;
  final int? tabb;
  final int? indexx;

  DrawerIconTab({Key? key, this.icon, this.titlee, this.tabb, this.indexx})
      : super(key: key);

  @override
  State<DrawerIconTab> createState() => _DrawerIconTabState();
}

class _DrawerIconTabState extends State<DrawerIconTab> {
  var Select = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
         color: widget.indexx == widget.tabb
              ?AppColors.secondary
              : null),

      child: Row(
        children: [
          SizedBox(
            width: 13,
          ),
          Container(
            decoration: BoxDecoration(

borderRadius: BorderRadius.circular(6),
                color: widget.indexx == widget.tabb ? AppColors.whiteTemp : AppColors.secondary,



               ),
            height: 35,
            width: 35,
            child: Center(
                child: Icon(
                  widget.icon,
                  color: widget.indexx == widget.tabb ? AppColors.secondary : AppColors.whiteTemp,
                  size: 20,
                )),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            '${widget.titlee}',
            style: TextStyle(
                fontSize: 15,
               
                color:
                widget.indexx == widget.tabb ? Colors.white : Colors.black),
          ),
        ],
      ),
    );
  }
}
