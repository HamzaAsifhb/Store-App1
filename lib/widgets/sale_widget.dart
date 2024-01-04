import 'package:flutter/material.dart';
class SaleWidget extends StatelessWidget {
  const SaleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String img =
        "https://images.pexels.com/photos/190819/pexels-photo-190819.jpeg?cs=srgb&dl=pexels-fernando-arcos-190819.jpg&fm=jpg";
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.2,
      child: Stack(
        children: [
          // Background Gradient
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF7A60A5),
                  Color(0xFF82C3DF),
                ],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
            ),
          ),
          // Image and Text Content
          Row(
            children: [
              Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFF9689CE),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: const [
                          Text(
                            "Get the special discount",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Flexible(
                            child: SizedBox(
                              width: double.infinity,
                              child: FittedBox(
                                fit: BoxFit.fill,
                                child: Text(
                                  "SALE \nNOW",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image.network(
                      img,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}