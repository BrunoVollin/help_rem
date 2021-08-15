import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:help_rem/data/dummy_activity.dart';
import 'package:help_rem/models/Atividade.dart';


class PhysicalProvider with ChangeNotifier {
  final Map<String, Atividade> _items = {...DUMMY_ACTIVITY};

  List<Atividade> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  Atividade byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(Atividade activity) {
    if (activity == null) return;

    if (activity.id != null &&
        activity.id.trim().isNotEmpty &&
        _items.containsKey(activity.id)) {
      _items.update(activity.id, (_) => activity);
    } else {
      final id = Random().nextDouble().toString();

      _items.putIfAbsent(
        id,
        () => Atividade(id: id, nome: activity.nome, descricao: activity.descricao)
        
      );
    }

    notifyListeners();
  }

  void remove(String id) {
    if(id != null) {
      _items.remove(id);
      notifyListeners();
    }
  }
}