select * from emp;
select empno from emp; -- ctrl+enter
select empno, ename from emp;
-- ex) empno, job, mgr deptno�� 1, 2, 3, 4 �����ؼ� ��ȸ�غ�����
SELECT empno from emp;
SELECT empno, job from emp;
SELECT empno, job, mgr from emp;
SELECT empno, job, mgr, deptno from emp;
SELECT deptno, empno, ename
from emp;
select ename,sal
from emp
where sal>=2000;
select *
from emp;
-- ex) sal(�޿�)�� 2000�̸��� ������� �˻��ϼ���
select ename, sal
from emp
where sal<2000;
-- ex) sal(�޿�)�� 2000�̻� 4000�̸��� ������� �˻��ϼ���
--      and, or �̿�
select ename, sal
from emp
where sal>=2000 and sal<4000;

select deptno, ename, sal
from emp
where sal<2000 or sal>=5000;
select * from emp;
--ex) empno �������� 7500�̸� �̰ų� 7800�̻���
--   ����� empno, ename, sal�� ����ϼ���
select empno, ename, sal
from emp
where empno < 7500 or empno >= 7800;
select *
from emp
where ename ='SMITH';
-- '���ڿ�' : ���ڿ�������
-- = :�񱳿�����(���ϵ�����)
-- �������� �״�� ǥ��
select * from emp;
-- ex) sal�� 1250�� ��� ������ ���
select * from emp
where sal = 1250;
-- ex) job�� CLERK�� ��� ���� �߿� empno, ename, job�� ����ϼ���
select empno,ename,job from emp
where job = 'CLERK';

select * from emp;
/*
DB ==> ArrayList<Emp> �Ҵ�
ex)
class Emp{
    private int empno;
    private String ename;
    private String job;
    private int mgr;
    private Date hiredate;
    private double sal;
    private double comm;
    private int deptno;
}
*/
select * from dept;
select * from emp;
select *
from emp, dept
where emp.deptno = dept.deptno;
