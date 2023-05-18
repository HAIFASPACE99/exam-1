import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

PersonInformation(Request req){

//save names in var file 
File file =File ("bin/personinfo.json"); 

//read from file 

final Map userInfo = json.decode(file.readAsStringSync());


return Response.ok(json.encode(userInfo));

}