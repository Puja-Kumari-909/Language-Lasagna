class Languages {
  final String imagePath;
  final String year;
  final String text;
  final String language;
  Languages(this.imagePath, this.language, this.text, this.year);
}

List<Languages> languageData = [
  Languages("assets/go.png", "GO", "Go is syntactically similar to C, but with memory safety, garbage collection, structural typing. It is often referred to as Golang because of its domain name golang.org but the proper name is Go.", "2009"),
  Languages("assets/r.png", "R", "R is an open sourse programming language and is widely used as statistical software and data analysis tool.It is the most-used data science language after SQL", "1993"),
  Languages("assets/kotlin.png", "KOTLIN", "Kotlin is a programming language widely used by Android Developers. Google announced Kotlin to be an officially supported language in Android App Development in 2017.", "2011"),
  Languages("assets/rubyonrails.png", "RUBY", "Ruby on Rails or Rails is a sever side web application framework written in Ruby under the MIT License. It was developed by David Heinemeier Hansson.", "2004"),
  Languages("assets/java.png", "JAVA", "Java is the name of an island in Indonesia and is famous for its coffee beans. Java developers used to drink coffee made from coffee beans of this island. Thus, the coffee mug with a rising steam symbol for Java", "1995"),
  Languages("assets/dart.png", "DART", "Dart is a programming language designed for client development by Google and can also be used to build server and desktop applications.", "2011"),
  Languages("assets/matlab.png", "MATLAB", "MATLAB is a programming language developed by Mathworks. It is high-performance language for technical computing.", "1984"),
  Languages("assets/csharp.png", "C#", "The name of the language is stimulated by musical notation. The syntax of C# is similar to the C-style family such as Java, C, C++", "2000"),
  Languages("assets/cpp.png", "CPP", "C++ was Originally Called The New C. C++ has influenced many other programming languages, some of which include C#, Java and even newer versions of C", "1985"),
  Languages("assets/javascript.png", "JS", "JavaScript was being developed under the name Mocha. Brandan Eich developed this new scripting language in just 10 days. It was originally named Mocha but quickly became known as LiveScript and later JavaScript.", "1995"),
  Languages("assets/python.png", "PYTHON", "Python was not created as a commercial or a professional project rather Python was a hobby project for the developer Guido van Rossum and he was a big fan of BBC’s TV Show so he named it Python!", "2001"),
];



  // const TaskTile(
  //     {this.isTrue,
  //     this.taskTitle,
  //     this.checkBoxCallBack,
  //     this.longpresscallback});