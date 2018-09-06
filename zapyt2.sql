¬ив≥д ус≥х ф≥льм≥в, режисер≥в, студ≥й;


SELECT "Film".*, "Rezhyser".*, "Studio".*
FROM "Film" INNER JOIN "Rezhyser" ON "Film".id_rezh = "Rezhyser"."ID_rezh" INNER JOIN "Studio" ON "Film".id_stud = "Studio"."ID_stud";
