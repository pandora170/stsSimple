package egovframework.com.test;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;


public class SocketTest {

	public static void main(String[] args) {
		try{
			InetAddress iAddress = InetAddress.getLocalHost();
			//System.out.println("Current IP Address:" + iAddress.getHostAddress());
            
			
			ServerSocket serverSocket = new ServerSocket(0);
            System.out.println("I'm waiting here: "+ iAddress.getHostAddress() + ":"+serverSocket.getLocalPort());            
            
            String itt = serverSocket.getInetAddress().getHostAddress();
            //System.out.println(">>t:" + itt);
            
            Socket socket = serverSocket.accept();
            System.out.println("from " + 
                socket.getInetAddress() + ":" + socket.getPort());
            
            OutputStream outputStream = socket.getOutputStream();
            PrintStream printStream = new PrintStream(outputStream);
            printStream.print("Server Message : Hello! This is Send data ~~ ");
            printStream.close();
            
            socket.close();
        }catch(IOException e){
            System.out.println(e.toString());
        }
	}
}
