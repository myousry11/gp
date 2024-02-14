import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: Icon(
            color:Colors.black,
            Icons.arrow_back,
          ),
          title: Padding(
            padding: const EdgeInsets.all(75.0),
            child: Text(
              'Edit Profile',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [ CircleAvatar(
                      radius: 80.0,
                      backgroundColor: Colors.grey[300],
                    ),
                      Container(
                        child: IconButton( onPressed: () {} ,
                          icon: CircleAvatar(
                            radius: 15.0,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.camera_alt,
                              size: 20.0,
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  alignment: AlignmentDirectional.topStart,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(height: 15.0,),
                      Container(
                        height: 40.0,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'MTI Team',
                            border: OutlineInputBorder(),
                          ),
                        ),
          
                      ),
                      SizedBox(height: 15.0,),
                      Text(
                        'Email',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(height: 15.0,),
                      Container(
                        height: 40.0,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'Mti@gmail.com',
                            border: OutlineInputBorder(),
                          ),
                        ),
          
                      ),
                      SizedBox(height: 15.0,),
                      Text(
                        'Phone Number',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(height: 15.0,),
                      Container(
                        height: 40.0,
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: '+2001027947480',
                            border: OutlineInputBorder(),
                          ),
                        ),
          
                      ),
                      SizedBox(height: 15.0,),
                      Text(
                        'Date of birth',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(height: 15.0,),
                      Container(
                        height: 40.0,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: '23/5/2001',
                            border: OutlineInputBorder(),
                          ),
                        ),
          
                      ),
                      SizedBox(height: 15.0,),
                      Text(
                        'Country/Region',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(height: 15.0,),
                      Container(
                        height: 40.0,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Egypt',
                            border: OutlineInputBorder(),
                          ),
                        ),
          
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90.0, right: 90.0),
                child: Row(
                  children: [
                    Container(
                      height: 50.0,
                      width: 90.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color.fromRGBO(141, 161, 116, 100.0),
                      ),
                      child: MaterialButton(
                        onPressed: (){},
                        child: Text(
                          'Edit',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(width: 30.0,),
                    Container(
                      height: 50.0,
                      width: 90.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color.fromRGBO(141, 161, 116, 100.0),
                      ),
                      child: MaterialButton(
                        onPressed: (){},
                        child: Text(
                          'Log out',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
          
                  ],
                ),
              ),
            ],
          
          ),
        ),



        );
    }
}
