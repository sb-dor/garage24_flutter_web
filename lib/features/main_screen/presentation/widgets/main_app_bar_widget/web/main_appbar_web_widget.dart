import 'package:flutter/material.dart';

class MainAppBarWebWidget extends StatelessWidget {
  const MainAppBarWebWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IntrinsicHeight(
            child: Row(
              children: [
                const Text(
                  "Moshin24",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    letterSpacing: 2.1,
                  ),
                ),
                const SizedBox(width: 50),
                Container(
                  width: MediaQuery.of(context).size.width / 5,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    // border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.only(left: 15, top: 10),
                      border: InputBorder.none,
                      hintText: "Поиск по объявлениям",
                    ),
                  ),
                ),
                const SizedBox(width: 50),
                const Column(
                  children: [
                    Icon(Icons.favorite_border),
                    SizedBox(height: 3),
                    Text("Избранное"),
                  ],
                ),
                const SizedBox(width: 20),
                const Column(
                  children: [
                    Icon(Icons.message),
                    SizedBox(height: 3),
                    Text("Сообщение"),
                  ],
                ),
                const SizedBox(width: 20),
                const Column(
                  children: [
                    Icon(Icons.search),
                    SizedBox(height: 3),
                    Text("Поиски"),
                  ],
                ),
                const SizedBox(width: 20),
                const Column(
                  children: [
                    Icon(Icons.car_crash_outlined),
                    SizedBox(height: 3),
                    Text("Сравнения")
                  ],
                ),
                const SizedBox(width: 20),
                const Column(
                  children: [
                    Icon(Icons.sell),
                    SizedBox(height: 3),
                    Text("Я продаю"),
                  ],
                ),
                const SizedBox(width: 50),
                IconButton(
                  onPressed: () => [],
                  icon: const Icon(
                    Icons.person_outline_rounded,
                    size: 40,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      backgroundColor: const MaterialStatePropertyAll(Colors.green),
                    ),
                    onPressed: () => [],
                    child: const Text(
                      "Разместить объявление",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
