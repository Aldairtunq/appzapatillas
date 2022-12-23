import 'package:appzapatillas/models/data.dart';
import 'package:appzapatillas/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomePageShoes extends StatefulWidget {
  const HomePageShoes({super.key});

  @override
  State<HomePageShoes> createState() => _HomePageShoesState();
}

class _HomePageShoesState extends State<HomePageShoes> {
  final _pagecontroller = PageController(viewportFraction: 0.75);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(),
          SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                children: List.generate(
                  listCategory.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Text(
                      listCategory[index],
                      style: const TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: listShoes.length,
                  controller: _pagecontroller,
                  itemBuilder: (context, index) {
                    final shoes = listShoes[index];
                    return Container(
                        margin: const EdgeInsets.symmetric(vertical: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(36),
                          color: Colors.white, //2:1
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 40,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                shoes.category,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                shoes.name,
                                style: const TextStyle(
                                  fontSize: 28,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                shoes.price,
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ));
                  }))
        ],
      ),
    );
  }
}
