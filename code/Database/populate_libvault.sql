USE LibVault;

-- Insert Clients
INSERT INTO Client VALUES 
('C0001', 'Alice Johnson', '123-456-7890', 'Regular', 'Active'),
('C0002', 'Bob Smith', '234-567-8901', 'Student', 'Active'),
('C0003', 'Clara Zane', '345-678-9012', 'Administrator', 'Suspended');

-- Insert Media
INSERT INTO Media VALUES 
('9780134685991', 'M0001', 'Effective Java', 'Joshua Bloch', '2018', 'Non-fiction', 'Available', 'Book'),
('9780262033848', 'M0002', 'Introduction to Algorithms', 'Thomas H. Cormen', '2009', 'Non-fiction', 'On Hold', 'Book'),
('9780596009205', 'M0003', 'Head First Java', 'Kathy Sierra', '2005', 'Fiction', 'Reserved', 'Book');

-- Insert Reservations
INSERT INTO Reservation VALUES 
('R0001', '2025-04-01', '2025-04-15', 'C0001'),
('R0002', '2025-04-02', '2025-04-16', 'C0002');

-- Insert Reports
INSERT INTO Report VALUES 
('RP0001', 5.50, 'C0001'),
('RP0002', 0.00, 'C0002');

-- Insert Reserves
INSERT INTO Reserves VALUES 
('R0001', '9780134685991'),
('R0002', '9780262033848');

-- Insert Analyzes
INSERT INTO Analyzes VALUES 
('RP0001', 'R0001'),
('RP0002', 'R0002');

-- Insert Purchases
INSERT INTO Purchases VALUES 
('P0001', 'C0001', '9780596009205'),
('P0002', 'C0002', '9780134685991');
