// To parse this JSON data, do
//
//     final person = personFromJson(jsonString);
// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';

Person personFromJson(var str) => Person.fromJson(json.decode(str));

String personToJson(Person data) => json.encode(data.toJson());

class Person {
    Person({
        required this.count,
        required this.gender,
        required this.name,
        required this.probability,
    });

    int count;
    var gender;
    String name;
    double probability;

    factory Person.fromJson(Map<String, dynamic> json) => Person(
        count: json["count"],
        gender: json["gender"],
        name: json["name"],
        probability: json["probability"],
    );

    Map<String, dynamic> toJson() => {
        "count": count,
        "gender": gender,
        "name": name,
        "probability": probability,
    };
}
