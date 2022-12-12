import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:fhe_template/core.dart';

class MainScreensView extends StatefulWidget {
  const MainScreensView({Key? key}) : super(key: key);

  Widget build(context, MainScreensController controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  "Games news",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              (controller.loading == true)
                  ? const SizedBox(
                      height: 200,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : SizedBox(
                      height: 200,
                      child: Swiper(
                        itemBuilder: (BuildContext context, int index) {
                          var item = controller.data[index];
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailScreensView(
                                          item: item,
                                        )),
                              );
                            },
                            child: Stack(
                              children: [
                                Image.network(
                                  height: 200,
                                  width: MediaQuery.of(context).size.width,
                                  "${item['thumb']}",
                                  fit: BoxFit.fill,
                                ),
                                Container(
                                  height: 200,
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(item['title']),
                                ),
                              ],
                            ),
                          );
                        },
                        autoplay: true,
                        itemCount: controller.data.length,
                        scale: 0.9,
                      ),
                    ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    const Text(
                      "PC Games",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () => controller.chageIndex,
                      icon: Icon(
                        (controller.selectedIndex == 0)
                            ? Icons.list
                            : Icons.grid_4x4,
                        size: 24.0,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: (controller.loadingPcGame == true)
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : IndexedStack(
                          index: controller.selectedIndex,
                          children: [
                            ListView.builder(
                              itemCount: controller.dataPcGame.length,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                var item = controller.dataPcGame[index];
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DetailScreensView(
                                                item: item,
                                              )),
                                    );
                                  },
                                  child: Card(
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        Container(
                                          height: 180.0,
                                          width: 130,
                                          margin: const EdgeInsets.symmetric(
                                              vertical: 10.0),
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                "${item['thumb']}",
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(12.0),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: 200,
                                              height: 50,
                                              child: Text(
                                                "${item['title']}",
                                                style: const TextStyle(
                                                  fontSize: 15.0,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5.0,
                                            ),
                                            SizedBox(
                                              width: 200,
                                              height: 70,
                                              child: Text(
                                                "${item['desc']}",
                                                style: const TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5.0,
                                            ),
                                            SizedBox(
                                              width: 200,
                                              height: 20,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    "${item['time']}",
                                                    style: const TextStyle(
                                                      fontSize: 12.0,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                            GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 6,
                                crossAxisSpacing: 6,
                              ),
                              itemCount: controller.dataPcGame.length,
                              shrinkWrap: true,
                              physics: const ScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                var item = controller.dataPcGame[index];
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DetailScreensView(
                                                item: item,
                                              )),
                                    );
                                  },
                                  child: Container(
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          "${item['thumb']}",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        )),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<MainScreensView> createState() => MainScreensController();
}
