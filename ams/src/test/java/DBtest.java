import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;

public class DBtest {
    public static void main(String []args){
//        System.out.println("hello");
        Connection conn=null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://127.0.0.1:3306/amsdb?useSSL=false&serverTimezone=UTC";
            String username = "root";
            String password = "fhx.1234";
            conn=DriverManager.getConnection(url,username,password);
            if(conn!=null){
                System.out.println("ok");
            }else{
                System.out.println("no");
            }
            System.out.println("hello");
        }catch (Exception e){

        }
    }
}
