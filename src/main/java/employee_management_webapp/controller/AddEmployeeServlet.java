package employee_management_webapp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import employee_management_webapp.model.dao.EmployeeDao;
import employee_management_webapp.model.dto.Employee;

@WebServlet(value = "/add_emp")
public class AddEmployeeServlet extends HttpServlet{
	
	Employee emp;
	EmployeeDao eDao = new EmployeeDao();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		double salary = Double.parseDouble(req.getParameter("salary"));
		long phone = Long.parseLong(req.getParameter("phone"));
		String password = req.getParameter("password");
		String role = req.getParameter("role");
		emp = new Employee(id,name,salary,phone,password,role);
		
		boolean result = eDao.insertEmployee(emp);
		PrintWriter pw = resp.getWriter();
		RequestDispatcher rd = req.getRequestDispatcher("employee_data.jsp");
		resp.setContentType("text/html");
		if(result) {
			pw.println("Employee Data Successfully Added");
			pw.println("<a href = 'admin_opreations.jsp'></a> Go to Adimn Operations");
		}
		else {
			rd.include(req, resp);
			pw.println("Failed to Add Employee Data");
		}
	}
}
