import 'package:campingapp/views/main/mainview.dart';
import 'package:flutter/material.dart';

import '../../utils/color.dart';

class StartView extends StatefulWidget {
  const StartView({super.key});

  @override
  State<StartView> createState() => _StartViewState();
}

class _StartViewState extends State<StartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: kprimaryClr,
                ),
              ),
              Image.network(
                "https://images.unsplash.com/photo-1496699536300-926fe21740ce?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bW91bnRhaW4lMjBuaWdodCUyMGNhbXB8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60",
                height: MediaQuery.of(context).size.height * .6,
                fit: BoxFit.cover,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainView(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .15,
                    child: Row(
                      children: [
                        const Expanded(
                          child: Text(
                            "MEETCAMP",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.graphic_eq,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 40),
            child: SafeArea(
              child: Container(
                height: 300,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(30)),
                child: const FittedBox(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: Text(
                      "FIND\nCAMPSITES\nNEAR YOU.\nCOMMUNICATE\nTHEMATIC\nGROUPS.\nENJOY",
                      style: TextStyle(
                        color: kwhiteClr,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
