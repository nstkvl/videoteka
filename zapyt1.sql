Реалізувати добавлення і вилучення фільмів, режисерів, студій;

INSERT INTO public."Rezhyser"(
	"ID_rezh", prizv, imya, rik_nar, rik_smer, gromad)
	VALUES (1, 'q', 'e', '4', '5', 'i');
DELETE FROM public."Rezhyser"
	WHERE prizv='q';

INSERT INTO public."Studio"(
	"ID_stud", nazva_stud, id_adress, kont_os)
	VALUES (1, 'x', 1, 'c');
DELETE FROM public."Studio"
	WHERE "ID_stud"=1;

INSERT INTO public."Film"(
	zhanr, triv, id_stud, rik_vyd, id_rezh, nazva_film, budg, "ID_film", "data post")
	VALUES ('r', 2, 1, 34, 1, 'c', 56, 2, '8-8-90');
DELETE FROM public."Film"
	WHERE "ID_film"=1;


