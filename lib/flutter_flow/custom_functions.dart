import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../backend/supabase/supabase.dart';
import '../../auth/auth_util.dart';

bool searchEngineFunction(
  String searchInput,
  String searchFor,
) {
  return searchInput.toLowerCase().contains(searchFor.toLowerCase());
}

LatLng? newCustomFunction(
  String? latitud,
  String? longitud,
) {
  return LatLng(double.parse(latitud!), double.parse(longitud!));
}
