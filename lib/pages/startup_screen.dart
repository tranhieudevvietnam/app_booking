import 'package:flutter/material.dart';

class StartUpScreen extends StatefulWidget {
  const StartUpScreen({super.key});

  @override
  State<StartUpScreen> createState() => _StartUpScreenState();
}

class _StartUpScreenState extends State<StartUpScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: size.width,
            height: size.height,
            child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Image.asset("assets/image_background.png")),
          ),
          Column(
            children: [
              const Spacer(
                flex: 2,
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        const Flexible(
                          fit: FlexFit.tight,
                          flex: 5,
                          child: SizedBox.expand(
                            child: FractionallySizedBox(
                              widthFactor: 0.95,
                              child: FittedBox(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Explore and discover\nthe world",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      height: 1.2,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        const Flexible(
                          fit: FlexFit.tight,
                          flex: 3,
                          child: SizedBox.expand(
                            child: FractionallySizedBox(
                              widthFactor: 0.95,
                              child: FittedBox(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Browse millions of tourist location and choose\n"
                                  "the one that suits you.Tavel the world without\nany hassle with just one tap.",
                                  style: TextStyle(
                                      color: Colors.white,
                                      height: 1.3,
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 10,
                          fit: FlexFit.tight,
                          child: SizedBox.expand(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Spacer(),
                                  ElevatedButton(
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                          )),
                                          elevation:
                                              MaterialStateProperty.all(0),
                                          fixedSize: MaterialStateProperty.all(
                                              Size(size.width * 0.8,
                                                  size.height * 0.05)),
                                          textStyle: MaterialStateProperty.all(
                                              const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15))),
                                      onPressed: () {},
                                      child: Text(
                                        "Sign in".toUpperCase(),
                                      )),
                                  const Spacer(),
                                  ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.transparent),
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                          )),
                                          elevation:
                                              MaterialStateProperty.all(0),
                                          fixedSize: MaterialStateProperty.all(
                                              Size(size.width * 0.8,
                                                  size.height * 0.05)),
                                          textStyle: MaterialStateProperty.all(
                                              const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15))),
                                      onPressed: () {},
                                      child: Text(
                                        "Create an account".toUpperCase(),
                                      )),
                                  const Spacer(),
                                ]),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
