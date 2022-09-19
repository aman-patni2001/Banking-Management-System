
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



--
-- Database: `bankproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE customer(
  acc_no number PRIMARY KEY AUTO_INCREMENT,
  name varchar2(30) DEFAULT NULL,
  address varchar2(100) DEFAULT NULL,
  phone number DEFAULT NULL,
  email varchar2(80) DEFAULT NULL,
  aadhar_no number DEFAULT NULL,
  acc_type varchar(2) DEFAULT NULL,
  balance float(15,2) DEFAULT NULL);
desc customer;

--
-- Dumping data for table customer


INSERT INTO customer VALUES(1, 'aman kumar patni', 'building A, 405', '5487523684', 'aman@gmail.com', '4585-1234-5611', 's', 75000.00)
INSERT INTO customer VALUES(2, 'vansh gupta','building C, 205', '4589621456', 'vansh.gupta@yahoo.com', '7452-1235-8561', 'c', 50000.00)
INSERT INTO customer VALUES(3, 'arvind deshmukh','building E, 102', '9568472110', 'ardesh20@gmail.com', '4512-9562-7532', 'c', 15000.00)
INSERT INTO customer VALUES(4, 'vansh shan','building B, 505', '6202559862', 'vansh2002@gmail.com', '9999-4565-1234', 's',25000.00)
INSERT INTO customer VALUES(5, 'megha sharma','building A, 506', '5236148451', 'megha.vit@yahoo.com', '1234-5678-9012', 'c', 125000.00)
INSERT INTO customer VALUES(6, 'samyak jain','building D, 208', '8452364410', 'sam.jain@hotmail.com', '5263-7548-7412', 's', 28000.00)
select *from dual;
select *from customer;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--


CREATE TABLE transaction(
  tid int(5) PRIMARY KEY AUTO_INCREMENT,
  dot date DEFAULT NULL,
  amount int(10) DEFAULT NULL,
  type varchar2(15) DEFAULT NULL,
  acc_no REFERENCES customer(acc_no));
DESC transaction;


INSERT INTO transaction VALUES (1, '2021/04/12', 22000, 'deposit', 1)
INSERT INTO transaction VALUES (2, '2021/05/02', 25000, 'withdraw', 2)
INSERT INTO transaction VALUES (3, '2021/05/15', 2000, 'withdraw', 5)
INSERT INTO transaction VALUES (4, '2021/05/25', 8000, 'deposit', 1)
INSERT INTO transaction VALUES (5, '2021/06/11', 12500, 'deposit', 4)
INSERT INTO transaction VALUES (6, '2021/06/20', 2000, 'withdraw', 1)
INSERT INTO transaction VALUES (7, '2021/06/25', 20000, 'deposit', 1)
INSERT INTO transaction VALUES (8, '2021/06/25', 12500, 'deposit', 3)
select *from dual;
select *from customer;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
