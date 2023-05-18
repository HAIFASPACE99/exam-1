import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf_hotreload/shelf_hotreload.dart';

import 'response/PersonInformation.dart';
import 'response/login.dart';
import 'routs/mainRouts.dart';
import 'response/uploadImageRe.dart';

// Configure routes.


// final router = Router()

// //end piont Image 
// ..post("/uploadImage",uploadImage)
// ..get("/personinformation/<name>",PersonInformation)
// ..post("/login/<email>/<password>",login);
//..post("/creatv",postvideo);




void main() async => withHotreload(() => createServer());


Future<HttpServer> createServer() async{

final ip = InternetAddress.anyIPv4;

//final pipline = Pipeline().addHandler(BaseRoute().handler);

 final int port = int.parse(Platform.environment["PORT"] ?? "8080");
// //serv to run the server 
final server = await serve(mainRouts().mainrouts, ip, port);
//check if serer is turn on 
print("server is on at http://${server.address.host}:${server.port}");
return server; }
 











  

