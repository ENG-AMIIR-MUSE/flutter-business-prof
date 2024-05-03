import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[300],
          title: Center(
              child: Text(
            "Business Profile",
            style: TextStyle(color: Colors.white),
          )),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // color: Colors.red,
                child: CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/19801902/pexels-photo-19801902/free-photo-of-portrait-of-man-wearing-sunglasses.jpeg?auto=compress&cs=tinysrgb&w=600")),
              ),
              SizedBox(
                width: 10,
                height: 15,
              ),
              Text(
                "Amiir Muse",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                "Login Your Account",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Icon(Icons.email),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 236, 232, 232),
                        borderRadius: BorderRadius.circular(10)),
                    margin: EdgeInsets.all(10),
                    width: 300,
                    height: 49,
                    child: Text(
                      "Username",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Icon(Icons.password),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 236, 232, 232),
                        borderRadius: BorderRadius.circular(10)),
                    margin: EdgeInsets.only(left: 10),
                    width: 300,
                    height: 49,
                    child: Text(
                      "**********",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(left: 23, top: 10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.red[300]),
                        onPressed: () {},
                        child: Text(
                          "Login",
                        )),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Have An Account ?"),
                        TextButton(onPressed: () {}, child: Text("Reigster"))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
