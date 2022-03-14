import 'package:flutter/material.dart';
import 'package:kuis/detail_page.dart';
import 'package:kuis/model/menu.dart';

import 'model/menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Menu"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: _createListCard(),
      ),
    );
  }

  Widget _createListCard() {
    var dataMenu = getData;

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: dataMenu.length,
      itemBuilder: (BuildContext context, int index){
        return _createCard(dataMenu[index], context);
      },
    );
  }

  Widget _createCard(Menu data, BuildContext context) {
    return Card(
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailPage(name: data.name, image: data.image, desc: data.desc, price: data.price, category: data.category, ratings: data.ratings, reviewer: data.reviewer, sold: data.sold,);
          }));
        },
        child: Container(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Image.network(
                  data.image,
                  width: 400,
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    child: Text(
                      data.name,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
