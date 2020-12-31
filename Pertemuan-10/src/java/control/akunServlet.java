/*
* To change this license header, choose License Headers in Project Properties.
* To change this template file, choose Tools | Templates
* and open the template in the editor.
*/
package control;
 
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import model.Akun;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
 
/**
*
* @author Ahmad
*/
@WebServlet(name = "akunServlet", urlPatterns = {"/akunServlet"})
public class akunServlet extends HttpServlet {
 
/**
* Processes requests for both HTTP <code>GET</code> and <code>POST</code>
* methods.
*
* @param request servlet request
* @param response servlet response
* @throws ServletException if a servlet-specific error occurs
* @throws IOException if an I/O error occurs
*/
protected void processRequest(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
 
}
 
// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
/**
* Handles the HTTP <code>GET</code> method.
*
* @param request servlet request
* @param response servlet response
* @throws ServletException if a servlet-specific error occurs
* @throws IOException if an I/O error occurs
*/
 
/* dinonaktifkan
@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
processRequest(request, response);
}
*/
 
/**
* Handles the HTTP <code>POST</code> method.
*
* @param request servlet request
* @param response servlet response
* @throws ServletException if a servlet-specific error occurs
* @throws IOException if an I/O error occurs
*/
/**
* Handles the HTTP <code>POST</code> method.
*
* @param request servlet request
* @param response servlet response
* @throws ServletException if a servlet-specific error occurs
* @throws IOException if an I/O error occurs
*/
/**
* Handles the HTTP <code>POST</code> method.
*
* @param request servlet request
* @param response servlet response
* @throws ServletException if a servlet-specific error occurs
* @throws IOException if an I/O error occurs
*/
 
@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
 
Akun akun = new Akun();
 
String URL = "jdbc:mysql://localhost:3306/sia";
String USERNAME = "root";
String PASSWORD = "";
 
Connection koneksi = null;
PreparedStatement pstmt = null;
int result = 0;
 
try (PrintWriter out = response.getWriter()) {
Class.forName("com.mysql.jdbc.Driver");
koneksi = DriverManager.getConnection(URL, USERNAME, PASSWORD);
 
String aksi = request.getParameter("aksi");
if (aksi != null) {
akun.setKode_akun(request.getParameter("kode"));
akun.setNama_akun(request.getParameter("nama"));
akun.setJenis_akun(request.getParameter("jenis"));
akun.setSaldo_normal(request.getParameter("saldo"));
 
switch (aksi) {
case "Insert":
pstmt = koneksi.prepareStatement("INSERT INTO master_akun "
+ " VALUES (?, ?, ?, ?)");
pstmt.setString(1, akun.getKode_akun());
pstmt.setString(2, akun.getNama_akun());
pstmt.setString(3, akun.getJenis_akun());
pstmt.setString(4, akun.getSaldo_normal());
 
result = pstmt.executeUpdate();
if (result > 0) {
out.println("<script> "
+ "alert('Data akun telah ditambahkan');"
+ "document.location='add_akun.jsp';"
+ "</script>");
}
break;
default:
break;
}
}
} catch (ClassNotFoundException | SQLException ex) {
Logger.getLogger(akunServlet.class.getName()).log(Level.SEVERE, null, ex);
}
}
 
/**
* Returns a short description of the servlet.
*
* @return a String containing servlet description
*/
@Override
public String getServletInfo() {
return "Short description";
}
// </editor-fold>
}