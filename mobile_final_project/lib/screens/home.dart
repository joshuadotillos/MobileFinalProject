import 'package:flutter/material.dart';
import 'package:mobile_final_project/screens/categories_view.dart';
import 'package:mobile_final_project/screens/favorites_view.dart';

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        /*AppBar Widget*/
        appBar: AppBar(
          title: Text('Placeholder Title'),
        ),
        /*Drawer Widget*/
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              /*Cooking Up! Logo*/
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  color: Colors.amber,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10.0,
                      ),
                      child: Text(
                        'Cooking Up!',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              /*Meals*/
              ListTile(
                title: Text(
                  'Meals',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Icon(
                  Icons.local_dining,
                ),
                onTap: () {},
              ),
              /*Filters*/
              ListTile(
                title: Text(
                  'Filters',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Icon(
                  Icons.settings,
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
        backgroundColor: Colors.amber[100],
        /*Tabs*/
        bottomNavigationBar: TabBar(
          labelColor: Colors.red[700],
          unselectedLabelColor: Colors.amber[700],
          indicatorColor: Colors.amber[100],
          tabs: [
            /*Categories Tab*/
            Tab(
              icon: Icon(
                Icons.category,
              ),
              child: Text(
                'Categories',
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ),
            /*Favorites Tab*/
            Tab(
              icon: Icon(
                Icons.star,
              ),
              child: Text(
                'Favorites',
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              CategoriesView(),
              FavoritesView(),
            ],
          ),
        ),
      ),
    );
  }
}
