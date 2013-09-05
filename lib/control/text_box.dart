/*
 * 0xor1  http://github.com/0xor1
 */


part of controls_and_panels;


const String TEXT_BOX = 'text-box';


class TextBox extends Control{


  InputElement _inputElement = new InputElement(type:'text');


  String get value => _inputElement.value;


  void set value (String str){

    _inputElement.value = str;

  }


  String get placeholder => _inputElement.placeholder;


  void set placeholder (String str){

    if(str == null){

      str = '';

    }

    _inputElement.placeholder = str;

  }


  TextBox([String ph]){

    _insertStyle(_textBoxStyle);

    _html
      ..children.add(_inputElement)
      ..classes.add(TEXT_BOX);
    _inputElement
      ..onBlur.listen(blur)
      ..onFocus.listen(focus);

    placeholder = ph;

  }


}



final Style _textBoxStyle = new Style('''

  .$BASE.$CONTROL.$TEXT_BOX > input
  {
    margin: 0;
    border: 1px solid #888;
    padding: 5px;
  }

''');