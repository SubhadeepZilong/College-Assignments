import java.net.*;
import java.io.*;
import java.util.*;
public class DateServer
{

public static void main(String[] args) {  
try{      
Socket s=new Socket("localhost",6666);  
DataOutputStream dout=new DataOutputStream(s.getOutputStream());  
//dout.writeUTF("Server Date: " + (new Date()).toString() + "\n");  
dout.writeInt(65);
dout.flush();  
dout.close();  
s.close();  
}catch(Exception e){System.out.println(e);}  
}  
}  