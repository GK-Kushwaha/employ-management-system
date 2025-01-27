package employee_management_webapp.model.dao;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import employee_management_webapp.model.dto.Employee;

public class EmployeeDao {
	String url;
	String user;
	String password;
	Connection con;
	FileInputStream fis;
	Properties property = new Properties();
	PreparedStatement ps;
	ResultSet rs;
	Statement stm;
	List<Employee>employees = new ArrayList<>();
	{
		try {
			Class.forName("org.postgresql.Driver");
			fis = new FileInputStream("C:\\Users\\gaura\\OneDrive\\Documents\\employee_manageent_webapp\\employee_management_webapp\\db_config.properties");
			property.load(fis);
			url = property.getProperty("url");
			con = DriverManager.getConnection(url, property);
			System.out.println("Connection Established");
			stm = con.createStatement();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch (FileNotFoundException e) {
			e.printStackTrace();
		}catch (IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		//EOF Non-static initializer
	}
	
	public boolean adminloginValidate(Employee emp)
	{
		String query = "select password, role from employee where id=?";
		try {
			ps = con.prepareStatement(query);
			ps.setInt(1,emp.getId());
			rs = ps.executeQuery();
			if(rs.next())
			{
				if(rs.getString(1).equals(emp.getPassword()) && rs.getString(2).equalsIgnoreCase("Admin"))
				{
					return true;
				}
				else
				{
					return false;
				}
			}
			else {
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	} //EOF loginValidate
	
	public boolean insertEmployee(Employee emp)
	{
		String query = "insert into employee values(?,?,?,?,?,?)";
		try {
			ps = con.prepareStatement(query);
			ps.setInt(1, emp.getId());
			ps.setString(2, emp.getName());
			ps.setDouble(3, emp.getSalary());
			ps.setLong(4, emp.getPhone());
			ps.setString(5, emp.getPassword());
			ps.setString(6, emp.getRole());
			
			if(ps.executeUpdate()>0)
			{
				return false;
			}
			else {
				return false;
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return false;
	} // EOF insert employee
	
	public Employee viewEmployee(int id) {
		String query = "select * from employee where id = ?";
		try {
			ps = con.prepareStatement(query);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			if(rs.next()) {
				return new Employee(rs.getInt(1),rs.getString(2),rs.getDouble(3),rs.getLong(4),rs.getString(5),rs.getString(6));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	} //EOF viewEmployee
	
	public List<Employee> viewAllEmployee() {
	    String query = "select * from employee";
	    try {
	        rs = stm.executeQuery(query);
	        employees.clear(); 
	        while (rs.next()) {
	            employees.add(new Employee(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getLong(4), rs.getString(5),rs.getString(6)));
	        }
	        return employees; 
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return null;					
	}
	
	public boolean removeEmployee(int id) {
		String query = "delete from employee where id = ?";
		try {
			ps = con.prepareStatement(query);
			ps.setInt(1, id);
			if(ps.executeUpdate()>0)
			{
				return true;
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	} //EOF removeEmployee
	
	public boolean updateEmployee(Employee emp) {
		String query = "update employee set name = ? , salary = ?, phone = ?, password=?, role=? where id = ?";
		try {
			ps = con.prepareStatement(query);
			ps.setString(1, emp.getName());
			ps.setDouble(2, emp.getSalary());
			ps.setLong(3, emp.getPhone());
			ps.setString(4, emp.getPassword());
			ps.setString(5, emp.getRole());
			ps.setInt(6, emp.getId());
			if(ps.executeUpdate()>0) {
				return true;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	} // EOF Update Employee
	
	public static void main(String[] args) {
		EmployeeDao eDao = new EmployeeDao();
	}

}
