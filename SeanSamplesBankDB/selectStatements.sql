select * from account;
select * from transaction;

select sum(amount) from transaction;
select count(*) from transaction;
select count(*) from transaction
	where TxnType = 'Deposit';
select avg(balance) from account;
select min(fees) from account;
select concat('Hello ', 'World!');
select AccountHolder, concat('$', format(balance,2)) as Balance
	from account
    order by AccountHolder;
select txntype, sum(amount)
	from transaction
	group by TxnType;

-- Joins

-- this is bad: select * from account, transaction;

select * from account
	join transaction
    on account.id = transaction.accountid;
    
select * from account
	where balance < 
    (select avg(balance) from account);
select avg(balance) from account;

insert into account (Accountholder)
	values ('Fred Wills'),
		('Anthony Price');

update account 
	set balance = 9999.99
    where id = 6;
    
insert into account(AccountHolder)
	values ('Sean Blessing');
    
insert into account
	values (99, 'Dummy', 0, 0);
    
delete from account
	where id > 5;

update account
	set balance = -1
    where id = 5;
    
-- Date Field

select * from account;

alter table account
	add column BirthDate Date
    after AccountHolder;
    
Select * from bank_db.account
	order by birthdate;

select distinct(birthdate) from account;

    
    
    
    

