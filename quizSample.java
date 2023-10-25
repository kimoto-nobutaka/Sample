
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class quizSample {
	 public static void main(String[] args) {
	        Scanner scanner = new Scanner(System.in);
	        final String URL = "jdbc:mysql://localhost/quiz";
	        final String USER = "root";
	        final String PASS = "nk061122";
	        String sql = "SELECT * FROM question ORDER BY RAND() LIMIT 1";
	        
	        Connection con = null;
	        Statement stmt = null;
	        ResultSet rs = null;
	        
	        try {
	        	con = DriverManager.getConnection(URL,USER,PASS);
	        	stmt = con.createStatement();
	        	rs = stmt.executeQuery(sql);
	        	
	        if(rs.next()) {
	        	String questions = rs.getString("questions");
	        	String A = rs.getString("A");
	        	String B = rs.getString("B");
	        	String C = rs.getString("C");
	        	String D = rs.getString("D");
	        	String Answer = rs.getString("correct answer");
	        	
	        	String [] s = {questions,A,B,C,D};
	        	for (String n : s)
	        	System.out.println(n);
	        	
	        	System.out.println("A～Dの中から選択してください");
	        	 boolean validChoice = false;
	        	 
	        	 while(!validChoice) {
	        	String userChoice = scanner.nextLine();
	        	
	        	 if (userChoice.equals(Answer)) {
	                    System.out.println("正解です。");
	                    validChoice=true;
	                } else if(!userChoice.equals("A") && !userChoice.equals("B") && !userChoice.equals("C") && !userChoice.equals("D")) {
	                	System.out.println("Ａ～Ｄの中から選択してください");
	                }else {
	                    System.out.println("不正解です。正解は " + Answer + " です");
	                    validChoice = true;
	                }
	        	 }
	        }
	        	
	        	
	        	
	        	
	        }catch(SQLException e) {
	        	e.printStackTrace();
	        }catch(Exception e) {
	        	e.printStackTrace();
	        }finally {
	        	try {
	        	if(rs !=null)rs.close();
	        	if(stmt != null)stmt.close();
	        	if(con != null)con.close();
	        	scanner.close();
	        	}catch(Exception e) {
	        		e.printStackTrace();
	        	}
	        }
	       
	 }
}

	 