import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<dynamic> image = [
    'assets/a.jpg',
    'assets/b.jpg',
    'assets/c.jpg',
    'assets/d.jpg',
    'assets/e.jpg',
    'assets/f.jpg',
    'assets/g.jpg',
    'assets/h.jpg',
    'assets/i.jpg',
    'assets/j.jpg'
  ];
  List<dynamic> title = [
    "Iphone 12",
    "Note 20 Ultra",
    "Macbook Air",
    "Macbook Pro",
    'Gaming PC',
    'Backlit Keyboard',
    'Mercedes',
    'Mutton',
    'Roadster',
    'Royal Field'
  ];
  List<dynamic> categTitle = [
    "Clothes",
    "Electronic",
    "Appliances",
    "HouseHold",
    "Others"
  ];
  List<dynamic> categSubtitle = [
    "5 item",
    "15 item",
    "10 Item",
    "8 Item",
    "10 Item"
  ];
  List<dynamic> categIcon = [
    Icons.shopping_basket,
    Icons.power,
    Icons.event_seat,
    Icons.devices,
    Icons.arrow_forward,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ecom App UI",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
            ),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListTile(
                leading: Text(
                  "Items",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                trailing: Text(
                  "View More",
                  style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: image.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset(image[index],
                                height: 160, width: 300, fit: BoxFit.contain),
                            SizedBox(
                              height: 3,
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Column(
                                children: [
                                  Text(
                                    title[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 12,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 12,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 12,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 12,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 12,
                                      ),
                                      Text(
                                        "5.0(23 Reviews)",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text("More Categories",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 70,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categIcon.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 150,
                      child: Card(
                        child: Row(
                          children: [
                            Icon(
                              categIcon[index],
                              color: Colors.purple,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  categTitle[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(categSubtitle[index])
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              SizedBox(
                height: 10,
              ),
              // Completed
              Container(
                alignment: Alignment.bottomLeft,
                child: ListTile(
                  leading: Text(
                    "Popular Items",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  trailing: Text(
                    "View More",
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Container(
                child: GridView.count(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: List.generate(image.length, (index) {
                      return Container(
                          height: 650,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Card(
                            child: Column(
                              children: [
                                Image.network(
                                  image[index],
                                  height: 130,
                                  fit: BoxFit.contain,
                                ),
                                Text(
                                  title[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 12,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 12,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 12,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 12,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 12,
                                    ),
                                    Text(
                                      "5.0(23 Reviews)",
                                      style: TextStyle(
                                          color: Colors.black87, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ));
                    })),
              ) //Completed
            ],
          ),
        ),
      ),
    );
  }
}
