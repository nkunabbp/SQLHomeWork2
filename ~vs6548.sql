USE Books_En

-- SELECT


-- 1. Показать категории всех книг, причем так, чтобы названия категорий не повторялись.
/*SELECT DISTINCT [Category]
FROM Books_En*/

-- 2. Показать темы всех книг, причем так, чтобы названия тем не повторялись.
/*SELECT DISTINCT [Topic]
FROM Books_En*/

-- 3. Показать код, название книг и цену за 1 страницу
/*SELECT [Code] , [Name] , [Price]/[Pages] AS [Price for 1 page]
FROM Books_En
WHERE [Pages] > 0
ORDER BY [Price for 1 page] DESC*/



-- WHERE, ORDER BY, IN, BETWEEN:


-- 1.	Показать все книги, выпущенные любым издательством кроме издательства «Питер» и при этом дешевле 20 р.
/*SELECT [Name], [Code], [Topic], [Price], [Publisher]
FROM Books_En
WHERE [Publisher] != 'Peter' AND [Price] < 20
ORDER BY [Price] DESC*/

--2. Показать все книги, выпущенные любым издательством кроме издательства «Питер» и при этом с ценой в диапазоне от 20 до 40 р.
/*SELECT [Name], [Code], [Topic], [Price], [Publisher]
FROM Books_En
WHERE [Publisher] != 'Peter' AND [Price] BETWEEN 20 AND 40
ORDER BY [Price] DESC*/

-- 3. Показать все книги, выпущенные любым издательством кроме издательства «Питер» и при этом с ценой либо в диапазоне от 20 до 40 р., либо менее 10 р.
/*SELECT [Name], [Code], [Topic], [Price], [Publisher]
FROM Books_En
WHERE [Publisher] != 'Peter' AND 
		[Price] BETWEEN 20 AND 40 OR
		[Price] < 10
ORDER BY [Price] DESC*/

-- 4. Показать все книги, цена одной страницы которых меньше 10 копеек.
/*SELECT [Code] , [Name] , [Price]/[Pages] AS [PriceFor1Page]
FROM Books_En
WHERE [Pages] > 0 AND [Price]/[Pages] < 0.10
ORDER BY [PriceFor1Page] DESC*/

-- 5. Показать все книги, которые являются либо учебниками, либо книгами по теме «C&C++», и при этом изданными либо издательством «Питер», либо издательством «DiaSoft»
-- не знаю какие учебники поэтому выбрала OtherBooks
/*SELECT [Code], [Name], [Category], [Publisher]
FROM Books_En
WHERE [Category] IN (N'C & C ++' , 'other books') AND [Publisher] IN('DiaSoft', 'Peter')
ORDER BY [Category] DESC*/

