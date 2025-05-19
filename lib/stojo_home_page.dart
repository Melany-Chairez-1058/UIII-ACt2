import 'package:flutter/material.dart';
import 'package:stojo_mobile_app/Model/data.dart';
import 'package:stojo_mobile_app/stojo_detail.dart';

class StojoHomePage extends StatefulWidget {
  const StojoHomePage({super.key});

  @override
  State<StojoHomePage> createState() => _StojoHomePageState();
}

class _StojoHomePageState extends State<StojoHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Image.network(
                  "https://raw.githubusercontent.com/Melany-Chairez-1058/floreria_imagenes_app_flutter/refs/heads/main/menu1.png",
                  height: 25,
                ),
                const Spacer(),
                Image.network(
                  "https://raw.githubusercontent.com/Melany-Chairez-1058/floreria_imagenes_app_flutter/refs/heads/main/search.png",
                  height: 25,
                ),
                const SizedBox(
                  width: 15,
                ),
                Image.network(
                  "https://raw.githubusercontent.com/Nabinji/100-DaysOf-Futter/refs/heads/main/stojo_mobile_app/Images/shopping%20bag.png",
                  height: 25,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(22.0),
            child: Row(
              children: [
                Text(
                  "Trending",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Spacer(),
                Text(
                  "See All",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
                itemCount: userItems.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.61,
                ),
                itemBuilder: (contex, index) {
                  final stojo = userItems[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (contexr) => DetailStojo(stojo: stojo),
                        ),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Hero(
                            tag: stojo.color,
                            child: Container(
                              height: 285,
                              decoration: BoxDecoration(
                                  color: stojo.color,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    const CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 95,
                                    ),
                                    SizedBox(
                                      height:
                                          200, // ajusta según tamaño deseado
                                      width: 200,
                                      child: Image.network(
                                        stojo.image,
                                        fit: BoxFit.contain,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 2),
                          child: Text(
                            stojo.name,
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 2),
                          child: Text(
                            "\$${stojo.price}",
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          )
        ],
      )),
    );
  }
}
