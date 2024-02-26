import 'package:flutter/material.dart';

class CustomWidgets {
  static customButton(VoidCallback callback, String text) {
    return InkWell(
      onTap: callback,
      child: SizedBox(
        width: 300,
        height: 50,
        child: ElevatedButton(
          onPressed: callback,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  static Widget customTextField(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: text,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  static customListTile(String leading, String trailing) {
    return ListTile(
      leading: Text(
        leading,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      trailing: Text(
        trailing,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  static listTileWithImage(String imageUrl, String title, String trailing) {
    return ListTile(
      leading: Image(
        image: NetworkImage(imageUrl),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Text(
        trailing,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
