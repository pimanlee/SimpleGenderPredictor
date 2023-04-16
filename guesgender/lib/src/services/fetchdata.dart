import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'object.dart';

class Fetchdata {
  Future  getdatas(value) async {
    var data =
        await http.get(Uri.parse('https://api.genderize.io/?name=$value'));
    // print(data);
    var jason = data.body;
    return personFromJson(jason);
  }
}
