
import 'package:mobx/mobx.dart';

part 'contador_controller.g.dart';

class ContadorController = ContadorControllerBase with _$ContadorController;

abstract class ContadorControllerBase with Store {

  @observable
  var contador = 0;

  @observable
  var testeReaction = 'Bruno';

  @action
  void increment(){
    contador++;
    testeReaction = 'Bruno Rafael';
  }
  
}