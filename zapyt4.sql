Вивід фільмів заданого режисера; заданої студії;

SELECT zhanr, triv, id_stud, rik_vyd, id_rezh, nazva_film, budg, "ID_film", "data post" 
	FROM public."Film" JOIN public."Rezhyser" on "Film".id_rezh = "Rezhyser"."ID_rezh"  WHERE public."Rezhyser".prizv like 'q';


SELECT zhanr, triv, id_stud, rik_vyd, id_rezh, nazva_film, budg, "ID_film", "data post" 
	FROM public."Film" JOIN public."Studio" on "Film".id_stud="Studio"."ID_stud"  WHERE public."Studio".nazva_stud like 'x';