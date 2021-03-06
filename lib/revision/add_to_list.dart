import 'package:flutter/material.dart';

class AddToList extends StatefulWidget {
  @override
  _AddToListState createState() => _AddToListState();
}

class _AddToListState extends State<AddToList> {
  List<String> itemList = [
    "Kashif",
    "Fathima",
    "Arshad",
    "Rayeesa",
    "Ruhma",
  ];
  final nameHolder = TextEditingController();

  Future<bool> _confirmDelete() {
    return showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Delete?'),
            content: Text('Are you sure you want to delete'),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  return Navigator.of(context).pop(false);
                },
                child: Text('No'),
              ),
              FlatButton(
                onPressed: () {
                  return Navigator.of(context).pop(true);
                },
                child: Text('Yes'),
              ),
            ],
          ),
        ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add to list',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.grey.shade200,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 9,
            child: ListView.separated(
                itemBuilder: (context, i) {
                  return ListTile(
                    title: Text(itemList[i]),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        _confirmDelete().then((isDelete) {
                          print('_confirmDelete = $isDelete');
                          if (isDelete) {
                            setState(() {
                              itemList.removeAt(i);
                            });
                          }
                        });
                      },
                    ),
                  );
                },
                separatorBuilder: (context, i) {
                  return Divider();
                },
                itemCount: itemList.length),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey.shade200,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Enter text here'),
                  controller: nameHolder,
                  onSubmitted: (str) {
                    print('submitted $str');
                    setState(() {
                      itemList.add(str);
                    });
                    nameHolder.clear();
                  }),
            ),
          )
        ],
      ),
    );
  }
} //state
