class Languages {
  final String imagePath;
  final String year;
  final String text;
  final String language;
  Languages(this.imagePath, this.language, this.text, this.year);
}

List<Languages> languageData = [
  Languages('/assets/go.png', "GO", "some details about cpp", "2001"),
  Languages('/assets/r.png', "R", "some details about cpp", "2001"),
  Languages('/assets/kotlin.png', "KOTLIN", "some details about cpp", "2001"),
  Languages(
      '/assets/rubyonrails.png', "RUBY", "some details about cpp", "2001"),
  Languages('/assets/java.png', "JAVA", "some details about cpp", "2001"),
  Languages('/assets/dart.png', "DART", "some details about cpp", "2001"),
  Languages('/assets/matlab.png', "MATLAB", "some details about cpp", "2001"),
  Languages('/assets/csharp.png', "C#", "some details about cpp", "2001"),
  Languages('/assets/cpp.png', "CPP", "some details about cpp", "2001"),
  Languages('/assets/javascript.png', "JAVA-SCRIPT", "some details about cpp",
      "2001"),
  Languages('/assets/python.png', "PYTHON", "some details about cpp", "2001"),
];



  // const TaskTile(
  //     {this.isTrue,
  //     this.taskTitle,
  //     this.checkBoxCallBack,
  //     this.longpresscallback});