import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text('مرحباً بك في الصفحة الرئيسية', style: TextStyle(fontSize: 22)),
          SizedBox(height: 16),
          // مثال: بطاقات منتجات
          for (int i = 1; i <= 6; i++)
            Card(
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: Icon(Icons.shopping_bag),
                title: Text('بلوفر رقم $i'),
                subtitle: Text('بلوفر شتوى') ,
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
              ),
            ),
        ],
      ),
    );
  }
}
