import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ru_ufal_app/models/meal_model.dart';
import 'package:http/http.dart' as http;
import 'package:ru_ufal_app/services/api_service.dart';

class HomeController {
  final tagSelectedNotifier = ValueNotifier<int>(0);
  int get tagSelected => tagSelectedNotifier.value;
  set tagSelected(int newTag) => tagSelectedNotifier.value = newTag;

  ApiService apiService = ApiService();

  Future<List<MealModel>> fetchMenuData() async {
    try {
      List<MealModel> meals = await apiService.getMeals();
      return meals;
    } catch (e) {
      throw Exception("Failed");
    }
  }
}
