package javaexp.z01_home;

public class A01_0412 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		2023-04-12
//		[1단계:개념] 1. 메서드의 여러가지 처리형태(입력,로직,리턴,복합형태)를 기술하고 간단한 예제로 구현하세요
		
//		[1단계:개념] 2. 생성자로 데이터를 사용할 때와 메서드를 데이터를 사용할 때, 어떤 차이점이 있는지 예제로 기술하세요.
		 /**
		 생성자는 주로 해당객체를 사용해서 초기값이 설정할 필요거 있을 때 주로 사용
		 ex) Person : 사람이름, 초기할당 정보
		 		age(0) - 숫자형 데이터는 기본적으로 0이기에 설정 불필요
		  	 Car : 자동차의 종류
		 메서드는 주로 해당객체 생성 후, 변경되는 데이터를 처리할 때 사용된다
		 ex) getAge() : 나이를 먹다
		 	 chLoc("서울"): 사는 곳이 변경되다
		 	 speedUp(30) : 속도가 증가되다
		 	 drivingPerson("친구1") : 사람을 태우다
		  */
//		[1단계:확인] 3. 메서드(입력+로직) 선언 예제( class RetExp100 하위에 선언하여 호출하세요)
//		      1) 3개에 입력값 중에 가장 큰수 출력
			     /* int maxNum=0;
			     	if(num01>maxNum) {
			     		maxNum>num01;
			     	}
			     	if(num02>maxNum) {
			     		maxNum>num02;
			     	}
			     	if(num03>maxNum) {
			     		maxNum>num03;
			     	}
			     	System.out.println("가장 큰수 "+maxNum);
			     	*/
					/**num01이 가장 큰 경우
			       		num01>num02 num01<num03
			       		num01=num02 num02>num03
			       		num01==num02==num03
			       */
//			  2) 1개의 입력값으로 70이상과 미만으로 합격/불합격 출력
//		      3) 배열로 파는 물건들을 3개의 문자열 배열로 선언하고, 입력으로 물건명으로 파는 물건 여부를 출력 표시.
//		[1단계:확인] 4. 메서드(입력+로직+리턴) 선언  예제( class RetExp100 하위에 선언하여 호출하세요)
//		      1) 놀이공원 클래스에서 나이를 입력해서 무료/유료 구분해서 리턴 메서드(5세미만 65이상 무료)
//		      2) 놀이공원 클래스에서 나이에 따라 입장료 10%, 15%, 20% 처리(나이구간 임의 적용)
//		      3) 배열로 등록된 회원 선언하고, 입력된 회원명에 따라 등록여부를 리턴하여 처리하세요.
//		[1단계:확인] 5. 클래스(필드,생성자,메서드) 선언  예제( class RetExp100 하위에 선언하여 호출하세요)
//		      1) 버스클래스로 필드(버스번호,탑승자수) 버스번호 생성자 선언, 탑승자인원수 누적메서드 리턴 현재 총탑승자수
//		         탑승메서드(매개변수 탑승자인원, 리턴 현재 총탑승자수) 
//		         버스번호 @@번 @@명이 탑승했습니다. 
//		[1단계:개념] 6. 클래스내 일반변수, static 변수, final 상수, static final 상수의 차이점을 기본 예제로 설명하세요.
//		[1단계:확인] 7. 상대적경로 이동과 절대적 경로 이동예제를 하나씩 만들어 이동처리하세요
	}

}
class RetExp100{
	int num01;
	int num02;
	int num03;
  public void moreGreater(int num01, int num02, int num03){
	  System.out.println("첫번째 숫자:"+num01);
	  System.out.println("두번째 숫자:"+num02);
	  System.out.println("세번째 숫자:"+num03);
	  if(num01>num02) {
		  System.out.println("제일 큰 숫자:");
	  }  
  }
}
class Land{
    public void isFree(int age) {
		if(age>5 && age<=65) {
		System.out.println("무료 이용 손님");
		}else{
			System.out.println("유료 이용 손님");
		}
		return ;
	}
    public void disAge(int age, int price, double dis) {
    	System.out.println("나이를 입력하세요");
    	if(age<18) {
    		System.out.println("티켓값:"+price);
    		int disPri = (int)(price*100);
    		System.out.println("미성년자 할인율"+disPri+"%");
    		int totPay = price-(int)(price*dis);
    	 
    	}
    	if(age<=30) {
    		System.out.println("티켓값:"+price);
    		int disPri = (int)(price*100);
    		System.out.println("청년 할인율"+disPri+"%");
    		int totPay = price-(int)(price*dis);
    	}
    	return totPay;
    }
}
