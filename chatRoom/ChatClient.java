import java.io.*;
import java.net.*;


public class ChatClient{
    private Socket socket;
    private DataInputStream reader_dis;
    private DataOutputStream writer_dos;
    private DataInputStream input;
    private String mssg = "";
    private String incoming_mssg = "";
    private boolean stopped = false;

    public ChatClient(String address, int port){
        try{
            socket = new Socket(address,port);
            System.out.println("connected");
            reader_dis = new DataInputStream(new BufferedInputStream(socket.getInputStream()));
            writer_dos = new DataOutputStream(socket.getOutputStream());
            input = new DataInputStream(System.in);

            new Thread(new reader()).start();
            new Thread(new writer()).start();
            
        }
        catch(IOException e){
            System.out.println(e);
        }
    }



    private class reader implements Runnable{
        public void run(){
           while(stopped == false){
               try{
                   incoming_mssg = reader_dis.readUTF();
                   System.out.println(incoming_mssg);
               }
           
            catch(IOException e){
                System.out.println(e);
            }
        }
        }

    }

    private class writer implements Runnable{
        public void run(){
            try{
                while(!mssg.equals("/quit")){
                    mssg = input.readLine();
                    writer_dos.writeUTF(mssg);
                }
            }
            catch(IOException e){
                System.out.println(e);
            }
            try{
                stopped = true;
                socket.close();
                reader_dis.close();
                writer_dos.close();
                input.close();
                
            }
            catch(IOException e){
                System.out.println(e);
            }
        }
    }

    public static void main(String[] args){
        ChatClient client = new ChatClient("localhost",8888);
    }
}