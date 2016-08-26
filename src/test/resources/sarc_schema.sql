--------------------------------------------------------
-- Archivo creado  - viernes-julio-08-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table C006T_TIPO_OFICINA
--------------------------------------------------------

  CREATE TABLE "APPSARC"."C006T_TIPO_OFICINA" 
   (	"C006PK_TIPO_OFICINA" NUMBER(19,0), 
	"CO_OFICINA" VARCHAR2(5 CHAR), 
	"TX_DESCRIPCION" VARCHAR2(200 CHAR), 
	"FE_FIN" DATE, 
	"FE_INICIO" DATE, 
	"NB_OFICINA" VARCHAR2(50 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
   ;
--------------------------------------------------------
--  DDL for Index SYS_C0038203
--------------------------------------------------------

  CREATE UNIQUE INDEX "APPSARC"."SYS_C0038203" ON "APPSARC"."C006T_TIPO_OFICINA" ("C006PK_TIPO_OFICINA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
   ;
--------------------------------------------------------
--  DDL for Index SYS_C0038204
--------------------------------------------------------

  CREATE UNIQUE INDEX "APPSARC"."SYS_C0038204" ON "APPSARC"."C006T_TIPO_OFICINA" ("CO_OFICINA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
   ;
--------------------------------------------------------
--  Constraints for Table C006T_TIPO_OFICINA
--------------------------------------------------------

  ALTER TABLE "APPSARC"."C006T_TIPO_OFICINA" ADD UNIQUE ("CO_OFICINA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
    ENABLE;
  ALTER TABLE "APPSARC"."C006T_TIPO_OFICINA" ADD PRIMARY KEY ("C006PK_TIPO_OFICINA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
    ENABLE;
  ALTER TABLE "APPSARC"."C006T_TIPO_OFICINA" MODIFY ("NB_OFICINA" NOT NULL ENABLE);
  ALTER TABLE "APPSARC"."C006T_TIPO_OFICINA" MODIFY ("FE_INICIO" NOT NULL ENABLE);
  ALTER TABLE "APPSARC"."C006T_TIPO_OFICINA" MODIFY ("CO_OFICINA" NOT NULL ENABLE);
  ALTER TABLE "APPSARC"."C006T_TIPO_OFICINA" MODIFY ("C006PK_TIPO_OFICINA" NOT NULL ENABLE);

--------------------------------------------------------
-- Archivo creado  - viernes-julio-08-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table C067T_OFICINA
--------------------------------------------------------

  CREATE TABLE "APPSARC"."C067T_OFICINA" 
   (	"C067PK_OFICINA" NUMBER(19,0), 
	"CO_OFICINA" VARCHAR2(5 CHAR), 
	"TX_DESCRIPCION" VARCHAR2(500 CHAR), 
	"DI_UBICACION" VARCHAR2(500 CHAR), 
	"FE_FIN" DATE, 
	"FE_GACETA" DATE, 
	"FE_INICIO" DATE, 
	"NB_OFICINA" VARCHAR2(50 CHAR), 
	"NU_GACETA" NUMBER(10,0), 
	"C067PK_OFICINADEPENDE" NUMBER(19,0), 
	"C006PK_TIPO_OFICINA" NUMBER(19,0), 
	"CO_GEOGRAFICO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
   ;
--------------------------------------------------------
--  DDL for Index SYS_C0038235
--------------------------------------------------------

  CREATE UNIQUE INDEX "APPSARC"."SYS_C0038235" ON "APPSARC"."C067T_OFICINA" ("C067PK_OFICINA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
   ;
--------------------------------------------------------
--  DDL for Index SYS_C0038236
--------------------------------------------------------

  CREATE UNIQUE INDEX "APPSARC"."SYS_C0038236" ON "APPSARC"."C067T_OFICINA" ("CO_OFICINA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
   ;
--------------------------------------------------------
--  Constraints for Table C067T_OFICINA
--------------------------------------------------------

  ALTER TABLE "APPSARC"."C067T_OFICINA" MODIFY ("C067PK_OFICINA" NOT NULL ENABLE);
  ALTER TABLE "APPSARC"."C067T_OFICINA" MODIFY ("CO_OFICINA" NOT NULL ENABLE);
  ALTER TABLE "APPSARC"."C067T_OFICINA" MODIFY ("DI_UBICACION" NOT NULL ENABLE);
  ALTER TABLE "APPSARC"."C067T_OFICINA" MODIFY ("FE_INICIO" NOT NULL ENABLE);
  ALTER TABLE "APPSARC"."C067T_OFICINA" MODIFY ("NB_OFICINA" NOT NULL ENABLE);
  ALTER TABLE "APPSARC"."C067T_OFICINA" MODIFY ("CO_GEOGRAFICO" NOT NULL ENABLE);
  ALTER TABLE "APPSARC"."C067T_OFICINA" MODIFY ("C006PK_TIPO_OFICINA" NOT NULL ENABLE);
  ALTER TABLE "APPSARC"."C067T_OFICINA" ADD PRIMARY KEY ("C067PK_OFICINA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
    ENABLE;
  ALTER TABLE "APPSARC"."C067T_OFICINA" ADD UNIQUE ("CO_OFICINA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
    ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table C067T_OFICINA
--------------------------------------------------------

  ALTER TABLE "APPSARC"."C067T_OFICINA" ADD CONSTRAINT "FK1CF14547D7951ED0" FOREIGN KEY ("C067PK_OFICINADEPENDE")
	  REFERENCES "APPSARC"."C067T_OFICINA" ("C067PK_OFICINA") ENABLE;


--------------------------------------------------------
-- Archivo creado  - viernes-julio-08-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table X054T_MUDANZA_OURC
--------------------------------------------------------

  CREATE TABLE "APPSARC"."X054T_MUDANZA_OURC" 
   (	"X054PK_MUDANZA_OURC" NUMBER, 
	"CO_OURC_VIEJA" NUMBER, 
	"CO_OURC_NUEVA" NUMBER, 
	"FE_INICIO" DATE, 
	"FE_FIN" DATE, 
	"MOTIVO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
   ;
--------------------------------------------------------
--  Constraints for Table X054T_MUDANZA_OURC
--------------------------------------------------------

  ALTER TABLE "APPSARC"."X054T_MUDANZA_OURC" MODIFY ("X054PK_MUDANZA_OURC" NOT NULL ENABLE);
  ALTER TABLE "APPSARC"."X054T_MUDANZA_OURC" MODIFY ("CO_OURC_VIEJA" NOT NULL ENABLE);
  ALTER TABLE "APPSARC"."X054T_MUDANZA_OURC" MODIFY ("CO_OURC_NUEVA" NOT NULL ENABLE);
  ALTER TABLE "APPSARC"."X054T_MUDANZA_OURC" MODIFY ("FE_INICIO" NOT NULL ENABLE);


--------------------------------------------------------
-- Archivo creado  - viernes-julio-08-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table X055T_HISTORICO_NOMBRE
--------------------------------------------------------

  CREATE TABLE "APPSARC"."X055T_HISTORICO_NOMBRE" 
   (	"X055PK_HISTORICO_NOMBRE" NUMBER, 
	"CO_OFICINA" NUMBER, 
	"FE_CAMBIO_NOMBRE" DATE, 
	"NB_VIEJO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
   ;
--------------------------------------------------------
--  DDL for Index X055T_HISTORICO_NOMBRE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APPSARC"."X055T_HISTORICO_NOMBRE_PK" ON "APPSARC"."X055T_HISTORICO_NOMBRE" ("X055PK_HISTORICO_NOMBRE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
   ;
--------------------------------------------------------
--  Constraints for Table X055T_HISTORICO_NOMBRE
--------------------------------------------------------

  ALTER TABLE "APPSARC"."X055T_HISTORICO_NOMBRE" ADD CONSTRAINT "X055PK_HISTORICO_NOMBRE" PRIMARY KEY ("X055PK_HISTORICO_NOMBRE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
    ENABLE;
  ALTER TABLE "APPSARC"."X055T_HISTORICO_NOMBRE" MODIFY ("NB_VIEJO" NOT NULL ENABLE);
  ALTER TABLE "APPSARC"."X055T_HISTORICO_NOMBRE" MODIFY ("FE_CAMBIO_NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "APPSARC"."X055T_HISTORICO_NOMBRE" MODIFY ("CO_OFICINA" NOT NULL ENABLE);
  ALTER TABLE "APPSARC"."X055T_HISTORICO_NOMBRE" MODIFY ("X055PK_HISTORICO_NOMBRE" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table X055T_HISTORICO_NOMBRE
--------------------------------------------------------

  ALTER TABLE "APPSARC"."X055T_HISTORICO_NOMBRE" ADD CONSTRAINT "C067FK_X055FK_OFICINA" FOREIGN KEY ("CO_OFICINA")
	  REFERENCES "APPSARC"."C067T_OFICINA" ("C067PK_OFICINA") ENABLE;
