package cn.cabbsir.teacherol.logic;

import cn.cabbsir.teacherol.entity.UserInfo;

import java.sql.*;

public class UserInfoDao {
    //登录时验证教师信息
    public UserInfo loginTDao(String username, String password){
        UserInfo user = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection("jdbc:oracle:thin:@10.25.243.155:1521:orcl","cabbsir","cabbsir");
            conn.setAutoCommit(false);
            ps = conn.prepareStatement("SELECT FROM teacher WHERE username=? and password=?");
            ps.setString(1,username);
            ps.setString(2,password);
            rs = ps.executeQuery();
            if(rs.next()){
                user = new UserInfo();
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
                user.setTeachingAge(rs.getInt("teachingage"));
                user.setTeachingArea(rs.getString("teachingarea"));
                user.setArea(rs.getString("area"));
                user.setFinishTimes(rs.getInt("finishtimes"));
                user.setScore(rs.getInt("score"));
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            try{
                if(rs!=null){
                    rs.close();
                }
                if(ps!=null){
                    ps.close();
                }
                if(conn!=null){
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return user;
    }
    //登录时验证学生信息
        public UserInfo loginSDao(String username, String password){
            UserInfo user = null;
            Connection conn = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                conn = DriverManager.getConnection("jdbc:oracle:thin:@10.25.243.155:1521:orcl","cabbsir","cabbsir");
                conn.setAutoCommit(false);
                ps = conn.prepareStatement("SELECT * FROM student WHERE username=? and password=?");
                ps.setString(1,username);
                ps.setString(2,password);
                rs = ps.executeQuery();
                if(rs.next()){
                    user = new UserInfo();
                    user.setId(rs.getInt("id"));
                    user.setUsername(rs.getString("username"));
                    user.setPassword(rs.getString("password"));
                    user.setEmail(rs.getString("email"));
                    user.setGrade(rs.getInt("grade"));
                    user.setSubTimes(rs.getInt("submitimes"));
                    user.setArea(rs.getString("area"));
                    user.setSignTimes(rs.getInt("signtimes"));
                    user.setScore(rs.getInt("score"));
                    user.setVip(rs.getString("vip"));
                }
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }finally{
                try{
                    if(rs!=null){
                        rs.close();
                    }
                    if(ps!=null){
                        ps.close();
                    }
                    if(conn!=null){
                        conn.close();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            return user;
        }
        //登陆界面验证管理员信息
        public int loginADao(String username,String password){
            int ret = 0;
            Connection conn = null;
            PreparedStatement ps = null;
            //声明jdbc驱动
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                conn= DriverManager.getConnection("jdbc:oracle:thin:@10.25.243.155:1521:orcl","cabbsir","cabbsir");
                //关闭程序的自动提交数据库功能
                conn.setAutoCommit(false);
                //sql语句
                ps=conn.prepareStatement("SELECT * FROM ADMIN WHERE USERNAME=? and PASSWORD=?");
                //设置问号内容
                ps.setString(1,username);
                ps.setString(2,password);
                //查询结果返回ret
                ret = ps.executeUpdate();
                //sql提交
                conn.commit();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
                //不成功回滚到之前状态
                try {
                    conn.rollback();
                } catch (SQLException e1) {
                    e1.printStackTrace();
                }
            }finally{
                try{
                    if(ps!=null){
                        ps.close();
                    }
                    if(conn!=null){
                        conn.close();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            return ret;
        }

    public int registerUsername(String username){
        int ret = 0;
        Connection conn = null;
        PreparedStatement ps = null;
        //声明jdbc驱动
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn= DriverManager.getConnection("jdbc:oracle:thin@10.25.243.155:1521:orcl","cabbsir","cabbsir");
            //关闭程序的自动提交数据库功能
            conn.setAutoCommit(false);
            //sql语句
            ps=conn.prepareStatement("SELECT * FROM STUDENT,TEACHER WHERE USERNAME=?");
            //设置问号内容
            ps.setString(1,username);
            //查询结果返回ret
            ret = ps.executeUpdate();
            //sql提交
            conn.commit();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
            //不成功回滚到之前状态
            try {
                conn.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
        }finally{
            try{
                if(ps!=null){
                    ps.close();
                }
                if(conn!=null){
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    return ret;
    }
}
