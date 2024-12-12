import 'package:flutter/material.dart';

void main() {
  runApp(const Uwwu());
}

class Uwwu extends StatelessWidget {
  const Uwwu({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UwwuHome(),
    );
  }
}

class UwwuHome extends StatelessWidget {
  const UwwuHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Bumblebee'),
          backgroundColor: Color.fromARGB(255, 175, 225, 100),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Pencarian ditekan')),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Notifikasi ditekan')),
                );
              },
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: "Home"), 
              Tab(text: "Grid"), 
              Tab(text: "Profile"), 
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            HomeTab(), 
            GridTab(), 
            ProfileTab(), 
          ],
        ),
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(title: Text('Fuecoco')),
        ListTile(title: Text('Sprigatito')),
        ListTile(title: Text('Rayquaza')),
        ListTile(title: Text('Treecko')),
        ListTile(title: Text('Charmander')),
        ListTile(title: Text('Squirtle')),
        ListTile(title: Text('Grookey')),
        ListTile(title: Text('Rowlet')),
        ListTile(title: Text('Pancham')),
        ListTile(title: Text('Snivy')),
        ListTile(title: Text('Sandshrew')),
        ListTile(title: Text('Jigglypuff')),
        ListTile(title: Text('Lapras')),
        ListTile(title: Text('Piplup')),
        ListTile(title: Text('Sableye')),
      ],
    );
  }
}

class GridTab extends StatelessWidget {
  const GridTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 5, // 5 columns
      children: List.generate(10, (index) {
        return Card(
          child: Center(
            child: Text('Item ${index + 1}'),
          ),
        );
      }),
    );
  }
}

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50, 
            backgroundImage: AssetImage('assets/Dinda.jpeg'), 
          ),
          const SizedBox(height: 10),
          const Text(
            'Dinda Ismi Hanifah Waskito',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          const Text(
            '2210631170116@student.unsika.ac.id', 
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
