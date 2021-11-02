import 'package:flutter/material.dart';
 
void main(List<String> args) {
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyTextField(),
    );
  }
}
 
class MyTextField extends StatefulWidget {
  const MyTextField({ Key? key }) : super(key: key);
 
  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}
 
class _MyTextFieldState extends State<MyTextField> {
 
  TextEditingController fName = TextEditingController();
  TextEditingController lName = TextEditingController();
  TextEditingController pass = TextEditingController();
  bool isVisible = true;
 
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fName.addListener(() => setState(() {
 
    }));
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar')
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: fName,
              decoration: InputDecoration(
                label: Text('First name'),
                icon: Icon(Icons.ac_unit),
                suffixIcon: fName.text.isEmpty ? Container(
                  width: 0,
                  height: 0,
                ) :   IconButton(onPressed: () => fName.clear(), icon: Icon(Icons.close),),
              ),
            ),
              TextField(
              controller: pass,
              obscureText: isVisible,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                label: Text('Password'),
                prefixIcon: Icon(Icons.settings),
                suffixIcon: IconButton(
                 icon: isVisible ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                onPressed: (){
                  setState(() {
                    isVisible = !isVisible;               
                  },
                  ); 
                },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: lName,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Last name',
                hintText: 'Enter your last name',
                prefixIcon: Icon(Icons.access_time_outlined),
                suffixIcon: lName.text.isEmpty ? Container(
                  height: 0,
                  width: 0,
                ) : IconButton(onPressed: ()=> lName.clear(), icon: Icon(Icons.close))
              ),
            ),
            SizedBox(
              height: 10,
            ),
             TextField(
               style: TextStyle(
                 color: Colors.white
               ),
               keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                labelText: 'Description',
                labelStyle: TextStyle(
                  color: Colors.black, fontSize: 10, fontWeight: FontWeight.bold,
                ),
                hintText: 'Write something about you',
                prefixIcon: Icon(Icons.access_time_outlined),
                suffixIcon: Icon(Icons.precision_manufacturing),
                filled: true,
                fillColor: Colors.grey,
              ),
              maxLength: 10,
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                fName.text;
                pass.text;
              });
            }, child: Text('Submit'),),
            Text( fName.text ),
            Text(pass.text),
          ],
        ),
      ),
    );
  }
}
