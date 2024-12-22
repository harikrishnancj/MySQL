create database m;
use m;
-- Create the teachers table
CREATE TABLE teachers (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    subject VARCHAR(50),
    experience INT, 
    salary DECIMAL(10, 2)
);

-- Insert rows into the teachers table
INSERT INTO teachers (id, name, subject, experience, salary) VALUES
(1, 'Alice Johnson', 'Mathematics', 10, 55000.00),
(2, 'Bob Smith', 'Physics', 8, 52000.00),
(3, 'Clara Lee', 'Chemistry', 15, 60000.00),
(4, 'David Brown', 'Biology', 12, 58000.00),
(5, 'Emily White', 'English', 6, 48000.00),
(6, 'Frank Thomas', 'History', 20, 65000.00),
(7, 'Grace Miller', 'Geography', 5, 45000.00),
(8, 'Henry Green', 'Computer Science', 7, 50000.00);

##2. Create a before insert trigger named before_insert_teacher that will raise an error “salary cannot be negative” if the salary inserted to the table is less than zero. 

DELIMITER //

CREATE TRIGGER salary_check 
BEFORE INSERT ON teachers
FOR EACH ROW
BEGIN
    IF NEW.salary < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Salary must be greater than 0';
    END IF;
END //

DELIMITER ;

INSERT INTO teachers (id, name, subject, experience, salary) VALUES(9, 'Rachel Green', 'Computer Science', 5, -10);

##3. Create an after insert trigger named after_insert_teacher that inserts a row with teacher_id,action, timestamp to a table called teacher_log when a new entry gets inserted to the teacher table. tecaher_id -> column of teacher table, action -> the trigger action, timestamp -> time at which the new row has got inserted.
CREATE TABLE teacher_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    teacher_id INT NOT NULL,
    action VARCHAR(50) NOT NULL,
    log_timestamp DATETIME NOT NULL
);

delimiter //
create trigger after_insert_teacher
after insert on teachers
for each row
begin
     insert into teacher_log(teacher_id,action,log_timestamp)
     values(new.id,'insert',now());
end //
delimiter ;

INSERT INTO teachers (id, name, subject, experience, salary)
VALUES (10, 'Ivy Black', 'Art', 10, 53000.00);

select * from teacher_log;

##Create a before delete trigger that will raise an error when you try to delete a row that has experience greater than 10 years.

delimiter //
create trigger before_delete
before delete on teachers
for each row
begin 
      if old.experience >10 then
      signal sqlstate '45000'
      set message_text='u cant delete teachers with more than 10 year exp';
      end if;
end //
delimiter ;

delete from teachers where id='4';
delete from teachers where id='5';
select * from teachers;


##Create an after delete trigger that will insert a row to teacher_log table when that row is deleted from teacher table.

delimiter //
create trigger after_delete
after delete on teachers
for each row
begin
      insert into teacher_log(teacher_id,action,log_timestamp)
      values(old.id,'delete',now());
end //
delimiter ;


delete from teachers where id='7';
select * from teacher_log;