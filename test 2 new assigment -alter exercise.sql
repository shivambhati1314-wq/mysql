create database company_training ;
use company_training ;

create table department (
    department_id int not null,
    dept_name varchar(50)not null,
    city varchar(60)
);

create table employees (
    employee_id int not null ,
    employed_name varchar (100) not null ,
    email varchar (120),
    department_id int not null ,
    salary decimal (10 ,2) ,
    satus varchar (20)
);

    alter table department add primary key (department_id );
    alter table employee add primary key (employee_id);
    alter table department add column location varchar (100);
    alter table department change column dept_name Department_name varchar (30) ;
    alter table employee modify column salary decimal (12,2) not null ;
    alter table employee modify column status varchar ( 50) default ('active');
    alter table employee and constraint unique_emailunique(email);
    alter table employee rename to staff ; 
    alter table staff add constraint fk_dept foreign key(department_id) references department(department_id);
    alter table staff drop index unique_email;
    alter table staff drop foreign key fk_department;
    alter table staff drop primary key;
    alter table staff and primary key(employed_id);
    alter table departments drop column location;
    
    create database company_management;
    rename table company_tranning.departments to company_management.departments;
    rename table company_tranning.staff to company_management.staff;
    drop database company_tranning;
    

    




