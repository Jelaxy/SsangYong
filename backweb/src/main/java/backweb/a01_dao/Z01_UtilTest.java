package backweb.a01_dao;

import java.util.List;

import com.google.gson.Gson;

import backweb.z01_vo.Emp;
import backweb.z01_vo.Person;

public class Z01_UtilTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Gson gson = new Gson();
		// 객체 ==> json 데이터 변환
		Person p01 = new Person("홍길동",25,"서울");
		String jsonData = gson.toJson(p01);
		System.out.println(jsonData);
		A04_PreparedDao dao = new A04_PreparedDao();
		List<Emp> empList = dao.getEmpList();
		System.out.println(gson.toJson(empList));
		/*
		{"empno":801,"}
		*/
		
	}

}
