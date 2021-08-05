import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:help_rem/models/EntesQueridos.dart';
import 'package:help_rem/views/dear_one_list.dart';

class EntesProvider with ChangeNotifier {
  final Map<String, EntesQueridos> _items = {...DearOneList};

  List<EntesQueridos> get all {
    return [..._items.values];
  }
}
