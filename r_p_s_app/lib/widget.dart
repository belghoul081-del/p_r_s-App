import 'package:flutter/material.dart';
import 'package:r_p_s_app/logic.dart';
import 'package:r_p_s_app/model.dart';

class ChoiseBotton extends StatelessWidget {
  final String text;
  final PointeModel points;
  final VoidCallback onUpdate;
  final String image;
  const ChoiseBotton({
    super.key,
    required this.text,
    required this.points,
    required this.onUpdate,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.indigo.shade900),
      ),
      child: Stack(
        children: [
          Center(
            child: ClipOval(child: Image.asset(image, fit: BoxFit.cover)),
          ),
          Center(
            child: MaterialButton(
              onPressed: () {
                String choiseComputerItem = funChoiseComputer(Item().item);
                int result = funCounterPoint(text, choiseComputerItem, points);
                onUpdate();
                Text colorChoise() {
                  if (result == 1) {
                    return Text(
                      "Player win",
                      style: TextStyle(fontSize: 20, color: Colors.green),
                    );
                  } else if (result == -1) {
                    return Text(
                      "Computer win",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    );
                  } else if (result == 0) {
                    return Text("Draw", style: TextStyle(fontSize: 20));
                  }
                  return Text("");
                }

                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text("Player", style: TextStyle(fontSize: 25)),
                              Container(
                                height: 75,
                                width: 75,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.indigo.shade900,
                                  ),
                                ),
                                child: Center(
                                  child: ClipOval(
                                    child: Image.asset(
                                      image,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Computer"),
                              Container(
                                height: 75,
                                width: 75,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.indigo.shade900,
                                  ),
                                ),
                                child: Center(
                                  child: ClipOval(
                                    child: Image.asset(
                                      funImageComputer(choiseComputerItem),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      content: Center(heightFactor: 0, child: colorChoise()),
                      actions: [
                        TextButton(onPressed: () {}, child: Text("Next")),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

Widget Counter({required String name, required int counter}) {
  return Center(
    child: Column(
      children: [
        Text(name, style: TextStyle(fontSize: 30)),
        Text("${counter}", style: TextStyle(fontSize: 30)),
      ],
    ),
  );
}
