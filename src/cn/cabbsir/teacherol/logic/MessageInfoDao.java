package cn.cabbsir.teacherol.logic;

import cn.cabbsir.teacherol.entity.MessageInfo;

import java.sql.*;
import java.util.ArrayList;

public class MessageInfoDao {
    //提交留言
    public int subM(String message,String submituser){
        int ret = 0;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs =null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn= DriverManager.getConnection("jdbc:oracle:thin:@10.25.243.155:1521:orcl","cabbsir","cabbsir");
            //关闭自动提交
            conn.setAutoCommit(false);
            ps=conn.prepareStatement("INSERT INTO message(id,message,submituser) VALUES (seq_message.nextval,?,?)");
            ps.setString(1,message);
            ps.setString(2,submituser);
            ret = ps.executeUpdate();
            //提交以上sql
            conn.commit();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
            try {
                //如果失败则恢复原有数据
                conn.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
        }finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return ret;
    }

    //获取留言
    public ArrayList<MessageInfo> getM(){
        ArrayList<MessageInfo> messages = new ArrayList<MessageInfo>();
        Connection conn=null;
        Statement st=null;
        ResultSet rs=null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn= DriverManager.getConnection("jdbc:oracle:thin:@10.25.243.155:1521:orcl","cabbsir","cabbsir");
            st=conn.createStatement();
            rs=st.executeQuery("select * from message");
            while(rs.next()){
                MessageInfo message=new MessageInfo();
                message.setId(rs.getInt("id"));
                message.setMessage(rs.getString("message"));
                message.setSubmituser(rs.getString("submituser"));
                messages.add(message);
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            try {
                if(rs!=null)
                    rs.close();
                if(st!=null)
                    st.close();
                if(conn!=null)
                    conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }
        return messages;
    }
}
