/*
  Warnings:

  - Added the required column `attendance_grade` to the `ExamResults` table without a default value. This is not possible if the table is not empty.
  - Added the required column `attendance_mark` to the `ExamResults` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_ExamResults" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "studentID" INTEGER NOT NULL,
    "session" TEXT NOT NULL,
    "myanmar_mark" TEXT NOT NULL,
    "myanmar_grade" TEXT NOT NULL,
    "english_mark" TEXT NOT NULL,
    "english_grade" TEXT NOT NULL,
    "maths_mark" TEXT NOT NULL,
    "maths_grade" TEXT NOT NULL,
    "science_mark" TEXT NOT NULL,
    "science_grade" TEXT NOT NULL,
    "social_mark" TEXT,
    "social_grade" TEXT,
    "geography_mark" TEXT,
    "geography_grade" TEXT,
    "history_mark" TEXT,
    "history_grade" TEXT,
    "childrights_mark" TEXT NOT NULL,
    "childrights_grade" TEXT NOT NULL,
    "srhr_mark" TEXT NOT NULL,
    "srhr_grade" TEXT NOT NULL,
    "pss_mark" TEXT NOT NULL,
    "pss_grade" TEXT NOT NULL,
    "kidsclub_mark" TEXT NOT NULL,
    "kidsclub_grade" TEXT NOT NULL,
    "average_mark" TEXT NOT NULL,
    "average_grade" TEXT NOT NULL,
    "attendance_mark" TEXT NOT NULL,
    "attendance_grade" TEXT NOT NULL,
    "createdOn" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "modifiedOn" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "ExamResults_studentID_fkey" FOREIGN KEY ("studentID") REFERENCES "Student" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_ExamResults" ("average_grade", "average_mark", "childrights_grade", "childrights_mark", "createdOn", "english_grade", "english_mark", "geography_grade", "geography_mark", "history_grade", "history_mark", "id", "kidsclub_grade", "kidsclub_mark", "maths_grade", "maths_mark", "modifiedOn", "myanmar_grade", "myanmar_mark", "pss_grade", "pss_mark", "science_grade", "science_mark", "session", "social_grade", "social_mark", "srhr_grade", "srhr_mark", "studentID") SELECT "average_grade", "average_mark", "childrights_grade", "childrights_mark", "createdOn", "english_grade", "english_mark", "geography_grade", "geography_mark", "history_grade", "history_mark", "id", "kidsclub_grade", "kidsclub_mark", "maths_grade", "maths_mark", "modifiedOn", "myanmar_grade", "myanmar_mark", "pss_grade", "pss_mark", "science_grade", "science_mark", "session", "social_grade", "social_mark", "srhr_grade", "srhr_mark", "studentID" FROM "ExamResults";
DROP TABLE "ExamResults";
ALTER TABLE "new_ExamResults" RENAME TO "ExamResults";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
