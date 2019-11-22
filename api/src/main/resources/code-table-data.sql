-- Insert data for Student schema code tables

SET DEFINE OFF;

-- Access Channel Code
Insert into STUDENT.ACCESS_CHANNEL_CODE (ACCESS_CHANNEL_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('OSPR','Online Student PEN Retrieval','The Online Student PEN Retrieval (OSPR) application used by Students to get their PEN value. EDUC staff use the app to fulfill retrieval reqeusts.',1,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));
Insert into STUDENT.ACCESS_CHANNEL_CODE (ACCESS_CHANNEL_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('STS','Student Transcripts Service','The Student Transcript Service that is used by Students to either get a copy of their high-school transcript or to send copies to schools, employers, etc.',2,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));

-- Address Type Code
Insert into STUDENT.ADDRESS_TYPE_CODE (ADDRESS_TYPE_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('MAIL','Mailing Address','An address that can receive posted mail.',1,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));
Insert into STUDENT.ADDRESS_TYPE_CODE (ADDRESS_TYPE_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('RES','Residential Address ','An address that describes an individual’s principal residence.',2,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));
Insert into STUDENT.ADDRESS_TYPE_CODE (ADDRESS_TYPE_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('DEL','Delivery Address','An address with sufficient detail to allow delivery of physical goods. ',3,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));
Insert into STUDENT.ADDRESS_TYPE_CODE (ADDRESS_TYPE_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('PHYS','Physical Address','The relative or direct location of a site or street intersection on the earth. Direct location is represented by coordinates (e.g., latitude, longitude) in a coordinate reference system. Relative location is represented by a site or street address. ',4,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));

-- Data Source Code
Insert into STUDENT.DATA_SOURCE_CODE (DATA_SOURCE_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('MYED','My Education School SIS','Data came from the My Education Student Information System used in the BC public schools.',1,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));
Insert into STUDENT.DATA_SOURCE_CODE (DATA_SOURCE_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('DIRECT','Direct from the client','Data was provided directly by the client through a web application.',2,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));
Insert into STUDENT.DATA_SOURCE_CODE (DATA_SOURCE_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('BCSC','BC Services Card','Data originated from a BC Services Card, maintained by IDIM/CITZ.',3,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));
Insert into STUDENT.DATA_SOURCE_CODE (DATA_SOURCE_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('OTHERK12','Other K-12 School','Data came a K-12 school system other than the MyEducation system.',4,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));
Insert into STUDENT.DATA_SOURCE_CODE (DATA_SOURCE_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('BCPSI','Post Secondary Institution','Data came from a BC Post Secondary Institution.',5,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));

-- Gender Code
Insert into STUDENT.GENDER_CODE (GENDER_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('F','Female','Persons whose current gender is female. This includes cisgender and transgender persons who are female.',1,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));
Insert into STUDENT.GENDER_CODE (GENDER_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('M','Male','Persons whose current gender is male. This includes cisgender and transgender persons who are male.',2,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));
Insert into STUDENT.GENDER_CODE (GENDER_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('X','Gender Diverse','Persons whose current gender is not exclusively as male or female. It includes people who do not have one gender, have no gender, are non-binary, or are Two-Spirit.',3,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));
Insert into STUDENT.GENDER_CODE (GENDER_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('U','Unknown','Persons whose gender is not known at the time of data collection. It may or may not get updated at a later point in time. X is different than U.',4,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));

-- Identity Type Code
Insert into STUDENT.IDENTITY_TYPE_CODE (IDENTITY_TYPE_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('BCSC','BC Services Card','Digital Identity via a BC Services Card, serviced by CITZ/IDIM.',1,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));
Insert into STUDENT.IDENTITY_TYPE_CODE (IDENTITY_TYPE_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('BASIC','Basic BCeID','Digital Identity via a Basic BCeID, serviced by CITZ/IDIM.',2,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));
Insert into STUDENT.IDENTITY_TYPE_CODE (IDENTITY_TYPE_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('PERSONAL','Personal BCeID','Digital Identity via a Personal BCeID, serviced by CITZ/IDIM.',3,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));

-- PEN Retrieval Request Status Code
Insert into STUDENT.PEN_RETRIEVAL_REQUEST_STATUS_CODE (PEN_RETRIEVAL_REQUEST_STATUS_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('DRAFT','Draft','Request created but not yet submitted.',1,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));
Insert into STUDENT.PEN_RETRIEVAL_REQUEST_STATUS_CODE (PEN_RETRIEVAL_REQUEST_STATUS_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('INITREV','First Review','Request has been submitted and is now in it''s first review by staff.',2,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));
Insert into STUDENT.PEN_RETRIEVAL_REQUEST_STATUS_CODE (PEN_RETRIEVAL_REQUEST_STATUS_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('RETURNED','Returned for more information','Request has been returned to the submitter for more information.',3,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));
Insert into STUDENT.PEN_RETRIEVAL_REQUEST_STATUS_CODE (PEN_RETRIEVAL_REQUEST_STATUS_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('SUBSREV','Subsequent Review','Request has been resubmitted with more info and is now in another review by staff.',4,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));
Insert into STUDENT.PEN_RETRIEVAL_REQUEST_STATUS_CODE (PEN_RETRIEVAL_REQUEST_STATUS_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('AUTO','Completed by auto-match','Request was completed by the auto-match process, without staff review.',5,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));
Insert into STUDENT.PEN_RETRIEVAL_REQUEST_STATUS_CODE (PEN_RETRIEVAL_REQUEST_STATUS_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('MANUAL','Completed by manual match','Request was completed by staff determining the matching PEN.',6,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));
Insert into STUDENT.PEN_RETRIEVAL_REQUEST_STATUS_CODE (PEN_RETRIEVAL_REQUEST_STATUS_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('REJECTED','Rejected','Request was rejected by staff for reasons provided.',7,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));
Insert into STUDENT.PEN_RETRIEVAL_REQUEST_STATUS_CODE (PEN_RETRIEVAL_REQUEST_STATUS_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('UNMATCHED','Unable to match','Request could not be matched to a PEN.',8,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));

-- Sex Code
Insert into STUDENT.SEX_CODE (SEX_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('F','Female','Persons who are of female sex as assigned at birth.',1,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));
Insert into STUDENT.SEX_CODE (SEX_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('M','Male','Persons who were reported as being of male sex as assigned at birth.',2,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));
Insert into STUDENT.SEX_CODE (SEX_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('I','Intersex','Persons who are intersex. Intersex people are born with any of several variations in sex characteristics, including chromosomes, gonads, sex hormones, or genitals that do not fit with typical conceptions of "male" or "female" bodies.',3,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));
Insert into STUDENT.SEX_CODE (SEX_CODE,LABEL,DESCRIPTION,DISPLAY_ORDER,EFFECTIVE_DATE,EXPIRY_DATE,CREATE_USER,CREATE_DATE,UPDATE_USER,UPDATE_DATE) values ('U','Unknown','Persons whose sex is not known at the time of data collection. It may or may not get updated at a later point in time.',4,to_date('2020-01-01','YYYY-MM-DD'),to_date('2099-12-31','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'),'IDIR/GRCHWELO',to_date('2019-11-07','YYYY-MM-DD'));

