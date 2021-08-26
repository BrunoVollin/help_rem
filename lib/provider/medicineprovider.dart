import 'dart:math';
import 'package:flutter/material.dart';
import 'package:help_rem/data/dummy_medicines.dart';
import 'package:help_rem/models/EntesQueridos.dart';
import 'package:help_rem/models/Remedio.dart';

class MedicineProvider with ChangeNotifier {
  final Map<String, Remedio> _items = {...DUMMY_MEDICINES};

  List<Remedio> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  Remedio byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(Remedio medicine) {
    if (medicine == null) return;

    if (medicine.id != null &&
        medicine.id.trim().isNotEmpty &&
        _items.containsKey(medicine.id)) {
      _items.update(medicine.id, (_) => medicine);
    } else {
      final id = Random().nextDouble().toString();

      _items.putIfAbsent(
        id,
        () => Remedio(
          id: id,
          nome: medicine.nome,
          horario: medicine.horario,
          quantidade: medicine.quantidade,
          imagem: medicine.imagem,
        ),
      );
    }

    notifyListeners();
  }

  void remove(String id) {
    if (id != null) {
      _items.remove(id);
      notifyListeners();
    }
  }
}