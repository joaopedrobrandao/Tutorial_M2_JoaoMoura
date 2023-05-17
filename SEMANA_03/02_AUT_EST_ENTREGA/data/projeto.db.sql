BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "tb_experience" (
	"c_id"	INTEGER NOT NULL,
	"e_id"	INTEGER NOT NULL,
	"e_company_name"	TEXT NOT NULL,
	"e_initial_date"	DATE NOT NULL,
	"e_final_date"	DATE NOT NULL,
	"e_role"	TEXT NOT NULL,
	"e_description"	TEXT NOT NULL,
	PRIMARY KEY("e_id" AUTOINCREMENT),
	FOREIGN KEY("c_id") REFERENCES "tb_curriculum"("c_id")
);
CREATE TABLE IF NOT EXISTS "tb_formation" (
	"c_id"	INTEGER NOT NULL,
	"f_id"	INTEGER NOT NULL,
	"f_course_name"	TEXT NOT NULL,
	"f_initial_date"	DATE NOT NULL,
	"f_final_date"	DATE NOT NULL,
	"f_description"	TEXT NOT NULL,
	PRIMARY KEY("f_id" AUTOINCREMENT),
	FOREIGN KEY("c_id") REFERENCES "tb_curriculum"("c_id")
);
CREATE TABLE IF NOT EXISTS "tb_curriculum" (
	"c_id"	INTEGER NOT NULL,
	"c_name"	TEXT NOT NULL,
	"c_role"	TEXT NOT NULL,
	"c_photo"	TEXT NOT NULL,
	"c_address"	TEXT NOT NULL,
	"c_phone_number"	TEXT NOT NULL,
	"c_email_address"	TEXT NOT NULL,
	"c_description"	TEXT NOT NULL,
	PRIMARY KEY("c_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "tb_achievements" (
	"c_id"	INTEGER NOT NULL,
	"a_id"	INTEGER NOT NULL,
	"a_name"	TEXT NOT NULL,
	"a_date"	DATE NOT NULL,
	"a_description"	TEXT NOT NULL,
	PRIMARY KEY("a_id" AUTOINCREMENT),
	FOREIGN KEY("c_id") REFERENCES "tb_curriculum"("c_id")
);
CREATE TABLE IF NOT EXISTS "tb_skill" (
	"c_id"	INTEGER NOT NULL,
	"s_id"	INTEGER NOT NULL,
	"s_name"	TEXT NOT NULL,
	"s_value"	TEXT NOT NULL,
	PRIMARY KEY("s_id" AUTOINCREMENT),
	FOREIGN KEY("c_id") REFERENCES "tb_curriculum"("c_id")
);
CREATE TABLE IF NOT EXISTS "tb_personality" (
	"c_id"	INTEGER NOT NULL,
	"p_id"	INTEGER NOT NULL,
	"p_name"	TEXT NOT NULL,
	"p_value"	TEXT NOT NULL,
	PRIMARY KEY("p_id" AUTOINCREMENT),
	FOREIGN KEY("c_id") REFERENCES "tb_curriculum"("c_id")
);
COMMIT;
