import 'package:firebase_auth/firebase_auth.dart';
class  Authcontrollers{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<String> SignupUsers(String fullname ,String email , String password ) async{
    String res = " Some error has occured" ;
    try{
      if(fullname.isNotEmpty && email.isNotEmpty && password.isNotEmpty){
          await _auth.createUserWithEmailAndPassword(email: email, password: password);
          res = 'successFully created account';
      }else{
        res = "Please fill all the feilds";
      }
    }catch(e){
       res = e.toString();
    }
    return res ;
  }

}