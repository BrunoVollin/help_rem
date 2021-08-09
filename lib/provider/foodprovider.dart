import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:help_rem/data/dummy_food.dart';
import 'package:help_rem/models/Alimento.dart';


class FoodProvider with ChangeNotifier {
  final Map<String, Alimento> _items = {...DUMMY_FOOD};

  List<Alimento> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  Alimento byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(Alimento food) {
    if (food == null) return;

    if (food.id != null &&
        food.id.trim().isNotEmpty &&
        _items.containsKey(food.id)) {
      _items.update(food.id, (_) => food);
    } else {
      final id = Random().nextDouble().toString();

      _items.putIfAbsent(
        id,
        () => Alimento(id: id, nome: food.nome, pode: food.pode, imagem: food.imagem)
        
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