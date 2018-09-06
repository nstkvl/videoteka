Пошук по частині назві фільму, студії чи прізвища режисера;

SELECT zhanr, triv, id_stud, rik_vyd, id_rezh, nazva_film, budg, "ID_film", "data post"
	FROM public."Film" where nazva_film like '%c%';