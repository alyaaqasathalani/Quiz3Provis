import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyDropdownWidget extends StatefulWidget {
  const MyDropdownWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  State<MyDropdownWidget> createState() => _MyDropdownWidgetState();
}




abstract class _MyDropdownWidgetState extends State<MyDropdownWidget> {
  String dropdownValue = 'Jenis Pinjaman 1';
  List<String> jenisPinjaman = [];

  Future<List<String>> fetchJenisPinjaman(String dropdownValue) async{
    var response = await http.get(Uri.parse('https://example.com/daftar_jenis_pinjaman?jenis=$dropdownValue'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return List<String>.from(data['jenis_pinjaman']);
    } else {
      throw Exception('Failed to fetch jenis pinjaman');
    }
    
  }
}