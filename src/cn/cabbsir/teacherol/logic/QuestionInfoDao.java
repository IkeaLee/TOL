package cn.cabbsir.teacherol.logic;

import cn.cabbsir.teacherol.entity.QuestionInfo;
import java.sql.*;
import java.util.ArrayList;

public class QuestionInfoDao {
    //查询已解决试题数量
    public int SelectAnswered(){
        int ret=0;
        Connection conn = null;
        PreparedStatement ps= null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn=DriverManager.getConnection("jdbc:oracle:thin:@10.25.243.155:1521:orcl","cabbsir","cabbsir");
            conn.setAutoCommit(false);
            ps=conn.prepareStatement("select COUNT(*) FROM question where status=?");
            ps.setString(1,"y");
            ret=ps.executeUpdate();
            conn.commit();//提交以上sql
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                if(ps!=null)
                    ps.close();
                if(conn!=null)
                    conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }
        return ret;
    }
    //查询试题
    public QuestionInfo SelectId(String id){
        QuestionInfo question=null;
        //JDBC
        Connection conn=null;
        PreparedStatement st=null;
        ResultSet rs = null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn=DriverManager.getConnection("jdbc:oracle:thin:@10.25.243.155:1521:orcl","cabbsir","cabbsir");
            //为了减少编译次数，要将变量换为?
            st=conn.prepareStatement("select * from question WHERE id=?");
            //SetType(No.,Values);
            st.setString(1,id);
            //执行sql语句
            rs=st.executeQuery();
            if(rs.next()){
                question=new QuestionInfo();
                question.setSubmitUser(rs.getString("submituser"));
                question.setContent(rs.getString("content"));
                question.setAnswerUser(rs.getString("answeruser"));
                question.setAnswer(rs.getString("answer"));
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
        return question;

    }
    //增加提交次数
    public void SubtimeAdd(String name){
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn=DriverManager.getConnection("jdbc:oracle:thin:@10.25.243.155:1521:orcl","cabbsir","cabbsir");
            ps=conn.prepareStatement("UPDATE student SET submitimes=submitimes+1 WHERE username=?");
            ps.setString(1,name);
            rs=ps.executeQuery();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                if(rs!=null)
                    rs.close();
                if(ps!=null)
                    ps.close();
                if(conn!=null)
                    conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }
    }
    //学生已回答试题提取
    public ArrayList<QuestionInfo> SelectSY(String name){
        ArrayList<QuestionInfo> questions=new ArrayList<QuestionInfo>();
        //JDBC
        Connection conn=null;
        PreparedStatement st=null;
        ResultSet rs = null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn=DriverManager.getConnection("jdbc:oracle:thin:@10.25.243.155:1521:orcl","cabbsir","cabbsir");
            //为了减少编译次数，要将变量换为?
            st=conn.prepareStatement("select id,content,answeruser,gradeage,subject FROM question WHERE submituser=? AND status=?");
            //SetType(No.,Values);
            st.setString(1,name);
            st.setString(2,"y");
            //执行sql语句
            rs=st.executeQuery();
            while(rs.next()){
                QuestionInfo question=new QuestionInfo();
                question.setGradeAge(rs.getInt("gradeage"));
                question.setSubject(rs.getString("subject"));
                question.setContent(rs.getString("content"));
                question.setId(rs.getInt("id"));
                question.setAnswerUser(rs.getString("answeruser"));
                questions.add(question);
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
    //学生未回答试题提取
    public ArrayList<QuestionInfo> SelectSN(String name){
        ArrayList<QuestionInfo> questions=new ArrayList<QuestionInfo>();
        //JDBC
        Connection conn=null;
        PreparedStatement st=null;
        ResultSet rs = null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn=DriverManager.getConnection("jdbc:oracle:thin:@10.25.243.155:1521:orcl","cabbsir","cabbsir");
            //为了减少编译次数，要将变量换为?
            st=conn.prepareStatement("select id,answeruser,gradeage,subject FROM question WHERE submituser=? AND status=?");
            //SetType(No.,Values);
            st.setString(1,name);
            st.setString(2,"n");
            //执行sql语句
            rs=st.executeQuery();
            while(rs.next()){
                QuestionInfo question=new QuestionInfo();
                question.setGradeAge(rs.getInt("gradeage"));
                question.setSubject(rs.getString("subject"));
                question.setId(rs.getInt("id"));
                question.setAnswerUser(rs.getString("answeruser"));
                questions.add(question);
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
