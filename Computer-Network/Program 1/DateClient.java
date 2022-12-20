import java.io.*;
import java.net.*;
public class DateClient
{
    public static void main(String args[])
{
       try
	{  
		Socket s=new Socket("localhost",6666);  
		
		DataInputStream dis=new DataInputStream(s.getInputStream());  
		//String  str=(String)dis.readUTF();  
		int x=dis.readInt();
		x=x+10;
		System.out.println("message= "+x);  
		s.close();  
	}catch(Exception e){System.out.println(e);}  
	}  
}  

