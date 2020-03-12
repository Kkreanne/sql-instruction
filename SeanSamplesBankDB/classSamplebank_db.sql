-- create and select the database
drop database if exists bank_db;
create database bank_db;
use bank_db;

-- create the accounts table
create table Account (
	ID 				int 			not null primary key auto_increment,
    AccountHolder 	varchar(50) 	not null,
    Balance 		decimal(6,2) 	not null default 0,
    Fees 			decimal (6,2) 	not null default 0
    );
    
 -- create the transactions table   
create table Transaction (
	ID 			int 			primary key auto_increment,
    Amount 		decimal (6,2) 	not null,
    TxnType 	varchar(50) 	not null,
    AccountID 	int 			not null, 
    foreign key (AccountID) references Account(ID)
    );
 
-- insert records
insert Account (ID, accountHolder, balance, fees) Values (1,'Karlee Abrams', 8888.00, 250.00);
insert Account (ID, accountHolder, balance, fees) Values (2,'Brytt Lucas', 5444.00, 175.00);
insert Account (ID, accountHolder, balance, fees) Values (3,'Joelle Fulcher', 3333.00, 88.00);
insert Account (ID, accountHolder, balance, fees) Values (4,'Justin Snyder', 3322.00, 88.00);

insert Transaction (amount, txnType, accountID) Values (500.00, 'Deposit', 3);
insert Transaction (amount, txnType, accountID) Values (-200.00, 'Withdrawal', 4);
insert Transaction (amount, txnType, accountID) Values (200.00, 'Deposit', 4);
insert Transaction (amount, txnType, accountID) Values (248.00, 'Deposit', 1);

    
    