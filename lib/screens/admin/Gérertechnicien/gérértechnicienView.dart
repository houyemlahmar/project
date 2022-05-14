import 'package:flutter/material.dart';
import 'package:login/screens/admin/page.dart';

class GerertechnicienView extends StatelessWidget {
  const GerertechnicienView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Technicies'),
              flexibleSpace: const Image(
                image: AssetImage('assets/TT2.png'),
                fit: BoxFit.cover,
              ),
              backgroundColor: Colors.transparent,
              toolbarHeight: 100,
              leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => page()));
                  },
                  color: Colors.grey),
            ),
            body: ListView.builder(
              itemBuilder: (BuildContext context, int index) =>
                  EntryItem(data[index]),
              itemCount: data.length,
            )));
  }
}

// One entry in the multilevel list displayed by this app.
class Entry {
  const Entry(this.title, [this.children = const <Entry>[]]);
  final String title;
  final List<Entry> children;
}

// Data to display.
const List<Entry> data = <Entry>[
  Entry(
    'Equipe Sahloul',
    <Entry>[
      Entry('Ahmed Maalaoui'),
      Entry('Wejden Sahbani'),
    ],
  ),
  Entry(
    'Equipe Hammam Sousse',
    <Entry>[
      Entry('Aymen Sahbani '),
      Entry('Amin Mechergui'),
    ],
  ),
  Entry(
    'Equipe Kalaa kbira',
    <Entry>[
      Entry('Wael Hamdi'),
      Entry('Yahya Saidani'),
    ],
  ),
  Entry(
    'Equipe Akouda',
    <Entry>[
      Entry('Adem touibi'),
      Entry('Wissem Maaloui'),
    ],
  ),
];

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
