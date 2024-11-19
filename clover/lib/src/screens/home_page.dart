import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // drawerDragStartBehavior: DragStartBehavior.down,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: SvgPicture.asset('assets/images/logo.svg'),
        actions: [
          InkWell(
            onTap: () {
              drawer(context);
            },
            child: const Icon(
              Icons.menu_outlined,
              color: Colors.black87,
              size: 30,
            ),
          )
        ],
      ),
      drawer: drawer(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: const AssetImage('assets/images/image-web-3-mobile.jpg'),
                // MediaQuery.of(context).size.height * 5
                height: MediaQuery.of(context).size.width * 0.8,
                width: MediaQuery.of(context).size.width * 1,
              ),
              const Text(
                "The Bright Future of web 3.0?",
                style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'InterVariable'),
              ),
              const Text(
                "We dive into the next evolution of the web that claims to put the power of the platforms back into the hands of the people.But is it really fulfilling its promise?",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w200,
                    color: Colors.grey,
                    fontFamily: 'InterVariable'),
                softWrap: true,
              ),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 200,
                  height: 60,
                  color: Colors.redAccent,
                  alignment: Alignment.center,
                  // padding:
                  //     const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: const Text(
                    "READ MORE",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontFamily: 'InterVariable',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              newsList(context),
              const SizedBox(
                height: 50,
              ),
              newsListWithImage(context),
            ],
          ),
        ),
      ),
    ));
  }

  Widget drawer(BuildContext context) {
    return Drawer(
      child: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.close,
                      size: 40,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            const ListTile(
              title: Text(
                'Home',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'InterVariable',
                    color: Colors.black87),
              ),
            ),
            const ListTile(
              title: Text(
                'NEW',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'InterVariable',
                    color: Colors.black87),
              ),
            ),
            const ListTile(
              title: Text(
                'Popular',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'InterVariable',
                    color: Colors.black87),
              ),
            ),
            const ListTile(
              title: Text(
                'Treading',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'InterVariable',
                    color: Colors.black87),
              ),
            ),
            const ListTile(
              title: Text(
                'Categories',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'InterVariable',
                    color: Colors.black87),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget newsList(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // color:  const Color.fromARGB(255,0, 0, 139),
        color: const Color(0xFF000329),
        // height: MediaQuery.of(context).size.height * 0.9,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10),
              child: const Text(
                "New",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'InterVariable',
                    color: Colors.orangeAccent),
              ),
            ),
            const ListTile(
              title: Text(
                "Hydrogen VS Electric Cars",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'InterVariable'),
              ),
              subtitle: Text(
                "Will hydrogen-fueled cars ever catch up tp EVs?",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white38,
                    fontFamily: 'InterVariable'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Divider(height: 1, color: Colors.white24),
            ),
            const ListTile(
              title: Text(
                "The Downsides of AI Artistry",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'InterVariable'),
              ),
              subtitle: Text(
                "What are the possible adverse effects of on-demand AI image generation?",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white38,
                    fontFamily: 'InterVariable'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Divider(height: 1, color: Colors.white24),
            ),
            const ListTile(
              title: Text(
                "Is VC Funding Drying Up?",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'InterVariable'),
              ),
              subtitle: Text(
                "Private funding by VC firms is down 50% YOY.We take a look at what that means.",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white38,
                    fontFamily: 'InterVariable'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget newsListWithImage(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        // first card
        Container(
          height: MediaQuery.of(context).size.height * 0.197,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage('assets/images/image-retro-pcs.jpg'),
              ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "01",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'InterVariable',
                            color: Colors.redAccent),
                      ),
                      Text(
                        "Reviving Retro PCs",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'InterVariable',
                            color: Colors.black87),
                      ),
                      Text(
                        "What happens when old PCs are given modern upgrades?",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'InterVariable',
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        // second card
        Container(
          height: MediaQuery.of(context).size.height * 0.197,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage('assets/images/image-top-laptops.jpg'),
              ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "02",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'InterVariable',
                            color: Colors.redAccent),
                      ),
                      Text(
                        "Top 10 Laptops of 2022",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'InterVariable',
                            color: Colors.black87),
                      ),
                      Text(
                        "Our best picks for various needs and budgets",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'InterVariable',
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        // Third card
        Container(
          height: MediaQuery.of(context).size.height * 0.197,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage('assets/images/image-gaming-growth.jpg'),
              ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "03",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'InterVariable',
                            color: Colors.redAccent),
                      ),
                      Text(
                        "The Growth of Gaming",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'InterVariable',
                            color: Colors.black87),
                      ),
                      Text(
                        "ow the pandemic has sparked fresh opportunities.",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'InterVariable',
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }

}
