JAVAFILES = java/com/jlox/Lox.java java/com/jlox/TokenType.java java/com/jlox/Token.java java/com/jlox/Scanner.java 
TOOLFILES = java/com/tool/GenerateAst.java

all:
	java -jar google-java-format-1.17.0-all-deps.jar --replace $(JAVAFILES)
	javac $(JAVAFILES) -d class
	java -classpath ./class com.jlox.Lox

tool:
	java -jar /usr/bin/google-java-format.jar --replace $(TOOLFILES)
	javac $(TOOLFILES) -d class
	java -classpath ./class com.tool.GenerateAst java/com/jlox

