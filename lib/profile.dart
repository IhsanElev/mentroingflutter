import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin{
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController bioTextEditingController = TextEditingController();
  TextEditingController stackTextEditingController = TextEditingController();
  TextEditingController locationTextEditingController = TextEditingController();
  TextEditingController occupatotionTextEditingController = TextEditingController();
  String _labelText1;
  String _labelText2;
  String _labelText3;
  String _labelText4;
  String _labelText5;
  String _labelText6;
  bool firstbox = false;
  bool secondbox = false;
  @override
  void initState() {
    super.initState();
//    nameTextEditingController.addListener(_hasStartedTyping);
  }
//  void _hasStartedTyping() {
//    setState(() {
//      if (nameTextEditingController.text.isNotEmpty) {
//        _labelText = 'Name';
//      } else {
//        _labelText = null;
//      }
//    });
//  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.edit),
      ),
      appBar: AppBar(
        title: Text('My Profile'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: Icon(Icons.app_settings_alt),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            shrinkWrap: true,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(),
                Text('Bartek Parcia'),

                TextFormField(
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  textAlign: TextAlign.start,
                  onChanged: (a){
                    setState(() {
                      if(a.isNotEmpty){
                        _labelText1 = 'UserName';
                      }else{
                        _labelText1 = null;
                      }
                    });

                  },
                  textInputAction: TextInputAction.done,
                  controller: nameTextEditingController,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                    labelText: _labelText1,
                    hintText: 'Name',
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.transparent, width: 1)),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  textAlign: TextAlign.start,
                  onChanged: (v){
                    setState(() {
                      if(v.isNotEmpty){
                        _labelText2 = 'Email';
                      }else{
                        _labelText2 = null;
                      }
                    });

                  },
                  textInputAction: TextInputAction.done,
                  controller: emailTextEditingController,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                    labelText: _labelText2,
                    hintText: 'Email',
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.transparent, width: 1)),
                  ),
                ),
                Flexible(
                  child: CheckboxListTile(
                    value: this.firstbox,
                    onChanged: (bool value) {},
                    title: Text('available to mentor'),
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                ),
                Flexible(
                  child: CheckboxListTile(
                    value: this.firstbox,
                    onChanged: (bool value) {},
                    title: Text('need mentoring'),
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  textAlign: TextAlign.start,
                  onChanged: (b){
                    setState(() {
                      if(b.isNotEmpty){
                        _labelText3 = 'Bio';
                      }else{
                        _labelText3 = null;
                      }
                    });

                  },
                  textInputAction: TextInputAction.done,
                  controller: bioTextEditingController,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                    labelText: _labelText3,
                    hintText: 'Bio',
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.transparent, width: 1)),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  textAlign: TextAlign.start,
                  onChanged: (v){
                    setState(() {
                      if(v.isNotEmpty){
                        _labelText4 = 'Stack username';
                      }else{
                        _labelText4 = null;
                      }
                    });

                  },
                  textInputAction: TextInputAction.done,
                  controller: stackTextEditingController,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                    labelText: _labelText4,
                    hintText: 'Stack Username',
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.transparent, width: 1)),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  textAlign: TextAlign.start,
                  onChanged: (c){
                    setState(() {
                      if(c.isNotEmpty){
                        _labelText5 = 'Location';
                      }else{
                        _labelText5 = null;
                      }
                    });

                  },
                  textInputAction: TextInputAction.done,
                  controller: locationTextEditingController,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                    labelText: _labelText5,
                    hintText: 'Location',
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.transparent, width: 1)),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  textAlign: TextAlign.start,
                  onChanged: (d){
                    setState(() {
                      if(d.isNotEmpty){
                        _labelText6 = 'occupation';
                      }else{
                        _labelText6 = null;
                      }
                    });

                  },
                  textInputAction: TextInputAction.done,
                  controller: occupatotionTextEditingController,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                    labelText: _labelText6,
                    hintText: 'occupation',
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.transparent, width: 1)),
                  ),
                ),
              ],
            ),
          ),
        ),

    );
  }
}
