import 'package:flutter/material.dart';
import 'package:infinite_scroll/infinite_scroll.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FamilyScreen extends StatefulWidget {
  const FamilyScreen({Key? key}) : super(key: key);

  @override
  _FamilyScreenState createState() => _FamilyScreenState();
}

class _FamilyScreenState extends State<FamilyScreen> {
  List<String> data = [];
  bool everythingLoaded = false;
  int nextPage = 1;

  @override
  void initState() {
    super.initState();
    loadInitialData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Family Screen')),
      body: InfiniteScrollList(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: data.map((e) => ListItem(text: e)).toList(),
        onLoadingStart: (page) async {
          await loadNextPageData();
        },
        everythingLoaded: everythingLoaded,
      ),
    );
  }

  Future<void> loadInitialData() async {
    data = await getNextPageData(1);
    setState(() {});
  }

  Future<void> loadNextPageData() async {
    final newData = await getNextPageData(nextPage);
    setState(() {
      data += newData;
      if (newData.isEmpty) {
        everythingLoaded = true;
      } else {
        nextPage++;
      }
    });
  }

  Future<List<String>> getNextPageData(int page) async {
    final response = await http
        .get(Uri.parse('https://reqres.in/api/users?page=$page&per_page=3'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final List<dynamic> usersData = jsonData['data'];
      final List<String> users =
          usersData.map((user) => user['email'].toString()).toList();
      return users;
    } else {
      throw Exception('Failed to load users');
    }
  }
}

class ListItem extends StatelessWidget {
  final String text;
  const ListItem({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 200,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(.3),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          CircleAvatar(
            child: Icon(Icons.image),
            // child: Image.network('https://picsum.photos/250?image=9'),
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
