import "package:flutter/material.dart";
import "package:login/screens/admin/page.dart";

class GerertechnicienView extends StatefulWidget {
  const GerertechnicienView({Key? key}) : super(key: key);
  @override
  State<GerertechnicienView> createState() => _GerertechnicienViewState();
}

class _GerertechnicienViewState extends State<GerertechnicienView> {
  TextEditingController? _textEditingController = TextEditingController();

  List<String> technicienList = [
    "Equipe Sahloul",
    "Equipe Hammam Souss",
    "Equipe Akouda",
    "Equipe Kalaa Kbira",
    "Ahmed Maalaoui",
    "Wejden Sahbani",
    "Aymen Sahbani ",
    "Amin Mechergui",
    "Wael Hamdi",
    "Yahya Saidani",
    "Adem touibi",
    "Wissem Maaloui",
  ];

  @override
  Widget build(BuildContext context) {
    var technicienListonSearch;

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Container(
                decoration: BoxDecoration(
                    color: Colors.blue.shade200,
                    borderRadius: BorderRadius.circular(30)), // BoxDecoration
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      technicienList = technicienList
                          .where((element) => element.contains(value))
                          .toList();
                    });
                  },

                  controller: _textEditingController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: EdgeInsets.all(15),
                      hintText: "Rechercher"), // InputDecoration
                ), // TextField
              ),
            ),
            backgroundColor: Colors.white,
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

  static where(Function(dynamic element) param0) {}
}

// Data to display.
const List<Entry> data = <Entry>[
  Entry(
    "Equipe Sahloul",
    <Entry>[
      Entry("Ahmed Maalaoui"),
      Entry("Wejden Sahbani"),
    ],
  ),
  Entry(
    "Equipe Hammam Sousse",
    <Entry>[
      Entry("Aymen Sahbani "),
      Entry("Amin Mechergui"),
    ],
  ),
  Entry(
    "Equipe Kalaa kbira",
    <Entry>[
      Entry("Wael Hamdi"),
      Entry("Yahya Saidani"),
    ],
  ),
  Entry(
    "Equipe Akouda",
    <Entry>[
      Entry("Adem touibi"),
      Entry("Wissem Maaloui"),
    ],
  ),
];

// Displays one Entry. If the entry has children then it"s displayed
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
