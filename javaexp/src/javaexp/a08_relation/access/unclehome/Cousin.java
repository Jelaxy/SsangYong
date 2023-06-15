package javaexp.a08_relation.access.unclehome;

import javaexp.a08_relation.access.ourhome.Mine;
import javaexp.a08_relation.access.ourhome.MyFather;

public class Cousin extends MyFather {
	
	void supriseParty() {
		System.out.println("깜짝 결혼기념일 파티"+surprise);
	}
	void myInfo () {
		Mine my = new Mine();
		System.out.println("private 접근:"+my.secret);
		System.out.println("default 접근:"+my.trvelPlan);
	}
}
