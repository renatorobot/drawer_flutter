import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
          width: MediaQuery.of(context).size.width*0.80,
        child:  Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(accountEmail: Text("teste@gmail.com"), accountName: Text("Mr. Robot"), currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage('https://via.placeholder.com/150/771796'),), decoration: BoxDecoration(color: Colors.black26),),

              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                subtitle: Text("Home App"),
                onTap: (){},
              ),

              ListTile(
                leading: Icon(Icons.star),
                title: Text("Favoritos"),
                subtitle: Text("Meus Favoritos..."),
                trailing: Icon(Icons.arrow_forward),
                onTap: (){},
              ),

              Divider(),

              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Sair"),
                onTap: (){},
              )

            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("App"),
        backgroundColor: Colors.black12,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 30), child: Text("App"),),
              ],
            ),
          ),
        ),
      )
    );
  }
}
