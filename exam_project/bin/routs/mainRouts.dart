import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../response/PersonInformation.dart';
import '../response/login.dart';
import '../response/uploadImageRe.dart';

class mainRouts{


Router get mainrouts{

final route = Router()

..post("/uploadImage",uploadImage)
..post("/personinformation",PersonInformation)
..post("/login",login);



return route;
  
}




}