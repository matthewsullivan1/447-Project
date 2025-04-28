CREATE DATABASE LibVault;
USE LibVault;

-- Table: Client
CREATE TABLE Client (
    MemberID CHAR(10) PRIMARY KEY,
    Name VARCHAR(100),
    PhoneNumber VARCHAR(15),
    MembershipType CHAR(15),
    AccountStatus CHAR(10)
);

-- Table: Media
CREATE TABLE Media (
    ISBN CHAR(13) PRIMARY KEY,
    MediaID CHAR(10),
    Title VARCHAR(100),
    Author VARCHAR(100),
    PublicationYear CHAR(4),
    Genre VARCHAR(50),
    AvailabilityStatus CHAR(15),
    Type VARCHAR(50)
);

-- Table: Reservation
CREATE TABLE Reservation (
    ReservationID CHAR(10) PRIMARY KEY,
    ReservationDate DATE,
    ExpirationDate DATE,
    MemberID CHAR(10),
    FOREIGN KEY (MemberID) REFERENCES Client(MemberID)
);

-- Table: Report
CREATE TABLE Report (
    ReportID CHAR(10) PRIMARY KEY,
    OverdueFee FLOAT(5,2),
    MemberID CHAR(10),
    FOREIGN KEY (MemberID) REFERENCES Client(MemberID)
);

-- Table: Reserves
CREATE TABLE Reserves (
    ReservationID CHAR(10),
    ISBN CHAR(13),
    PRIMARY KEY (ReservationID, ISBN),
    FOREIGN KEY (ReservationID) REFERENCES Reservation(ReservationID),
    FOREIGN KEY (ISBN) REFERENCES Media(ISBN)
);

-- Table: Analyzes
CREATE TABLE Analyzes (
    ReportID CHAR(10),
    ReservationID CHAR(10),
    PRIMARY KEY (ReportID, ReservationID),
    FOREIGN KEY (ReportID) REFERENCES Report(ReportID),
    FOREIGN KEY (ReservationID) REFERENCES Reservation(ReservationID)
);

-- Table: Purchases
CREATE TABLE Purchases (
    PurchaseID CHAR(10) PRIMARY KEY,
    MemberID CHAR(10),
    ISBN CHAR(13),
    FOREIGN KEY (MemberID) REFERENCES Client(MemberID),
    FOREIGN KEY (ISBN) REFERENCES Media(ISBN)
);
