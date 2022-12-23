import 'package:appzapatillas/models/data.dart';
import 'package:appzapatillas/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomePageShoes extends StatefulWidget {
  const HomePageShoes({super.key});

  @override
  State<HomePageShoes> createState() => _HomePageShoesState();
}

class _HomePageShoesState extends State<HomePageShoes> {
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
          Expanded(child: PageView.builder(itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(36),
                color: Colors.white, //2:1
              ),
            );
          }))
        ],
      ),
    );
  }
}
