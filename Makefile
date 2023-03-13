JAVAFILES = java/com/jlox/Lox.java java/com/jlox/TokenType.java java/com/jlox/Token.java java/com/jlox/Scanner.java

all:
	javac $(JAVAFILES) -d class
	java -classpath ./class com.jlox.Lox