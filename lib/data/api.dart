import 'dart:convert';

import 'package:dio/dio.dart';

class Api {
  final headers = {
    'x-hasura-admin-secret':
        'tV3QIwHUs8qKvwnvIANZl8uKAZUF6KEPjuAaOVwNyWnTKPm8QBwuQl9sOTVZFA3R',
    'content-type': 'application/json'
  };
  final dio = Dio();

  Future<List<dynamic>> getAnnouncements() async {
    dio.options.headers = headers;
    final result = await dio
        .get('https://cheerful-starling-87.hasura.app/api/rest/ancorget');

    return result.data['ancor'];
  }

  Future<void> postAnnouncements({
    required String nome,
    required String datanasc,
    required String cpf,
    required String civil,
    required String endereco,
    required String principalcond,
    required String menorvintecinco,
    required String fabricacao,
    required String modelo,
    required String placa,
    required String chassi,
    required String combustivel,
    required String email,
    required String celular,
    required String wpp,
  }) async {
    dio.options.headers = headers;
    final body = {
      "nome": nome,
      "datanasc": datanasc,
      "cpf": cpf,
      "civil": civil,
      "endereco": endereco,
      "principalcond": principalcond,
      "menorvintecinco": menorvintecinco,
      "fabricacao": fabricacao,
      "modelo": modelo,
      "placa": placa,
      "chassi": chassi,
      "combustivel": combustivel,
      "email": email,
      "celular": celular,
      "wpp": wpp,
    };
    try {
      await dio.post(
          'https://cheerful-starling-87.hasura.app/api/rest/ancorpost',
          data: json.encode(body));
    } catch (e) {}
  }
}
