import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        title:Text('User Profile'),
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
      ),
      body:Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    child: Image.asset('assets/girl (2).png'),
                    radius: 70.0,
                  ),
                ),
                Divider(
                  height: 30.0,
                  color: Colors.white,
                  thickness: 15.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.person_2,
                      color: Colors.white,
                    ),
                    SizedBox(width:30.0,),
                    Text(
                      'NAME',
                      style: TextStyle(
                        fontSize: 16.0,
                        color:Colors.white,
                        letterSpacing:2.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Jewerly Mariz C. Catapang',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:Colors.black,
                      fontSize: 25.0
                  ),
                ),
                SizedBox(height: 30.0,),
                Text(
                  'YEAR',
                  style: TextStyle(
                      fontSize: 16.0,
                      color:Colors.black,
                      letterSpacing:2.0
                  ),
                ),
                Text(
                  'THIRD YEAR',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:Colors.black,
                      fontSize: 25.0
                  ),
                ),
                SizedBox(height: 30.0,),
                Text(
                  'EMAIL',
                  style: TextStyle(
                      fontSize: 16.0,
                      color:Colors.black,
                      letterSpacing:2.0
                  ),
                ),
                Text(
                  '21-76547@g.batstate-u.edu.ph',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:Colors.black,
                      fontSize: 25.0
                  ),
                )
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: (){},
                  child: Text('Add Year'),
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.orange)
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}