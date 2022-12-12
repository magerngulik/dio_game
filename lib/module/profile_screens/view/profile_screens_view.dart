import 'package:flutter/material.dart';
import 'package:fhe_template/core.dart';
import '../controller/profile_screens_controller.dart';

class ProfileScreensView extends StatefulWidget {
  const ProfileScreensView({Key? key}) : super(key: key);

  Widget build(context, ProfileScreensController controller) {
    controller.view = this;

    /*
    ------------------------
    https://capekngoding.com
    ------------------------
    Starring:
    Name: Deny Ocr
    Github: https://www.youtube.com/c/CapekNgoding
    ------------------------
    -
    ------------------------
    Code generation with snippets can be a good solution for you or it can kill you.
    A basic understanding of Dart and Flutter is required.
    Keep it in mind, Our snippet can't generate many files yet.
    So, all of our snippets are put in one file which is not best practice.
    You need to do the optimization yourself, and at least you are familiar with using Flutter.
    ------------------------
    */
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text("Profile"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30.0,
              ),
              Center(
                child: Column(
                  children: const [
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: NetworkImage(
                        "https://i.ibb.co/PGv8ZzG/me.jpg",
                      ),
                    ),
                    Text(
                      "Muhammad Hatta",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  "Account Setting",
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
              Container(
                height: 70.0,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 28.0,
                      child: Icon(
                        Icons.person,
                        size: 28.0,
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "Your Profile",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          "Edit and view profile info",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit,
                        size: 24.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ProfileScreensView> createState() => ProfileScreensController();
}
