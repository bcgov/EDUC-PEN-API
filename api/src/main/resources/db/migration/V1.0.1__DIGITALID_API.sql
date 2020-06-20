CREATE TABLE DIGITAL_ID_EVENT
(
    EVENT_ID      RAW(16)                             NOT NULL,
    EVENT_PAYLOAD VARCHAR(4000)                       NOT NULL,
    EVENT_STATUS  VARCHAR2(50)                        NOT NULL,
    EVENT_TYPE    VARCHAR2(100)                       NOT NULL,
    SAGA_ID       RAW(16),
    EVENT_OUTCOME VARCHAR2(100)                       NOT NULL,
    REPLY_CHANNEL VARCHAR2(100),
    CREATE_USER   VARCHAR(32)                         NOT NULL,
    CREATE_DATE   TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    UPDATE_USER   VARCHAR(32)                         NOT NULL,
    UPDATE_DATE   TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT DIGITAL_ID_EVENT_EVENT_PK PRIMARY KEY (EVENT_ID)
);
CREATE INDEX DIGITAL_ID_EVENT_EVENT_STATUS_IDX ON DIGITAL_ID_EVENT (EVENT_STATUS) TABLESPACE API_DIGITAL_ID_IDX;
CREATE INDEX DIGITAL_ID_EVENT_SAGA_ID_IDX ON DIGITAL_ID_EVENT (SAGA_ID) TABLESPACE API_DIGITAL_ID_IDX;
CREATE INDEX DIGITAL_ID_EVENT_EVENT_TYPE_IDX ON DIGITAL_ID_EVENT (EVENT_TYPE) TABLESPACE API_DIGITAL_ID_IDX;


CREATE TABLE DIGITAL_ID_SHEDLOCK
(
    NAME       VARCHAR(64),
    LOCK_UNTIL TIMESTAMP(3) NULL,
    LOCKED_AT  TIMESTAMP(3) NULL,
    LOCKED_BY  VARCHAR(255),
    CONSTRAINT DIGITAL_ID_SHEDLOCK_PK PRIMARY KEY (NAME)
);
COMMENT ON TABLE DIGITAL_ID_SHEDLOCK IS 'This table is used to achieve distributed lock between pods, for schedulers.';