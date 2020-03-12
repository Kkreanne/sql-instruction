drop database if exists bank_accounts;
create database bank_accounts;
use bank_accounts;

create table account (
	id 				int 			not null primary key auto_increment,
	account_holder 	varchar(50) 	not null,
	balance 		int 			not null default 0,
	fees 			int 			not null default 0
);

Insert into account (account_holder, balance, fees)
values ('Karlee Abrams', $8,888.00, $250.00);
Insert into account (account_holder, balance, fees)
values ('Brytt Lucas', $5,444.00, $175.00);
Insert into account (account_holder, balance, fees)
values ('Joelle Fulcher', $3,333.00, $88.00);
Insert into account (account_holder, balance, fees)
values ('Justin Snyder', $3,322.00, $88.00);

create table Transaction (
	id 				int 			not null primary key auto_increment,
	amount 			int 			not null default 0,
	txn_type		varchar(25) 	not null,
	account_ID 		int 			not null
);

ALTER TABLE Transaction
ADD FOREIGN KEY (amount_ID) REFERENCES account(id);

Insert into Transaction (amount, txn_type, account_ID)
values ($500.00, 'Deposit', 3);
Insert into Transaction (amount, txn_type, account_ID)
values ($(200.00), 'Withdrawal', 4);
Insert into Transaction (amount, txn_type, account_ID)
values ($200.00, 'Deposit', 4);
Insert into Transaction (amount, txn_type, account_ID)
values ($248.00, 'Deposit', 1);
