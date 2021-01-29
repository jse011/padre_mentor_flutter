import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/app/page/familia/familia_presenter.dart';
import 'package:padre_mentor/src/domain/entities/hijos_ui.dart';

class FamiliaController extends Controller{

  FamiliaPresenter presenter;

  HijosUi hijoSelected = HijosUi(foto: "https://i1.wp.com/socialmediatica.com/wp-content/uploads/2019/01/MyHealthWatcher-perfil.png?ssl=1");

  FamiliaController():presenter = FamiliaPresenter();

  @override
  void initListeners() {
    // TODO: implement initListeners
  }


}