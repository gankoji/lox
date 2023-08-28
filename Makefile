JAVAFILES = java/com/jlox/*.java
TOOLFILES = java/com/tool/GenerateAst.java

all:
	java -jar /usr/bin/google-java-format.jar --replace $(JAVAFILES)
	javac $(JAVAFILES) -d class
	java -classpath ./class com.jlox.Lox

tool:
	java -jar /usr/bin/google-java-format.jar --replace $(TOOLFILES)
	javac $(TOOLFILES) -d class
	java -classpath ./class com.tool.GenerateAst java/com/jlox

