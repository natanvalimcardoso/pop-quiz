import 'package:flutter/material.dart';

class ContainerHistoric extends StatelessWidget {
  final String name;
  final String result;
  final String route;

  const ContainerHistoric({Key? key, required this.name, required this.result, required this.route})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
        child: SizedBox(
          height: 470,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SafeArea(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      Navigator.pushReplacementNamed(context, route);
                    },
                    child: Ink(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.black54,
                              blurRadius: 2.0,
                              offset: Offset(0.0, 0.75))
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(name,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text(result,
                              style: TextStyle(
                                fontSize: 20,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
