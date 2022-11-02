-- Membuat tabel NIlai MK_Kalkulus
create table MK_Kalkulus (
	NIM Varchar(10),
	Nama Varchar(30),
	UTS Integer,
	UAS Integer
	)
-- Input Data
insert into MK_Kalkulus (NIM,Nama,UTS,UAS)
values	("2100015049","Wisnu Catur",70,90),
		("2100015041","Sindy Mei Marantika",70,70),
		("2100015006","Januar Nur Rasyid",60,70),
		("2100015037","Lisa Nessa Safitri",80,80)
		
-- Melihat tabel	
select *,((UTS+UAS)/2) as Nilai_Akhir from MK_Kalkulus
-- Melihat Rata-Rata
select avg(((UTS+UAS)/2)) from MK_Kalkulus
-- Menampilkan data diatas rata-rata (rata rata= 73,75)
select *,((UTS+UAS)/2) as Nilai_Akhir from MK_Kalkulus
where Nilai_Akhir > 73.75

--Input DATA 
insert into MK_Kalkulus (NIM,Nama,UTS,UAS)
values	
		("2215015035","Hasan Darmawan",40,40)
-- Melihat data
select *,((UTS+UAS)/2) as Nilai_Akhir from MK_Kalkulus
-- Melihat Rata-Rata nilai akhir
select avg(((UTS+UAS)/2)) from MK_Kalkulus
-- Sub Query menampilkan data lebih dari rata-rata
select *,((UTS+UAS)/2) as Nilai_Akhir from MK_Kalkulus
where Nilai_Akhir > (select avg(((UTS+UAS)/2)) from MK_Kalkulus)
-- Input data
insert into MK_Kalkulus (NIM,Nama,UTS,UAS)
values	
		("2200015001","Saiful Andika",100,50)
		
select *,((UTS+UAS)/2) as Nilai_Akhir from MK_Kalkulus
where Nilai_Akhir > (select avg(((UTS+UAS)/2)) from MK_Kalkulus)