use db1;
select * from students;
/* id    name   mark   grade    address    mo_no
1	karan	34		nathnagar	8020234758
2	arjun	65	c	nath nagar2	6978934785
3	nilesh	89	b++	vistarithnath	9507989877
4	ritesh	98	a++	vistarithnath	9507089877
5	vishal	57	c	vistarithnath	9507089877
6	pandu	78	b++	nathnagar	7880347857
7	gaju	67	c	nathnagar1	7880347857
8	sagar	99	a++	vistarithnath1	9507089877
9	hrshan	79	A++	nathnager	7987085896
10	hrshan	79	A++	nathnager	7987085896
11	hrshan	79	A++	nathnager	7987085896
12	hrshan	79	A++	nathnager	7987085896
13	bapni	97	A++	nathnager2	9287085849
14	sajana	97	A++	nathnager1	9787085880
*/

-- used as adding column 
alter table students add column standerd varchar(15);

select * from students