package cn.cabbsir.teacherol.logic;

import cn.cabbsir.teacherol.entity.UserInfo;

import java.sql.*;
import java.util.ArrayList;

public class UserInfoDao {
    //管理员姓名查找教师
    public UserInfo SelectTName(String name){
        UserInfo user=null;
        //JDBC
        Connection conn=null;
        PreparedStatement st=null;
        ResultSet rs = null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn=DriverManager.getConnection("jdbc:oracle:thin:@10.25.243.155:1521:orcl","cabbsir","cabbsir");
            //为了减少编译次数，要将变量换为?
            st=conn.prepareStatement("select finishtimes,username,password,email,area,teachingarea,teachingage from teacher WHERE username LIKE ?");
            //SetType(No.,Values);
            st.setString(1,"%"+name+"%");
            //执行sql语句
            rs=st.executeQuery();
            if(rs.next()){
                user=new UserInfo();
                user.setTeachingAge(rs.getInt("teachingage"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
                user.setArea(rs.getString("area"));
                user.setFinishTimes(rs.getInt("finishtimes"));
                user.setTeachingArea(rs.getString("teachingarea"));
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
        return user;
    }
    //管理员姓名查找学生
    public UserInfo SelectSName(String name){
        UserInfo user=null;
        //JDBC
        Connection conn=null;
        PreparedStatement st=null;
        ResultSet rs = null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn=DriverManager.getConnection("jdbc:oracle:thin:@10.25.243.155:1521:orcl","cabbsir","cabbsir");
            //为了减少编译次数，要将变量换为?
            st=conn.prepareStatement("select submitimes,username,password,email,area,grade from student WHERE username LIKE ?");
            //SetType(No.,Values);
            st.setString(1,"%"+name+"%");
            //执行sql语句
            rs=st.executeQuery();
            if(rs.next()){
                user=new UserInfo();
                user.setSubTimes(rs.getInt("submitimes"));
                user.setGrade(rs.getInt("grade"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
                user.setArea(rs.getString("area"));
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
        return user;

    }
    //管理员查询所有教师
    public ArrayList<UserInfo> SelectTAll(){
        ArrayList<UserInfo> users=new ArrayList<UserInfo>();
        Connection conn=null;
        Statement st=null;
        ResultSet rs=null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn=DriverManager.getConnection("jdbc:oracle:thin:@10.25.243.155:1521:orcl","cabbsir","cabbsir");
            st=conn.createStatement();
            rs=st.executeQuery("select username,password,email,area,teachingAge,teachingarea from teacher");
            while(rs.next()){
                UserInfo user=new UserInfo();
                user.setTeachingArea(rs.getString("teachingarea"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
                user.setArea(rs.getString("area"));
                user.setTeachingAge(rs.getInt("teachingage"));
                users.add(user);
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
        return users;
    }
    //管理员查询所有学生
    public ArrayList<UserInfo> SelectSAll(){
        ArrayList<UserInfo> users=new ArrayList<UserInfo>();
        Connection conn=null;
        Statement st=null;
        ResultSet rs=null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn=DriverManager.getConnection("jdbc:oracle:thin:@10.25.243.155:1521:orcl","cabbsir","cabbsir");
            st=conn.createStatement();
            rs=st.executeQuery("select username,password,email,grade from student");
            while(rs.next()){
                UserInfo user=new UserInfo();
                user.setGrade(rs.getInt("grade"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
                users.add(user);
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
        return users;
    }
    //更改管理员信息
    public int UpdateAdmin(String username,String password){
        int ret = 0;
        Connection conn = null;
        PreparedStatement ps= null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn=DriverManager.getConnection("jdbc:oracle:thin:@10.25.243.155:1521:orcl","cabbsir","cabbsir");
            conn.setAutoCommit(false);
            ps=conn.prepareStatement("UPDATE admin SET password=?,username=? WHERE id=1");
            ps.setString(1,password);
            ps.setString(2,username);
            ret=ps.executeUpdate();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
            try {
                conn.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
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
    //学生更改学生信息
    public int UpdateStudent(String username,String password,String email,String area,String grade){
        int ret = 0;
        Connection conn = null;
        PreparedStatement ps= null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn=DriverManager.getConnection("jdbc:oracle:thin:@10.25.243.155:1521:orcl","cabbsir","cabbsir");
            conn.setAutoCommit(false);
            ps=conn.prepareStatement("UPDATE student SET password=?,email=?,area=?,grade=? WHERE username=?");
            ps.setString(1,password);
            ps.setString(2,email);
            ps.setString(3,area);
            ps.setString(4,grade);
            ps.setString(5,username);
            ret=ps.executeUpdate();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
            try {
                conn.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
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
    //教师更改教师信息
    public int UpdateTeacher(String username,String password,String email,String area,String teachingAge,String teachingArea){
        int ret = 0;
        Connection conn = null;
        PreparedStatement ps= null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn=DriverManager.getConnection("jdbc:oracle:thin:@10.25.243.155:1521:orcl","cabbsir","cabbsir");
            conn.setAutoCommit(false);
            ps=conn.prepareStatement("UPDATE teacher SET password=?,email=?,area=?,teachingAge=?,teachingArea=? WHERE username=?");
            ps.setString(1,password);
            ps.setString(2,email);
            ps.setString(3,area);
            ps.setString(4,teachingAge);
            ps.setString(5,teachingArea);
            ps.setString(6,username);
            ret=ps.executeUpdate();
            conn.commit();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
            try {
                conn.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
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
    //判断注册用户名是否重复
    public int judgeUserName(String name){
        int ret=0;
        Connection conn = null;
        PreparedStatement ps= null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn=DriverManager.getConnection("jdbc:oracle:thin:@10.25.243.155:1521:orcl","cabbsir","cabbsir");
            conn.setAutoCommit(false);
            ps=conn.prepareStatement("select * from student where username=?");
            ps.setString(1,name);
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
    //教师注册录入数据库
    public int registerT(String username,String password,String email,String teachingAge,String teachingArea,String area){
        int ret = 0;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs =null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn=DriverManager.getConnection("jdbc:oracle:thin:@10.25.243.155:1521:orcl","cabbsir","cabbsir");
            //关闭自动提交
            conn.setAutoCommit(false);
            ps=conn.prepareStatement("INSERT INTO teacher(id,username,password,email,teachingage,teachingarea,area) VALUES (seq_teacher.nextval,?,?,?,?,?,?)");
            ps.setString(1,username);
            ps.setString(2,password);
            ps.setString(3,email);
            ps.setString(4,teachingAge);
            ps.setString(5,teachingArea);
            ps.setString(6,area);
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
    //学生注册录入数据库
    public int registerS(String username,String password,String email,String grade,String area){
        int ret = 0;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs =null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn=DriverManager.getConnection("jdbc:oracle:thin:@10.25.243.155:1521:orcl","cabbsir","cabbsir");
            //关闭自动提交
            conn.setAutoCommit(false);
            ps=conn.prepareStatement("INSERT INTO student(id,username,password,email,grade,area) VALUES (seq_student.nextval,?,?,?,?,?)");
            ps.setString(1,username);
            ps.setString(2,password);
            ps.setString(3,email);
            ps.setString(4,grade);
            ps.setString(5,area);
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
    //登录时验证教师信息
    public UserInfo loginTDao(String username, String password) {
        UserInfo user = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection("jdbc:oracle:thin:@10.25.243.155:1521:orcl", "cabbsir", "cabbsir");
            conn.setAutoCommit(false);
            ps = conn.prepareStatement("SELECT * FROM teacher WHERE username=? and password=?");
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            if (rs.next()) {
                user = new UserInfo();
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
                user.setTeachingAge(rs.getInt("teachingage"));
                user.setTeachingArea(rs.getString("teachingarea"));
                user.setArea(rs.getString("area"));
                user.setFinishTimes(rs.getInt("finishtimes"));
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
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
        return user;
    }

    //登录时验证学生信息
    public UserInfo loginSDao(String username, String password) {
        UserInfo user = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection("jdbc:oracle:thin:@10.25.243.155:1521:orcl", "cabbsir", "cabbsir");
            conn.setAutoCommit(false);
            ps = conn.prepareStatement("SELECT * FROM student WHERE username=? and password=?");
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            if (rs.next()) {
                user = new UserInfo();
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
                user.setGrade(rs.getInt("grade"));
                user.setSubTimes(rs.getInt("submitimes"));
                user.setArea(rs.getString("area"));
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
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
        return user;
    }

    //登陆界面验证管理员信息
    public int loginADao(String username, String password) {
        int ret = 0;
        Connection conn = null;
        PreparedStatement ps = null;
        //声明jdbc驱动
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection("jdbc:oracle:thin:@10.25.243.155:1521:orcl", "cabbsir", "cabbsir");
            //关闭程序的自动提交数据库功能
            conn.setAutoCommit(false);
            //sql语句
            ps = conn.prepareStatement("SELECT * FROM ADMIN WHERE USERNAME=? and PASSWORD=?");
            //设置问号内容
            ps.setString(1, username);
            ps.setString(2, password);
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
        } finally {
            try {
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