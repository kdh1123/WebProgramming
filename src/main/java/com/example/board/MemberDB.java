package com.example.board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MemberDB {
    public List<Member> doselect(){
        List<Member> list = new ArrayList();
        Connection con = null;  // DB연결
        PreparedStatement pstmt = null; // SQL문 작성..
        ResultSet rs = null;  // DB Table 저장..
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");  // mysql.jar 라이브러리 확인
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/aaa","root","key195163!");
            pstmt = con.prepareStatement("select * from UserInfo");
            rs = pstmt.executeQuery();
            while (rs.next()){
                Member member = new Member();
                member.setId(rs.getInt("id"));
                member.setUsername(rs.getString("username"));
                member.setPassword(rs.getString("password"));
                member.setGender(rs.getString("gender"));

                list.add(member);
            }
            System.out.println("DB 연결 성공");
        }catch (Exception e){
            e.printStackTrace();
        }
        return list;
    }
    public void doDelete(String []ids){
        Connection con = null;
        PreparedStatement pstmt = null;
        // ids [ 2 3 4 ] -> 2,3,4
        String values = "";
        for ( int i =0; i<ids.length; i++){
            if( i == (ids.length-1) )
                values = values + ids[i];
            else
                values = values + ids[i]+",";
        }
        // 2,3,4,
        System.out.println("values = "+values);
        try{
            // jar 로딩..
            Class.forName("com.mysql.cj.jdbc.Driver");
            // DB 연결
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/aaa",
                    "root","key195163!");
            // sql 구문 준비
            pstmt = con.prepareStatement("delete from UserInfo where id = ?");
            pstmt.setString(1,values);
            pstmt.executeUpdate();// sql 구문 실행...
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public void doInsert(String username, String password, String gender){
        Connection con = null;
        PreparedStatement pstmt = null;
        try{
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/aaa",
                    "root","key195163!");
            // sql 구문 준비
            pstmt = con.prepareStatement("insert into UserInfo"+"(username,password,gender)"+" values(?,?,?)");
            pstmt.setString(1,username);
            pstmt.setString(2,password);
            pstmt.setString(3,gender);
            pstmt.executeUpdate();// sql 구문 실행...
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public void doUpdate(String username, String password, String gender, String id){
        Connection con = null;
        PreparedStatement pstmt = null;
        try{
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/aaa",
                    "root","key195163!");
            // sql 구문 준비
            pstmt = con.prepareStatement("update UserInfo set username=?, password=?, gender=? where id = ?");
            pstmt.setString(1,username);
            pstmt.setString(2,password);
            pstmt.setString(3,gender);
            pstmt.setInt(4,Integer.parseInt(id));
            pstmt.executeUpdate();// sql 구문 실행...
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public boolean doLoginCheck(String username, String password){
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/aaa",
                    "root","key195163!");
            // sql 구문 준비
            pstmt = con.prepareStatement("select * from UserInfo where username=? and password=?");
            pstmt.setString(1,username);
            pstmt.setString(2,password);
            rs = pstmt.executeQuery();
            if(rs.next()){
                System.out.println("행있음");
                return true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }
}
