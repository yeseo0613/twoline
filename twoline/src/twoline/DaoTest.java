package twoline;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DaoTest {

	public static void main(String[] args) {
		OnelineDAO dao = new OnelineDAO();
		OnelineDTO dto = new OnelineDTO();
		// 1. 데이터를 넣어보고
		dto.setMemo("TestTest");
		dao.insert(dto);
		// 2. 그 데이터를 출력해보고
		ArrayList<OnelineDTO> dtos = dao.getList();
		for(int i = 0 ; i < dtos.size(); i++) {
			OnelineDTO dt = dtos.get(i);
			System.out.println("no : " + dt.getNo() + ", memo: " + dt.getMemo() + ", date: " +dt.getWdate());
		}
		// 3. 그 데이터를 삭제하는 것 까지 
		
	}
}