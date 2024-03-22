import 'dart:convert';
import 'package:faker_fectcher_exam/models/persons_model/persons_model.dart';
import 'package:http/http.dart' as http;

const String baseUrl = 'https://fakerapi.it/api/v1/persons';

class PersonsRepository {
  PersonsRepository._privateConstructor();

  static final PersonsRepository _instance =
      PersonsRepository._privateConstructor();

  factory PersonsRepository() {
    return _instance;
  }

  List<Persons> _loadedPersons = [];

  Future<List<Persons>> fetchPersons(int pageKey, int itemsPerPage) async {
    final String url = '$baseUrl?page=$pageKey&_quantity=$itemsPerPage';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = jsonDecode(response.body);
        final List<dynamic> data = jsonData['data'];

        _loadedPersons = data.map((json) => Persons.fromJson(json)).toList();
        return _loadedPersons;
      } else {
        throw Exception('Failed to load persons');
      }
    } catch (e) {
      throw Exception('Failed to load persons: $e');
    }
  }

// due to a bug i found it still retains old data added variable _loadedPersons to fix the problem and clearLoadedData() function
  void clearLoadedData() {
    _loadedPersons.clear();
  }
}
