import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sample_app/utils/show_snackbar.dart';
void httpErrorHandler({required BuildContext context, required http.Response res, required VoidCallback onSuccess}){
  switch(res.statusCode){
    case 200:
    {
      onSuccess();
      break;
    }
    case 300:
    {
      showSnackBar(context: context, message: jsonDecode(res.body)['res']);
    }
    
  }
}