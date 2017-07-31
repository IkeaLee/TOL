package cn.cabbsir.teacherol.logic;

import cn.cabbsir.teacherol.entity.UserInfo;

import java.sql.*;

public class UserInfoDao {
    //判断注册用户名是否重复
    public int judgeUserName(String name){
        int ret=0;
        Connection conn = null;
        PreparedStatement ps= null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn=DriverManager.getConnection("jdbc:oracle:thin:@10.25.243.155:1521:orcl","cabbsir","cabbsir");
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
            ps=conn.prepareStatement("INSERT INTO teacher(id,username,password,email,teachingage,teachingarea,area) VALUES (seq_student.nextval,?,?,?,?,?,?)");
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
                user.setScore(rs.getInt("score"));
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
                user.setSignTimes(rs.getInt("signtimes"));
                user.setScore(rs.getInt("score"));
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