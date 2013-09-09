/*
 * 0xor1 http://github.com/0xor1
 */


part of controls_and_panels;


const String PANEL = 'panel';


abstract class Panel<TBase extends Base> extends Base{


  List<TBase> children = new List<TBase>();


  void set width(String width){

    html.style.width = width;

  }


  void set height(String height){

    html.style.height = height;

  }


  void set overflow(String overflow){

    html.style.overflow = overflow;

  }


  Panel(){

    html.classes.add(PANEL);

  }


  void add(TBase base);


  void insert(int index, TBase base);


  bool remove(TBase base);


  Base removeAt(int index);


  void clear(){

    children.forEach((child){

      remove(child);

    });

  }


}