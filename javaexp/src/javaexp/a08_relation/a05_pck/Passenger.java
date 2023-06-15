package javaexp.a08_relation.a05_pck;

import javaexp.a08_relation.a06_pck.Bus;

public class Passenger {
	Bus b1;
	// Car c1; 선언시 public 안되기에
		void call(){
  			b1 = new Bus();
//  		b1 = new Bus(7788);
  			b1 = new Bus("서울행",9999); // public이 아니기에
  			System.out.println(b1.no);
//  		System.out.println(b1.target); // public이기에
  			b1 = new Bus("인천",9999,"마길동");
  			b1.callInfo();
  			
	}
}
