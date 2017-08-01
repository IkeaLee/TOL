package cn.cabbsir.teacherol.logic;

import cn.cabbsir.teacherol.entity.QuestionInfo;

import java.sql.*;
import java.util.ArrayList;

public class QuestionInfoDao {
    //学生已回答试题提取

    //学生未回答试题提取
    public QuestionInfo SelectSN(String name){
        String n="n";
        QuestionInfo questions = null;
        //JDBC
        Connection conn=null;
        PreparedStatement st=null;
        ResultSet rs = null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn=DriverManager.getConnection("jdbc:oracle:thin:@10.25.243.155:1521:orcl","cabbsir","cabbsir");
            //为了减少编译次数，要将变量换为?
            st=conn.prepareStatement("SELECT * FROM question WHERE submituser=? AND status=?");
            //SetType(No.,Values);
            st.setString(1,name);
            st.setString(2,n);
            //执行sql语句
            rs=st.executeQuery();
            if(rs.next()){
                QuestionInfo question=new QuestionInfo();
                question.setGradeAge(rs.getInt("gradeage"));
                question.setAnswerUser(rs.getString("answeruser"));
                question.setContent(rs.getString("content"));
                question.setId(rs.getInt("id"));
                question.setSubject(rs.getString("subject"));
            }
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally{
            try {
                if(rs!=null)
                    st.close();
                if(st!=null)
                    st.close();
                if(conn!=null)
                    conn.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }
        return questions;

    }
    //试题存储
    public int InsertQuestion(String content,String submituser,int gradeage,String subject){
        int ret = 0;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs =null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn= DriverManager.getConnection("jdbc:oracle:thin:@10.25.243.155:1521:orcl","cabbsir","cabbsir");
            //关闭自动提交
            conn.setAutoCommit(false);
            ps=conn.prepareStatement("INSERT INTO question(id,content,submituser,gradeage,subject) VALUES (seq_question.nextval,?,?,?,?)");
            ps.setString(1,content);
            ps.setString(2,submituser);
            ps.setInt(3,gradeage);
            ps.setString(4,subject);
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
}
