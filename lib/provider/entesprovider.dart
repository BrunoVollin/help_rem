import 'dart:math';

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

  EntesQueridos byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(EntesQueridos ente) {
    if (ente == null) return;

    if (ente.id != null &&
        ente.id.trim().isNotEmpty &&
        _items.containsKey(ente.id)) {
      _items.update(ente.id, (_) => ente);
    } else {
      final id = Random().nextDouble().toString();

      _items.putIfAbsent(
        id,
        () => EntesQueridos(
          id: id,
          parentesco: ente.parentesco,
          nome: ente.nome,
          idade: ente.idade,
          telefone: ente.telefone,
          imagem: ente.imagem,
        ),
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
