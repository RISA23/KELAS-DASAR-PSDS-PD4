--Mengakses tabel customer
SELECT * FROM Customer c 
--mengakses tabel customer variabel FirstName,LastName
select i.FirstName,i.Lastname from customer i
select c.FirstName,c.LastName from customer c
--menampilkan country di tabel customer
select c.country from Customer c
--menampilkan country di tabel customer dengan fungsi DISTINCT
select DISTINCT (c.country) From Customer c
--menampilkan semua data dari negara brazil
select * from Customer c
where c.Country = 'Brazil'

--menampilkan semua data dari negara brazil dan City Sao Paulo
select * from Customer c
where c.Country = 'Brazil' and c.City = 'São Paulo'

--menampilkan semua data dari negara brazil atau negara jerman
select * from Customer c
where c.Country = 'Brazil' OR c.Country = 'Germany'

--menampilkan semua data dari negara brazil dan negara jerman
select * from Customer c
where c.Country IN ('Brazil','Germany')

--menghitung jumlah total.
select Sum(i.Total) from Invoice i 

--menghitung jumlah average.
select avg(i.Total) from Invoice i 

--nilai minimum data.
select min(i.Total) as NilaiMinimum from Invoice i 
select min(i.Total)NilaiMinimum from Invoice i 
--nilai maxnmum data.
select max(i.Total) as NIlaiMaximum from Invoice i 
select max(i.Total)NIlaiMaximum from Invoice i 