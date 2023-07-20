import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:food_app_task/src/custom_widgets/categories_card.dart';
import 'package:food_app_task/src/custom_widgets/details_card.dart';
import 'package:food_app_task/src/custom_widgets/heading.dart';
import 'package:food_app_task/src/custom_widgets/hot_sale_card.dart';
import 'package:food_app_task/src/custom_widgets/menu_row.dart';
import 'package:food_app_task/src/model_class/categories_model.dart';
import 'package:food_app_task/src/model_class/detail_model.dart';
import 'package:food_app_task/src/model_class/hot_sale_model.dart';
import 'package:food_app_task/src/utils/my_colors.dart';
import 'package:food_app_task/src/utils/my_images.dart';
import 'package:food_app_task/src/utils/my_string.dart';
import 'package:food_app_task/src/utils/my_styles.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<CategoriesModel> cateList = [
    CategoriesModel(MyImages.pizza, MyStrings.pizza, () {}),
    CategoriesModel(MyImages.sandwich, MyStrings.sandwich, () {}),
    CategoriesModel(MyImages.noodles, MyStrings.noodles, () {}),
    CategoriesModel(MyImages.frenchFries, MyStrings.fries, () {}),
    CategoriesModel(MyImages.sandwich, MyStrings.sandwich, () {}),
    CategoriesModel(MyImages.pizza, MyStrings.pizza, () {}),
    CategoriesModel(MyImages.noodles, MyStrings.noodles, () {}),
  ];

  List<HotSaleModel> hotSaleList = [
    HotSaleModel(MyImages.chickenBurger, MyStrings.chickenBurger,
        MyStrings.burger, () {}),
    HotSaleModel(MyImages.momos, MyStrings.vegMomos, MyStrings.momos, () {}),
    HotSaleModel(
        MyImages.biryani, MyStrings.vegBiryani, MyStrings.biryani, () {}),
    HotSaleModel(MyImages.chickenBurger, MyStrings.chickenBurger,
        MyStrings.burger, () {}),
    HotSaleModel(MyImages.momos, MyStrings.vegMomos, MyStrings.momos, () {}),
    HotSaleModel(
        MyImages.biryani, MyStrings.vegBiryani, MyStrings.biryani, () {}),
  ];

  List<DetailModel> foodList = [
    DetailModel(MyImages.burger1, MyStrings.doubleAalo, MyStrings.burger, 90,
        () {}, true, false),
    DetailModel(MyImages.burger2, MyStrings.paneerCrunch, MyStrings.burger, 80,
        () {}, true, false),
    DetailModel(MyImages.burger3, MyStrings.crispyMasala, MyStrings.burger, 60,
        () {}, true, false),
    DetailModel(MyImages.burger4, MyStrings.fingerStick, MyStrings.burger, 100,
        () {}, true, false),
    DetailModel(MyImages.chickenBurger, MyStrings.loadedGrill, MyStrings.burger,
        80, () {}, false, true),
    DetailModel(MyImages.burger1, "${MyStrings.chickenBurger}1",
        MyStrings.burger, 90, () {}, false, true),
    DetailModel(MyImages.burger2, "${MyStrings.chickenBurger}2",
        MyStrings.burger, 80, () {}, false, true),
    DetailModel(MyImages.burger3, "${MyStrings.chickenBurger}3",
        MyStrings.burger, 60, () {}, false, true),
    DetailModel(MyImages.burger4, "${MyStrings.chickenBurger}4",
        MyStrings.burger, 100, () {}, false, true),
  ];

  bool vegOnly = false;
  bool eggOnly = false;

  List<DetailModel> filteredList = [];

  filterMyList() {
    if (vegOnly) {
      filteredList =
          foodList.where((element) => element.vegOnly == vegOnly).toList();
    } else if (eggOnly) {
      filteredList =
          foodList.where((element) => element.eggOnly == eggOnly).toList();
    } else {
      filteredList.addAll(foodList);
    }

    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    filteredList.addAll(foodList);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () {
          showDialog(
              context: context,
              builder: (i) {
                return AlertDialog(
                  backgroundColor: MyColors.white,
                  contentTextStyle: MyStyles.black20Regular,
                  title: Column(
                    children: [
                      Center(child: Text(MyStrings.restaurantMenu)),
                      const Divider()
                    ],
                  ),
                  content: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      MenuRow(
                        title: "Biryani",
                        price: 4,
                      ),
                      MenuRow(
                        title: "Burger",
                        price: 7,
                      ),
                      MenuRow(
                        title: "Combo",
                        price: 0,
                      ),
                      MenuRow(
                        title: "Drinks",
                        price: 14,
                      ),
                      MenuRow(
                        title: "Fried Rice",
                        price: 5,
                      ),
                      MenuRow(
                        title: "Fries",
                        price: 4,
                      ),
                      MenuRow(
                        title: "Momos",
                        price: 7,
                      ),
                      MenuRow(
                        title: "Noodles",
                        price: 13,
                      ),
                      MenuRow(
                        title: "Pizza",
                        price: 16,
                      ),
                      MenuRow(
                        title: "Rolls",
                        price: 4,
                      ),
                    ],
                  ),
                );
              });
        },
        child: Container(
          width: 90,
          height: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: MyColors.orangeClr),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.menu,
                size: 20,
              ),
              const SizedBox(
                width: 2,
              ),
              Text(MyStrings.menu)
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        unselectedFontSize: 12,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(
          color: MyColors.white,
        ),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: MyColors.orangeClr),
              label: MyStrings.home,
              backgroundColor: MyColors.darkBg),
          BottomNavigationBarItem(
              icon: const Icon(Icons.notifications),
              label: MyStrings.alert,
              backgroundColor: MyColors.darkBg),
          BottomNavigationBarItem(
              icon: const Icon(Icons.add_shopping_cart),
              label: MyStrings.cart,
              backgroundColor: MyColors.darkBg),
          BottomNavigationBarItem(
              icon: const Icon(Icons.restaurant_menu),
              label: "Menu",
              backgroundColor: MyColors.darkBg),
          BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              label: MyStrings.account,
              backgroundColor: MyColors.darkBg),
        ],
      ),
      backgroundColor: MyColors.darkBg,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 600,
                color: MyColors.darkBg,
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 320,
                      child: Image.asset(MyImages.homePageBg, fit: BoxFit.fill),
                    ),
                    Container(
                      width: double.infinity,
                      height: 320,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                            MyColors.black.withOpacity(0.2),
                            MyColors.darkBg
                          ],
                              stops: const [
                            0.1,
                            1
                          ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      MyStrings.helloAkash,
                      style: MyStyles.white20Normal,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon:
                            Icon(Icons.search, color: MyColors.orangeClr),
                        hintText: MyStrings.search,
                        hintStyle: MyStyles.grey17Regular
                            .copyWith(color: MyColors.lightGrey),
                        fillColor: MyColors.white,
                        filled: true,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: double.infinity,
                      height: 170,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                            MyColors.transparent,
                            MyColors.black.withOpacity(0.9)
                          ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                      child: AnotherCarousel(
                        images: [
                          AssetImage(MyImages.onBoarding1),
                          AssetImage(MyImages.onBoarding2),
                          AssetImage(MyImages.onBoarding3),
                        ],
                        dotBgColor: MyColors.transparent,
                        dotSize: 0,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Heading(
                      onTap: () {},
                      title: MyStrings.categories,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: cateList.length,
                        itemBuilder: (c, i) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: CategoriesCard(
                              onTap: cateList[i].onTap,
                              text: cateList[i].text,
                              img: cateList[i].img,
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Heading(
                      onTap: () {},
                      title: MyStrings.hotSale,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 140,
                      child: ListView.builder(
                        itemCount: hotSaleList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (c, i) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: HotSaleCard(
                              onTap: hotSaleList[i].onTap,
                              title: hotSaleList[i].title,
                              img: hotSaleList[i].img,
                              subtitle: hotSaleList[i].subtitle,
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Veg Only",
                          style: MyStyles.white12Light,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Switch(
                          value: vegOnly,
                          onChanged: (c) {
                            vegOnly = c;
                            if (vegOnly) {
                              eggOnly = false;
                            }
                            filterMyList();
                            setState(() {});
                          },
                          activeColor: MyColors.gradientRed,
                          inactiveThumbColor: const Color(0xff465a65),
                          activeTrackColor: MyColors.orangeClr,
                          inactiveTrackColor: const Color(0xff2e3641),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .28,
                        ),
                        Text(
                          "Egg Only",
                          style: MyStyles.white12Light,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Switch(
                          value: eggOnly,
                          onChanged: (c) {
                            eggOnly = c;
                            if (eggOnly) {
                              vegOnly = false;
                            }
                            filterMyList();
                            setState(() {});
                          },
                          activeColor: MyColors.gradientRed,
                          inactiveThumbColor: const Color(0xff465a65),
                          activeTrackColor: MyColors.orangeClr,
                          inactiveTrackColor: const Color(0xff2e3641),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    if (eggOnly)
                      Column(
                        children: [
                          Text(
                              "Burger        Rolls        Drink        Pizza\nSandwich        Noodles        Momos",
                              style: MyStyles.white17Regular
                                  .copyWith(height: 2.5)),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    Text(
                      MyStrings.burgers,
                      style: MyStyles.white17Regular,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 1850,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: filteredList.length,
                        itemBuilder: (c, i) {
                          return DetailsCard(
                            onTap: filteredList[i].onTap,
                            price: filteredList[i].price,
                            subtitle: filteredList[i].subtitle,
                            title: filteredList[i].title,
                            img: filteredList[i].img,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
