import 'package:coffe_app/models/item_model.dart';
import 'package:coffe_app/utils/consts.dart';
import 'package:coffe_app/widgets/categorycard.dart';
import 'package:coffe_app/widgets/custtxtfiled.dart';
import 'package:coffe_app/widgets/itemslide.dart';
import 'package:coffe_app/widgets/itemtile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final categories = [
    {'name': 'Coffee', 'icon': Icons.coffee},
    {'name': 'Beer', 'icon': Icons.liquor},
    {'name': 'Wine Bar', 'icon': Icons.wine_bar},
    {'name': 'Events', 'icon': Icons.event},
  ];
  final List<ItemModel> items = [
    ItemModel(
        name: 'Chai Lotte',
        price: '\$85.00',
        image: 'assets/icons/Group 12539.png'),
    ItemModel(
        name: 'Matcha Lotte',
        price: '\$22.00',
        image:
            'assets/icons/174-1745999_paper-cup-of-coffee-png-disposable-cup-of 1.png'),
    ItemModel(
        name: 'Red Eye cold ',
        price: '\$85.00',
        image: 'assets/icons/coffee-paper-cup-11549812776jwh6q98fm6 1.png'),
    ItemModel(
        name: 'Milk Shakee',
        price: '\$60.00',
        image: 'assets/icons/57-571228_paper-coffee-cup-png-cup-clipart 1.png')
  ];

  int selectedindex = 0;
  int itemSelectedindex = 0;
  TextEditingController searchcontroller = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(26, 254, 254, 254),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image:
                DecorationImage(image: homepagebackground, fit: BoxFit.cover)),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Column(
                children: [
                  const Image(
                    image: logoimage2,
                    height: 40,
                    width: 118,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 29,
                        child: Image(image: avatharr),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Icon(
                          Icons.align_horizontal_left_outlined,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Hi ,',
                        style: TextStyle(fontSize: 26),
                      ),
                      Text(
                        'Jhon',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Custtxtfiled(
                      labeltext: "Coffe shop & wine",
                      textEditingController: searchcontroller,
                      prefixIcon: Icons.search,
                      suffix: const Icon(
                        Icons.manage_search_rounded,
                        color: Color.fromARGB(255, 91, 90, 90),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 32,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        final cat = categories[index];
                        final isSelected = selectedindex == index;
                        return Categorycard(
                            categoryName: cat['name'] as String,
                            icon: cat['icon'] as IconData,
                            onTap: () {
                              setState(() {
                                selectedindex = index;
                              });
                            },
                            isSelected: isSelected);
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final item = items[index];

                        final isSelected = itemSelectedindex == index;
                        return Itemtile(
                          name: item.name,
                          price: item.price,
                          itemimage: item.image,
                          ontap: () {
                            setState(() {
                              itemSelectedindex = index;
                            });
                          },
                          isSelected: isSelected,
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Frozen Beverages',style: TextStyle(color: Color.fromARGB(120, 255, 255, 255)),),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          'See all',
                          style: TextStyle(color: Colors.amber,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.amber,
                          decorationThickness: 1.5),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                      final shuffled = List.of(items)..shuffle();
                      final item = shuffled[index];
                        return Itemslide(
                            name: item.name,
                            image:
                                item.image,
                            price: item.price);
                      },
                    ),
                  ),
                const  SizedBox(height: 10,),
                    const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Kava and Bottled Beverages',style: TextStyle(color: Color.fromARGB(120, 255, 255, 255)),),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          'See all',
                          style: TextStyle(color: Colors.amber,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.amber,
                          decorationThickness: 1.5),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                      final shuffled = List.of(items)..shuffle();
                      final item = shuffled[index];
                        return Itemslide(
                            name: item.name,
                            image:
                                item.image,
                            price: item.price);
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
bottomNavigationBar:  BottomAppBar(
        color:const Color.fromARGB(30, 85, 67, 60),
    
      notchMargin: 8, 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.favorite_border_outlined,
                  color: _selectedIndex == 0 ? Colors.amber : Colors.white),
              onPressed: () => _onItemTapped(0),
            ),
            IconButton(
              icon: Icon(Icons.shopping_bag_outlined,
                  color: _selectedIndex == 1 ? Colors.amber : Colors.white),
              onPressed: () => _onItemTapped(1),
            ),
  
            IconButton(
              icon: Icon(Icons.person_2_outlined,
                  color: _selectedIndex == 2 ? Colors.amber : Colors.white),
              onPressed: () => _onItemTapped(2),
            ),
            IconButton(
              icon: Icon(Icons.settings_outlined,
                  color: _selectedIndex == 3 ? Colors.amber : Colors.white),
              onPressed: () => _onItemTapped(3),
            ),
          ],
        ),
      ),
    );
  }
}
