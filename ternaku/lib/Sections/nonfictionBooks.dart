import 'package:flutter/material.dart';

class NonFictionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed('/daftarbuku'),
      child: Center(
        child: Container(
            height: 271.5,
            width: 400.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment(0, 0),
                  image: AssetImage('assets/images/nonfiction_button.png'),
                  fit: BoxFit.fill),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0.0, 20.0),
                    blurRadius: 50.0,
                    color: Colors.black45)
              ],
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Image(
              image: AssetImage('assets/icons/woman.png'),
              alignment: Alignment(-1.5, 0),
            )),
      ),
    );
  }
}
