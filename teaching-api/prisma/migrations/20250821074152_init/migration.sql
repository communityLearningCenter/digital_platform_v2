-- CreateTable
CREATE TABLE "LearningCenter" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "lcname" TEXT NOT NULL,
    "region" TEXT NOT NULL,
    "createdOn" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "modifiedOn" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- CreateTable
CREATE TABLE "User" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "role" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "createdOn" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "modifiedOn" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- CreateTable
CREATE TABLE "Student" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "lcID" INTEGER NOT NULL,
    "acayr" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "stuID" TEXT NOT NULL,
    "grade" TEXT NOT NULL,
    "gender" TEXT NOT NULL,
    "pwd" TEXT NOT NULL,
    "gurdianName" TEXT NOT NULL,
    "gurdianNRC" TEXT NOT NULL,
    "familyMember" INTEGER NOT NULL,
    "over18Male" INTEGER NOT NULL,
    "over18Female" INTEGER NOT NULL,
    "under18Male" INTEGER NOT NULL,
    "under18Female" INTEGER NOT NULL,
    "stuStatus" TEXT NOT NULL,
    "acaReview" TEXT NOT NULL,
    "kidsClubStu" TEXT NOT NULL,
    "dropoutStu" TEXT NOT NULL,
    "createdOn" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "modifiedOn" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "Student_lcID_fkey" FOREIGN KEY ("lcID") REFERENCES "LearningCenter" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "ExamResults" (
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
    "createdOn" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "modifiedOn" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "ExamResults_studentID_fkey" FOREIGN KEY ("studentID") REFERENCES "Student" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "LearningCenter_lcname_key" ON "LearningCenter"("lcname");

-- CreateIndex
CREATE UNIQUE INDEX "Student_stuID_key" ON "Student"("stuID");
