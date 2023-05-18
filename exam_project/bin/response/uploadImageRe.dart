import 'dart:io';
import 'dart:math';
import 'package:http_parser/http_parser.dart';

import 'package:shelf/shelf.dart';

uploadImage(Request req) async{
final body = await req.read().expand((bit) => bit).toList();
final id = Random().nextInt(99);
var user ;
 final file = File("bin/Images/$id.png");
 await file.writeAsBytes(body);
print(body);

try{
final contenttype = MediaType.parse(req.headers["Content-Type"]!);

if(contenttype.mimeType != 'image/png' && contenttype.mimeType != "image/jpeg"){

return Response.forbidden(" wrong type");
}

return Response.ok("uploding is done ");
}catch(e){

print(e);

}
}