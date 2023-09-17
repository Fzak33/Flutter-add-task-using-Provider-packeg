class DataTitle{
  String title;
  bool isChecked;

  DataTitle({required this.title, this.isChecked=false});

  void doneChange(){
    isChecked = !isChecked;
  }
}