import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:help_rem/data/dummy_entes.dart';
import 'package:help_rem/models/EntesQueridos.dart';

class EntesProvider with ChangeNotifier {
  final Map<String, EntesQueridos> _items = {...DUMMY_ENTES};

  List<EntesQueridos> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }
}
