import 'package:flutter/material.dart';
import 'package:ternaku/constants.dart';
import 'package:ternaku/model/buku.dart';
import 'package:ternaku/model/listbuku.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:ternaku/helpers/book_manager.dart';
import 'package:ternaku/model/admin.dart';
import 'package:ternaku/model/user.dart';

class BookForm extends StatefulWidget {
  Admin user = Admin('', '', '');
  BookForm({Key? key, required this.user}) : super(key: key);

  @override
  _BookFormState createState() => _BookFormState(user);
}

class _BookFormState extends State<BookForm> {
  String _judulbuku = '';
  String _jenisbuku = '';
  String _penulis = '';
  String _harga = '';
  String _pages = '';
  String _bahasa = '';
  String _genre = '';
  String _status = '';
  String _imgCover = '';
  String _sinopsis = '';
  String? dropdownvalue;
  String? ddvalue_jenisbuku;
  String? ddvalue_bahasa;
  Admin user;

  final _formKey = GlobalKey<FormState>();
  final jenis_buku = ['Fiction', 'NonFiction'];
  final bahasa = ['Indonesia', 'Inggris'];

  // Fetch content from the json file

  _BookFormState(this.user);

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('${path}/counter.txt');
  }

  Future<File> writeCounter(int counter) async {
    final file = await _localFile;

    // Write the file
    return file.writeAsString('$counter');
  }

  DropdownMenuItem<String> buildMenuItem(String Item) =>
      DropdownMenuItem(value: Item, child: Text(Item));

  String? getDdValue(String textInput) {
    if (textInput == "Jenis Buku") {
      return ddvalue_jenisbuku;
    } else if (textInput == "Bahasa") {
      return ddvalue_bahasa;
    }
  }

  Widget _buildStringInput(String textInput) {
    return Container(
      margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width / 70,
          right: MediaQuery.of(context).size.width / 70,
          top: 15),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black54, width: 1.5),
          borderRadius: BorderRadius.circular(5)),
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            labelText: textInput,
            contentPadding: EdgeInsets.only(left: 20)),
        validator: (value) {
          if (value!.isEmpty) {
            return textInput + ' tidak boleh kosong';
          }
          if (textInput == "Judul Buku") {
            if (value != null) _judulbuku = value;
          }
          if (textInput == "Penulis") {
            if (value != null) _penulis = value;
          }
          if (textInput == "Harga") {
            if (value != null) _harga = value;
          }
          if (textInput == "Halaman") {
            if (value != null) _pages = value;
          }
          if (textInput == "Genre") {
            if (value != null) _genre = value;
          }
        },
        onSaved: (value) {
          if (textInput == "Judul Buku") {
            if (value != null) _judulbuku = value;
          }
          if (textInput == "Penulis") {
            if (value != null) _penulis = value;
          }
          if (textInput == "Harga") {
            if (value != null) _harga = value;
          }
          if (textInput == "Halaman") {
            if (value != null) _pages = value;
          }
          if (textInput == "Genre") {
            if (value != null) _genre = value;
          }
        },
      ),
    );
  }

  Widget _buildDropdownForm(String textInput, List<String> items) {
    if (textInput == "Jenis Buku") {
      return Container(
        margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.width / 70,
            right: MediaQuery.of(context).size.width / 70,
            top: 15),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black54, width: 1.5),
            borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 30),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              hint: Container(
                width: 150, //and here
                child: Text(
                  textInput,
                  textAlign: TextAlign.start,
                ),
              ),
              isExpanded: true,
              value: ddvalue_jenisbuku,
              items: items.map(buildMenuItem).toList(),
              onChanged: (String? ddvalue_jenisbuku) => setState(() {
                this.ddvalue_jenisbuku = ddvalue_jenisbuku;
              }),
            ),
          ),
        ),
      );
    } else if (textInput == "Bahasa") {
      return Container(
        margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.width / 70,
            right: MediaQuery.of(context).size.width / 70,
            top: 15),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black54, width: 1.5),
            borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 30),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              hint: Container(
                width: 150, //and here
                child: Text(
                  textInput,
                  textAlign: TextAlign.start,
                ),
              ),
              isExpanded: true,
              value: ddvalue_bahasa,
              items: items.map(buildMenuItem).toList(),
              onChanged: (String? ddvalue_bahasa) => setState(() {
                this.ddvalue_bahasa = ddvalue_bahasa;
              }),
            ),
          ),
        ),
      );
    } else {
      return SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    List<Buku> list_buku = [];
    ListBuku library = ListBuku([]);
    manager.readBooks();
    library = manager.library;
    list_buku = library.getDummyBooks();

    return Scaffold(
      key: _scaffoldKey,
      appBar:
          AppBar(title: Text("Add New Book"), backgroundColor: primaryColor),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(25),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildStringInput("Judul Buku"),
                _buildDropdownForm("Jenis Buku", jenis_buku),
                _buildStringInput("Penulis"),
                _buildStringInput("Harga"),
                _buildStringInput("Halaman"),
                _buildDropdownForm("Bahasa", bahasa),
                _buildStringInput("Genre"),
                Container(
                  // Sinopsis
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 70,
                      right: MediaQuery.of(context).size.width / 70,
                      top: 15),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54, width: 1.5),
                      borderRadius: BorderRadius.circular(5)),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.top,
                    decoration: InputDecoration(
                        labelText: "Sinopsis",
                        alignLabelWithHint: true,
                        contentPadding: EdgeInsets.only(left: 20)),
                    keyboardType: TextInputType.multiline,
                    maxLines: 5,
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        //check validitas data

                        final input_buku = Buku.newBook(
                            123,
                            _judulbuku,
                            _penulis,
                            Genre.values.firstWhere(
                                (e) => e.toString() == 'Genre.' + _genre),
                            "laut_bercerita",
                            10,
                            int.parse(_pages),
                            ddvalue_bahasa.toString(),
                            _harga,
                            BookType.values.firstWhere((e) =>
                                e.toString() ==
                                'BookType.' + ddvalue_jenisbuku.toString()));
                        user.addBook(input_buku);
                        // list_buku.add(input_buku);
                        // library.addNewList(list_buku);
                        // manager.writeBooks(library);
                        //setelah data valid
                        final snackbar = SnackBar(
                          content: Text("Menambah buku berhasil!"),
                          // content: Text(list_buku.length.toString()),
                        );
                        _scaffoldKey.currentState!.showSnackBar(snackbar);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                        fixedSize: Size(MediaQuery.of(context).size.width, 40)),
                    child: Text(
                      "Tambahkan",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
