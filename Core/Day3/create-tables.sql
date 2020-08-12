CREATE TABLE Applicant 
(
  ApplicantId varchar2(4) CONSTRAINT applicant_pk PRIMARY KEY,
  ApplicantName varchar2(30) CONSTRAINT applicant_applicantname_notnull NOT NULL,
  Emailid varchar2(30) CONSTRAINT applicant_emailid_uq UNIQUE,
  Address varchar2(50),
  City varchar2(15)
);

CREATE TABLE Branch
(
  BranchId varchar2(2) CONSTRAINT branch_pk PRIMARY KEY
    CONSTRAINT branch_bid_check CHECK (BranchId like 'B%'),
  BranchName varchar2(30) CONSTRAINT branch_name_notnull NOT NULL
);