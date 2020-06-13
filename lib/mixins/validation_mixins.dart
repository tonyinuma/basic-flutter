class ValidationMixins {
  String validateEmail(String value){
    if(!value.contains('@'))
      return "email wrong"; 
      
    return null;
  }
  String validatePassword(String value){
    if(value.length < 6)
      return "password wrong";

    return null;
  }
}