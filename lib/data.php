<?php

$db = mysqli_connect('localhost','localconnect','localserver');
if (!$db)
{
 echo 'Connection State is successful'
}
$username = $_POST['$username'];
$password = $_POST['$PASSWORD'];
$sql = SELECT * FROM users WHERE username = '"$username"' and password = '"$password"';
$result = mysqli_query ($db, $sql);
$count = mysqli_num_rows($result);
//To show it database connection is successful
if($count >= 1)
{
echo 'Connection  to database is successful'
}
else
{
echo 'Connection error'
}
?>
Future<Model?> getModel(String name, String jobTitle) async {
  // ignore: non_constant_identifier_names
  String Url = "https://reqres.in//api/users";
  final response = await http.post(Uri.parse(Url), body: {
    "name": name,
    "job": jobTitle,
  });
  // ignore: unrelated_type_equality_checks
  if (response == 201) {
    final String myresponse = response.body;
    return modelFromJson(myresponse);
  } else {
    return null;
  }
}

Future<Model?> getMyModel(String name, String jobTitle) async {
  // ignore: non_constant_identifier_names
  String Url = "https://reqres.in//api/users";
  final response = await http.post(Uri.parse(Url), body: {
    "name": name,
    "job": jobTitle,
  });
  // ignore: unrelated_type_equality_checks
  if (response == 201) {
    final String myresponse = response.body;
    return modelFromJson(myresponse);
  } else {
    return null;
  }
}

Future<Model?> myModel(String name, String jobTitle) async {
  // ignore: non_constant_identifier_names
  String Url = "https://reqres.in//api/users";
  final response = await http.post(Uri.parse(Url), body: {
    "name": name,
    "job": jobTitle,
  });
  // ignore: unrelated_type_equality_checks
  if (response == 201) {
    final String myresponse = response.body;
    return modelFromJson(myresponse);
  } else {
    return null;
  }
}

Future<Model?> seyiModel(String name, String jobTitle) async {
  // ignore: non_constant_identifier_names
  String Url = "https://reqres.in//api/users";
  final response = await http.post(Uri.parse(Url), body: {
    "name": name,
    "job": jobTitle,
  });
  // ignore: unrelated_type_equality_checks
  if (response == 201) {
    final String myresponse = response.body;
    return modelFromJson(myresponse);
  } else {
    return null;
  }
}

Future getFireData() async {
  var response = await http.get(Uri.https("console.firebase.google.com",
      "project/ibolo-mfb-mobile-app/firestore/data/~2F"));
  var jsonData = jsonDecode(response.body);
  List user = [];
  for (var u in jsonData) {
    Texts result =
        Texts(u["id"], u["content"], u["amount"], u["url"], u["sub"]);
    user.add(result);
    // ignore: avoid_print
    print(user.length);
  }
  return user;
}

class Texts {
  Texts(u, u2, u3, u4, u5);
}
