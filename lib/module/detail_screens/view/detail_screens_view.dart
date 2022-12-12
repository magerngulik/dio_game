// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

import '../controller/detail_screens_controller.dart';

class DetailScreensView extends StatefulWidget {
  Map item;
  DetailScreensView({
    Key? key,
    required this.item,
  }) : super(key: key);

  Widget build(context, DetailScreensController controller) {
    controller.view = this;

    String decription = item['desc'];
    String newDescriotion = decription.replaceAll('\n', ' ');

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: const [],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                Text(
                  "${item['title']}",
                  style: const TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "${item['time']}",
                      style: const TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Stack(
                  children: [
                    Container(
                        height: 300.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "${item['thumb']}",
                            ),
                            fit: BoxFit.cover,
                          ),
                        )),
                    Container(
                        height: 300.0,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    "Description",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  newDescriotion,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    "Category",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            5.0,
                          ),
                        ),
                        border: Border.all(
                          width: 1.0,
                          color: Colors.white,
                        ),
                      ),
                      child: Text(
                        "${item['tag']}",
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    "Author",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            5.0,
                          ),
                        ),
                        border: Border.all(
                          width: 1.0,
                          color: Colors.white,
                        ),
                      ),
                      child: Text(
                        "${item['author']}",
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<DetailScreensView> createState() => DetailScreensController();
}
