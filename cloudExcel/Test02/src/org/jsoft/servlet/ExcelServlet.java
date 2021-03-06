package org.jsoft.servlet;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoft.dao.impl.SysUserDAOImpl;
import org.jsoft.vo.SysUser;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import jxl.read.biff.BiffException;

public class ExcelServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String method = request.getParameter("method");
		
		if("excel".equals(method)){
			String getName = request.getParameter("name");
			System.out.println("正在解析文件");
			
			File file = new File("D:/test/"+getName);
			Workbook book = null;
			try {
				book = Workbook.getWorkbook(file);
				Sheet sheet = book.getSheet(0);
				
				int columns = sheet.getColumns(); //columns 列
				int rows = sheet.getRows();		//row 行
				
				
				System.out.println(columns);
				System.out.println(rows);
				

				String[][] array = new String[rows][columns];
				
				List<SysUser> suList = new ArrayList<SysUser>();
				
				//按行输出
				for(int i = 1; i < rows; i ++){
					for(int j = 0; j < columns; j ++){
						
						SysUser user = new SysUser();
						
						Cell cell = sheet.getCell(j,i);
						System.out.print(cell.getContents());
						
						array[i][j] = cell.getContents();
						
						
					}
					
					SysUser su = new SysUser();
					System.out.println();
					
					Long id = Long.parseLong(array[i][0]);
					String name = array[i][1];
					String sex = array[i][2];
					String department = array[i][3];
					String enterDate = array[i][4];
					Integer age = Integer.parseInt(array[i][5]);
					String education = array[i][6];
					
					su.setID(id);
					su.setAge(age);
					su.setSex(sex);
					su.setDepartment(department);
					su.setEducation(education);
					su.setEnterDate(enterDate);
					su.setName(name);
					
					SysUserDAOImpl sud = new SysUserDAOImpl();
					sud.add(su);
					System.out.println("入库成功");
				}
				
				System.out.println("解析成功");
				
				
			} catch (BiffException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IndexOutOfBoundsException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		}finally{
			if(book != null){
				book.close();
			}
		}
			
			
		}
		
	}
	
}

