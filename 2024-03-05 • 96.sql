-- 2024 subat ayının 15ınde bimden 680 lıralık alısverıs yapılmıstır aynı gun memleketten dayım 5k para gondermıstır
INSERT INTO butce
VALUES (NULL, 'BİM Alışveriş',6,680,'2024-02-15');
INSERT INTO butce
VALUES (NULL, 'Dayımın Gönderdiği Para',3,5000,'2024-02-15');

-- 2025-07-15 tarıhınde yapılan tum ıslemlerı ıptal edın
DELETE FROM butce WHERE tarih = '2025-07-15';


-- tum yakıt masraflarını 150tl arttırın (eskı degerıne ekleyın)
UPDATE butce
SET miktar=miktar+150
WHERE tanim = 'Yakıt Masrafı';


-- butce tablosundaki tanim,miktar,tarih sütünlarını getir
SELECT tanim,miktar,tarih
FROM butce;


-- tur tablosundakı bütün türleri getirin
SELECT * FROM tur;


-- butce tablosunu kullanarak kaç farklı tarihte işlem gerçekleştiğini gösteriniz.
SELECT DISTINCT tarih
FROM butce; 


-- butce tablosunda kaç tane kayıt olduğunu getirin.
SELECT COUNT (*)
FROM butce;


-- tur_id 1 olan kayıtları getir
SELECT *
FROM butce
WHERE tur_id = 1;


-- yapılan işlemlerden miktarı 10k üzerinde olan kayıtları getirin.
SELECT *
FROM butce
WHERE miktar > 10000;


-- yapılan işlemlerden miktarı 20k ile 25k arasını alın ve kayıtların tanim,miktar ve tarihlerini getirin
SELECT tanim,miktar,tarih
FROM butce
WHERE miktar > 20000 AND miktar <= 25000;


-- tur_id 1 olmayan kayıtların tamamını getirin
SELECT *
FROM butce
WHERE tur_id != 1;


-- türü 6 ve 9 olanlar kayıtlar
SELECT * 
FROM butce
WHERE tur_id = 6 OR tur_id = 9;


-- between kullanarak 2024te yapılan işlemleri getirin.
SELECT *
FROM butce
WHERE tarih BETWEEN '2024-01-01' AND '2024-12-31';


-- tur_id 6,9,15 olanlar.
SELECT *
FROM butce
WHERE tur_id IN (6,9,15);


-- mayıs ayından oncekı 250-600 arası harcamalar
SELECT *
FROM butce
WHERE tarih < '2024-05*01' AND (miktar BETWEEN 250 AND 600);


-- yapılan işlemleri tur_id göre azalan,
-- tur_id aynı olanları kendi arasında tarihe göre artan şekilde sıralama
SELECT *
FROM butce
ORDER BY tur_id DESC, tarih ASC;


-- butce tablosundaki ilk 20 kayıt.
SELECT *
FROM butce
LIMIT 20;


-- butce tablosaundaki kayıtları tarihe göre artan şekilde sıralayıp
-- ilk yirmi kaydı getirin.
SELECT *
FROM butce
ORDER BY tarih ASC
LIMIT 20;


-- 2024 yılı içindeki en düşük işleme sahip işlemin
-- tanım,miktar ve tarih bilgilerini getirin