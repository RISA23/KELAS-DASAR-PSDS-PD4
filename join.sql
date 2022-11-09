create table db_mahasiswa (
	NIM VARCHAR (10),
	NAMA VARCHAR (30)
)

create table db_asal_kota(
	NIM VARCHAR (10),
	Asal_kota VARCHAR (30)
)

--input data
insert into db_mahasiswa (NIM,Nama)
values	('2100015049','Wisnu Catur R'),
		('2100015041','Sindy Mei Marantika'),
		('2215015035','Hasan Darmawan'),
		('2100015051','Saiful Andika')


insert into db_asal_kota (NIM,Asal_kota)
values	("2100015049","Pasuruan"),
		("2100015041","Oku Timur"),
		("1800015053","Ciamis"),
		("2100015037","Bandung"),
		("2106015030","Kudus"),
		("2100015002","Bogor")
		
insert into db_mahasiswa (NIM)
values	("1800015053"),
		("2100015037")
		
insert into db_asal_kota (NIM)
values	("2200015023"),
		("2200015012")
		
--inner join
select m.NIM, m.Nama, a.Asal_kota
from db_mahasiswa m
inner join db_asal_kota a
on m.NIM = a.NIM
--inner join with order
select m.NIM, m.Nama, a.Asal_kota
from db_mahasiswa m
inner join db_asal_kota a
on m.NIM = a.NIM
order by a.Asal_kota asc
--left join
select m.NIM, m.Nama, a.Asal_kota
from db_mahasiswa m
left join db_asal_kota a
on m.NIM = a.NIM
--right join
select m.NIM, m.Nama, a.Asal_kota
from db_mahasiswa m
right join db_asal_kota a
on m.NIM = a.NIM

