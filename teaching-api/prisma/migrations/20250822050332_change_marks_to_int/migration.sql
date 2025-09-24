/*
  Warnings:

  - You are about to alter the column `attendance_mark` on the `ExamResults` table. The data in that column could be lost. The data in that column will be cast from `String` to `Int`.
  - You are about to alter the column `average_mark` on the `ExamResults` table. The data in that column could be lost. The data in that column will be cast from `String` to `Float`.
  - You are about to alter the column `childrights_mark` on the `ExamResults` table. The data in that column could be lost. The data in that column will be cast from `String` to `Int`.
  - You are about to alter the column `english_mark` on the `ExamResults` table. The data in that column could be lost. The data in that column will be cast from `String` to `Int`.
  - You are about to alter the column `geography_mark` on the `ExamResults` table. The data in that column could be lost. The data in that column will be cast from `String` to `Int`.
  - You are about to alter the column `history_mark` on the `ExamResults` table. The data in that column could be lost. The data in that column will be cast from `String` to `Int`.
  - You are about to alter the column `kidsclub_mark` on the `ExamResults` table. The data in that column could be lost. The data in that column will be cast from `String` to `Int`.
  - You are about to alter the column `maths_mark` on the `ExamResults` table. The data in that column could be lost. The data in that column will be cast from `String` to `Int`.
  - You are about to alter the column `myanmar_mark` on the `ExamResults` table. The data in that column could be lost. The data in that column will be cast from `String` to `Int`.
  - You are about to alter the column `pss_mark` on the `ExamResults` table. The data in that column could be lost. The data in that column will be cast from `String` to `Int`.
  - You are about to alter the column `science_mark` on the `ExamResults` table. The data in that column could be lost. The data in that column will be cast from `String` to `Int`.
  - You are about to alter the column `social_mark` on the `ExamResults` table. The data in that column could be lost. The data in that column will be cast from `String` to `Int`.
  - You are about to alter the column `srhr_mark` on the `ExamResults` table. The data in that column could be lost. The data in that column will be cast from `String` to `Int`.
  - You are about to alter the column `total_marks` on the `ExamResults` table. The data in that column could be lost. The data in that column will be cast from `String` to `Int`.

*/
-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_ExamResults" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "studentID" INTEGER NOT NULL,
    "session" TEXT NOT NULL,
    "myanmar_mark" INTEGER NOT NULL,
    "myanmar_grade" TEXT NOT NULL,
    "english_mark" INTEGER NOT NULL,
    "english_grade" TEXT NOT NULL,
    "maths_mark" INTEGER NOT NULL,
    "maths_grade" TEXT NOT NULL,
    "science_mark" INTEGER NOT NULL,
    "science_grade" TEXT NOT NULL,
    "social_mark" INTEGER,
    "social_grade" TEXT,
    "geography_mark" INTEGER,
    "geography_grade" TEXT,
    "history_mark" INTEGER,
    "history_grade" TEXT,
    "childrights_mark" INTEGER NOT NULL,
    "childrights_grade" TEXT NOT NULL,
    "srhr_mark" INTEGER NOT NULL,
    "srhr_grade" TEXT NOT NULL,
    "pss_mark" INTEGER NOT NULL,
    "pss_grade" TEXT NOT NULL,
    "kidsclub_mark" INTEGER NOT NULL,
    "kidsclub_grade" TEXT NOT NULL,
    "average_mark" REAL NOT NULL DEFAULT 0,
    "average_grade" TEXT NOT NULL,
    "attendance_mark" INTEGER NOT NULL,
    "attendance_grade" TEXT NOT NULL,
    "total_marks" INTEGER NOT NULL DEFAULT 0,
    "createdOn" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "modifiedOn" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "ExamResults_studentID_fkey" FOREIGN KEY ("studentID") REFERENCES "Student" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_ExamResults" ("attendance_grade", "attendance_mark", "average_grade", "average_mark", "childrights_grade", "childrights_mark", "createdOn", "english_grade", "english_mark", "geography_grade", "geography_mark", "history_grade", "history_mark", "id", "kidsclub_grade", "kidsclub_mark", "maths_grade", "maths_mark", "modifiedOn", "myanmar_grade", "myanmar_mark", "pss_grade", "pss_mark", "science_grade", "science_mark", "session", "social_grade", "social_mark", "srhr_grade", "srhr_mark", "studentID", "total_marks") SELECT "attendance_grade", "attendance_mark", "average_grade", "average_mark", "childrights_grade", "childrights_mark", "createdOn", "english_grade", "english_mark", "geography_grade", "geography_mark", "history_grade", "history_mark", "id", "kidsclub_grade", "kidsclub_mark", "maths_grade", "maths_mark", "modifiedOn", "myanmar_grade", "myanmar_mark", "pss_grade", "pss_mark", "science_grade", "science_mark", "session", "social_grade", "social_mark", "srhr_grade", "srhr_mark", "studentID", "total_marks" FROM "ExamResults";
DROP TABLE "ExamResults";
ALTER TABLE "new_ExamResults" RENAME TO "ExamResults";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
