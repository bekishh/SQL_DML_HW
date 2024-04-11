-------------------------------------------------------------------------------
-- #1 Display only car’s brands & car’s models & car’s price
-- #1 Таблицадан машиналардын бренд, модель жана бааларын чыгарыныз
-- #1 Отобразите  бренд, модель и цены всех машин

select brand, model, price from cars;
-------------------------------------------------------------------------------
-- #2 Display quantity of all cars
-- #2 Таблицадан бардык машиналардын санын чыгарыныз
-- #2 Отобразите количество всех автомобилей

select count(*) from cars;
-------------------------------------------------------------------------------
-- #3 Display all cars where brand is Hyundai
-- #3 Hyundai брендиндеги бардык машиналарды чыгарыныз
-- #3 Отобразите все автомобили бренда Hyundai

select * from cars where brand = 'Hyundai';
-------------------------------------------------------------------------------
-- #4 Display all Red and Blue cars
-- #4 Бардык кызыл жана кок машиналарды чыгарыныз
-- #4 Отобразите все красные и синие автомобили

select * from cars where color = 'Red' or color = 'Blue';
-------------------------------------------------------------------------------
-- #5 Display all cars where issued year between 2000 and 2010
-- #5 Бардык 2000-жылдан 2010-жылга чейинки чыгарылган машиналарды чыгарыныз
-- #5 Отобразите все автомобили, выпущенные с 2000 по 2010 год

select * from cars where year_of_issue between 2000 and 2010;
-------------------------------------------------------------------------------
-- #6 Display quantity of cars where car’s brand is Chevrolet
-- #6 Chevrolet брендинде канча машина бар экенин чыгарыныз
-- #6 Отобразите количество автомобилей марки  Chevrolet

select count(brand) from cars where brand = 'Chevrolet';
-------------------------------------------------------------------------------
-- #7 Display the average year of manufacture of cars
-- #7 Машиналардын чыгарылган жылдарынын орточо маанисин чыгарыныз
-- #7 Отобразите средне-статистический год выпуска всех машин

select round(avg(year_of_issue)) from cars;
-------------------------------------------------------------------------------
-- #8 Display the cars where brand equals to Audi, Toyota, Kia and Ford
-- #8 Audi, Toyota, Kia жана Ford брендиндеги машиналдарды чыгарыныз
-- #8 Отобразите все автомобили  брендов  Audi, Toyota, Kia и Ford

select * from cars where brand in('Audi', 'Toyota', 'Kia', 'Ford');
-------------------------------------------------------------------------------
-- #9 Display cars where car’s model starts with ’T’
-- #9 Модели 'Т' менен башталган машиналарды чыгарыныз
-- #9 Отобразите автомобили, где модель автомобиля начинается с «Т»

select * from cars where model like 'T%';
-------------------------------------------------------------------------------
-- #10 Display cars where car’s model ends with ‘e’
-- #10 Модели “е” менен буткон машиналарды чыгарыныз
-- #10 Отобразите автомобили, где модель автомобиля заканчивается на «е»

select * from cars where model like '%e';
-------------------------------------------------------------------------------
-- #11 Display brands where contains only 5 symbols
-- #11 Бренди 5 символдон турган машиналарды чыгарыныз
-- #11 Отобразите бренды, содержащие только 5 символов

select * from cars where brand like '_____';
-------------------------------------------------------------------------------
-- #12 Display all amounts where car's brand is Mercedes-Benz
-- #12 Бренди Mercedes-Benz болгон машиналардын жалпы суммасын чыгарыныз
-- #12 Отобразите общую сумму всех автомобилей марки Mercedes-Benz

select count(brand) from cars where brand = 'Mercedes-Benz';
-------------------------------------------------------------------------------
-- #13 Display the most expensive car & the cheapest car
-- #13 Эн кымбат жана эн арзан машинаны чыгарыныз
-- #13 Отобразите самую дорогую  и самую дешевую машину

select min(price) from cars;
select max(price) from cars;
-------------------------------------------------------------------------------
-- #14 Display all cars where car's brand not TOYOTA
-- #14 TOYOTA дан башка машиналарды чыгарыныз
-- #14 Отобразите все автомобили кроме марки  TOYOTA

select * from cars where brand = 'Toyota';
-------------------------------------------------------------------------------
-- #15 Display 10 the most expensive cars
-- #15 Эн кымбат 10 машинаны чыгарыныз
-- #15 Отобразите 10 самых дорогих автомобилей

select * from cars order by price desc limit 10;
-------------------------------------------------------------------------------
-- #16 Display the newest cars between 5th to 15th
-- #16 Эн жаны машиналардыдын 5 тен 15 ке чейинкисин чыгарыныз
-- #16 Отобразите 10 новейших машин с 5-го по 15-е

select * from cars order by year_of_issue desc limit 10 offset 5;
-------------------------------------------------------------------------------
-- #17 Display cars where car's year of issue not between 1995 and 2005
-- #17 1995 - жылдан 2005- ке чейинки машиналарадан башкаларын чыгарыныз
-- #17 Отобразите все автомобили, кроме тех,  которые выпустились между 1995 и 2005

select * from cars where year_of_issue not between 1995 and 2005;
-------------------------------------------------------------------------------
-- #18 Display most cars in one color
-- #18 Бир тустогу саны эн коп болгон машиналарды чыгаргыла
-- #18 Вывести  автомобилей  одного цвета  и наибольшего количества

select * from cars where color = (select color from cars group by color order by count(color) desc limit 1);