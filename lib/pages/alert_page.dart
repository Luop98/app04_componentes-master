import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  showMyAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "HOLAAAA ",
            style: TextStyle(fontSize: 40),
          ),
          backgroundColor: Colors.white,
          content: Text(
            "CASCAS",
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("salir"),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("acepta"),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("CAS CAS"),
                ),
              ],
            )
          ],
        );
      },
    );
  }

  showMyAlert2(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Column(
              children: [
                Image.network(
                    "https://trome.com/resizer/yE5X0_lhkMxGLYv54FoCHRwDxSY=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/LQZUOMIEDJFLBJSDPV3NUX6UOI.jpg"),
                Title(
                  color: Colors.black,
                  child: Text("THE INTERNACIONAL"),
                ),
                Text("Valve repartirá 40 millones de dólares en el campeonato mundial de Dota 2,"
                    "The International 10. 3 teams with Peruvian players will attempt the feat.")
              ],
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancel"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Confirm"),
                  ),
                ],
              )
            ],
          );
        });
  }

  showMyAlert3(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                  "https://i.pinimg.com/564x/f4/31/64/f4316424aa0d574596fc56f2e006f4bd.jpg"),
              Text("Your video has been uploaded"),
              Text("you're video has finished uploading end is live"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Ingrese un link"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Card(
                      child: Row(
                        children: [
                          Icon(Icons.share),
                          Text(
                            "Copy Link",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 6, 2, 243)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Card(
                    
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Next ",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    color: Color.fromARGB(255, 87, 35, 146),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showMyAlert(context);
              },
              child: Text("1er alerta"),
            ),
            ElevatedButton(
              onPressed: () {
                showMyAlert2(context);
              },
              child: Text("2da alerta"),
            ),
            ElevatedButton(
              onPressed: () {
                showMyAlert3(context);
              },
              child: Text("3er alerta"),
            ),
          ],
        ),
      ),
    );
  }
}
