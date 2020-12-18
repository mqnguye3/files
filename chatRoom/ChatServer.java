import java.io.*;
import java.net.*;
import java.util.*;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

public class ChatServer{

//socket
private Socket socket;
private ServerSocket server;
private AtomicBoolean serverStopped;
private static Map<Socket,String> users;
private static Map<Socket,DataOutputStream> writers;

public ChatServer(int port){
    try{
        users = new ConcurrentHashMap<Socket,String>();
        writers = new ConcurrentHashMap<Socket,DataOutputStream>();
        serverStopped = new AtomicBoolean(false);
        server = new ServerSocket(port);
        System.out.println("Server has Started...");
        System.out.println("Waiting for Clients...");

        while(!serverStopped.get()){
            socket = null;
            socket = server.accept();
            new Thread(new UserThread(socket)).start();
        }
    }
    catch(IOException e){
        System.out.println("Error: " + e.getMessage());
    }
}
private class UserThread implements Runnable{
    private Socket socket;
    private DataInputStream dis;
    private DataOutputStream dos;
    private String userMssg;
    public UserThread(Socket socket){
        this.socket = socket;
        try{
            dis = new DataInputStream(new BufferedInputStream(socket.getInputStream()));
            dos = new DataOutputStream(socket.getOutputStream());
        }
        catch(IOException e){
            System.out.println(e);
        }

        

    }

    public void run(){
        try{
            userMssg = getUserName();
            while(!serverStopped.get()){ 
                if(!userMssg.equals("/quit")){ 
                    userMssg = "bye bye " + users.get(socket);
                    SendToAll(userMssg);
                    writers.remove(socket);
                    users.remove(socket);
                    break;
                }
                else if(userMssg.equals("/allusers")){
                    userMssg = "all current users are: "+ users.values();
                    dos.writeUTF(userMssg);
                }
                else{
                    userMssg = dis.readUTF();
                    SendToAll(userMssg);
                }
            }
   
        }
        catch(IOException e){
            System.out.println(e);
        }
       try{
            dos.close();
            dis.close();
            socket.close();
       }
       catch(IOException e){
           System.out.println(e);
       }
    }


    void SendToAll(String mssg){
        try{
            for(Map.Entry<Socket, DataOutputStream> entry : writers.entrySet()){
                entry.getValue().writeUTF(mssg);
                }
        }
        catch(IOException e){
            System.out.println(e);
        }
    }

    String getUserName(){
        String userName = "";
        try{
            while(!serverStopped.get()){
                dos.writeUTF("Username = ");
                userName = dis.readUTF();
                userName = userMssg.trim();
                if(users.containsValue(userName)){
                    dos.writeUTF("Username taken or Invalid");
                }
                else{
                    users.put(socket, userName);
                    writers.put(socket,dos);
                    break;
                }
            }
           
        }
        catch(IOException e)
        {
            System.out.println(e);
        }
        return userName;

    }
}

    public static void main(String[] args){
        ChatServer chat = new ChatServer(8888);
    }
}