CREATE TABLE Applicant 
(
  ApplicantId     varchar(4)   CONSTRAINT applicant_pk                     PRIMARY KEY,
  ApplicantName   varchar(30)  CONSTRAINT applicant_applicantname_notnull  NOT NULL,
  Emailid         varchar(30)  CONSTRAINT applicant_emailid_uq UNIQUE,
  Address         varchar(50),
  City            varchar(15)
);

CREATE TABLE Branch
(
  BranchId        varchar(2)   CONSTRAINT branch_pk                        PRIMARY KEY
                                CONSTRAINT branch_bid_check                 CHECK (BranchId like 'B%'),
  BranchName      varchar(30)  CONSTRAINT branch_name_notnull              NOT NULL
);

