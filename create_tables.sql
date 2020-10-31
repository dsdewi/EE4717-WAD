
CREATE TABLE patients(
    UserID INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Name VARCHAR(30) NOT NULL,
	Email VARCHAR(30) NOT NULL,
	Password VARCHAR(100) NOT NULL,
	UserType VARCHAR(30) NOT NULL
);

CREATE TABLE patientDetails(
	UserID INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Name VARCHAR(30),
	Profile VARCHAR(100),
	MedicalHistory VARCHAR(100),
	FOREIGN KEY (UserID) REFERENCES patients(UserID)
);

CREATE TABLE doctors(
	DoctorID INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Name VARCHAR(30),
	Email VARCHAR(30) NOT NULL,
	Password VARCHAR(100) NOT NULL,
	UserType VARCHAR(30) NOT NULL,
	MedicalBackground VARCHAR(100)
);

CREATE TABLE availableslots(
	SlotID INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	DoctorID INT(10),
	DoctorName VARCHAR(30),
	SlotDate DATE,
	SlotTime TIME
	);

CREATE TABLE appointments(
	AppointmentID INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Doctor VARCHAR(30),
	Patient VARCHAR(30),
	AptDate DATE,
	AptTime TIME
);