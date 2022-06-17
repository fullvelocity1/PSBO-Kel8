import 'package:flutter/material.dart';
import 'package:ternaku/helpers/book_manager.dart';
import 'package:ternaku/model/user.dart';
import 'package:ternaku/model/admin.dart';

const primaryColor = Color(0xFFEED6D3);
const boxColors = Color(0xFFF5F5F5);
const heading1Colors = Color(0xFFADABAB);
const sinopsisColor = Color(0xFF485B82);
const cardColor = Color(0xFFD3B135);
const buttonColor = Color(0xFFEFCBC7);
const textHintColor = Color(0xFFB7837C);
const TextFieldColor = Color(0xFFF8F4F0);

enum Genre { Historical, Romance, Comedy, Horror, Thriller }

enum BookType { Fiction, NonFiction, Unidentified }

BookStorage manager = BookStorage();
