/*
 * Author:  Daniel Robinson http://github.com/0xor1
 */

part of cnp.example;

class _ActionBar extends Control{

  static const String CLASS = 'cnp-example-action-bar';
  static const int height = 45;

  final StackPanel _rootLayout = new StackPanel(Orientation.HORIZONTAL);

  _ActionBar(){
    _actionBarStyle.insert();
    addClass(CLASS);
    _arrangeHtml();
    _hookUpEvents();
    html.append(_rootLayout.html);
  }

  void _arrangeHtml(){

  }

  void _hookUpEvents(){

  }

  static final Style _actionBarStyle = new Style('''
    
    .$CLASS
    {
      width: 100%;
      height: ${height}px;
      background: #eee;
    }

  ''');
}