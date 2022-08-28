import 'package:flutter/material.dart';
import 'package:multi_vendor_app/controllers/auth_controllers/auth_controller.dart';

class LandingCustomerScreen extends StatefulWidget {
  const LandingCustomerScreen({Key? key}) : super(key: key);

  @override
  State<LandingCustomerScreen> createState() => _LandingCustomerScreenState();
}

class _LandingCustomerScreenState extends State<LandingCustomerScreen> {
  final Authcontrollers _authcontroller = Authcontrollers();
  final TextEditingController  _fullNameController = TextEditingController();
  final TextEditingController _emailEditingController = TextEditingController();
  final TextEditingController _passwordEditingController = TextEditingController();
  bool textvisibility = true ;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.1,
                      ),
                      Text(
                        "Create Customers Account",
                        style: TextStyle(
                          // fontFamily: Aboreto-Regular,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.person,
                            size: 35,
                            color: Colors.cyan,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.05,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.cyan,
                      ),
                      SizedBox(width: 30,),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color : Colors.cyan,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15.0),
                                bottomRight: Radius.circular(15.0),
                              )
                            ),
                            child: IconButton(
                              highlightColor: Colors.cyan.shade100,
                              iconSize: 50.0,
                              onPressed: () {},
                              icon: Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color : Colors.cyan,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15.0),
                                  topLeft: Radius.circular(15.0),
                                )
                            ),
                          child:IconButton(
                            //color: Colors.cyan,
                            highlightColor: Colors.cyan.shade100,
                            iconSize: 50.0,
                            onPressed: () {},
                            icon: Icon(Icons.photo ,
                              color: Colors.white,),
                          ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(children: [
                      TextFormField(
                        controller: _fullNameController ,
                        decoration: InputDecoration(
                          labelText: "Full Name" ,
                          hintText: "Enter your full name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        controller: _emailEditingController,
                        decoration: InputDecoration(
                          labelText: "Email" ,
                          hintText: "Enter your email address",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),

                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        controller: _passwordEditingController,
                        obscureText: textvisibility,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(onPressed: (){
                            setState(() {
                              textvisibility = !textvisibility ;
                            });
                          }, icon: textvisibility ? Icon(Icons.visibility): Icon(Icons.visibility_off),
                          ),
                          labelText: "Password" ,
                          hintText: "Enter your password here",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),

                      ),

                     SizedBox(
                       height: 15.0,
                     ),
                     GestureDetector(
                       onTap: (){
                         _authcontroller.SignupUsers(_fullNameController.text, _emailEditingController.text, _passwordEditingController.text);
                       },
                       child: Container(
                         width: MediaQuery.of(context).size.width,
                         height: 50,
                         decoration: BoxDecoration(
                           color: Colors.cyan ,
                           borderRadius: BorderRadius.circular(15.0),
                         ),
                         child: Center(
                           child: Text('Sign Up ' , style: TextStyle(
                             color: Colors.white ,
                             fontSize: 22 ,
                             fontWeight: FontWeight.bold
                           ),),
                         ),
                       ),
                     ),
                      SizedBox(height: 3,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                                Text("Already have an account" , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 18),),
                               TextButton(onPressed: (){}, child: Text("Login" ,style: TextStyle(fontSize: 15),),),
                        ],
                      ),
                      Text("OR" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Create Seller's Account" , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 18),),
                          TextButton(onPressed: (){}, child: Text("Signup" , style: TextStyle(fontSize: 15),)),
                        ],
                      )
                    ],),

                  )
                ],
              ),
            ),
          ),
        ),
    );
  }
}
