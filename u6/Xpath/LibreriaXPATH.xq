(:Mostrar el nodo raiz
/booksstore:)

(:Mostrar los titulos de los libros:)
(:/bookstore/book/title:)

(://title:)
(:Titulos de los libros:)
(://title/string():)

(:ISBN de los libros:)
(://title/@isbn/string():)

(:mostrar el idioma y el ISBN:)
(://@lang|//@isbn//title:)

(:Todos los atributos:)
(://@*:)

(:Todos los elementos:)
(://*:)

(:Titulos cuyo precio sea mayor de 35€:)
(://book[price>35]/title:)

(:Devuelve los <title> que tengan definido el atributo lang y que valga ‘en’:)
(://title[@lang='en']:)

(:Devuelve el primer elemento <book> que se encuentre dentro de un <bookstore>:)
(:/bookstore/book[1]:)

(:Devuelve el último elemento <book> que se encuentre dentro de un <bookstore>:)
(:/bookstore/book[last()-1]:)

(:Devuelve los elementos <book> que se encuentren dentro de un <bookstore> y que sean el primero o
el segundo:)
(:/bookstore/book[position()<3]:)

(:Devuelve los elementos <title> que tengan definido el atributo lang:)
(://title[@lang]:)

(:Devuelve los elementos <title> que no tengan definido el atributo lang:)
(://title[not(@lang)]:)

(:Devuelve los elementos <book> que tengan un elemento hijo <price>:)
(://book[not(price)]:)

(:Devuelve los elementos <title> que se encuentren dentro de elementos <book> que contengan un
elemento <price> con valor superior a 35:)
(://book[price>35]/title:)

(:Devuelve los elementos <title> que tengan el texto de ‘Harry Potter’:)
(://title[.='Harry Potter']:)

(:Devuelve todos los atributos de <book>:)
(://book/@*:)

(:Devuelve todos los elementos que se encuentren dentro de <bookstore>:)
(:/bookstore/@*:)

(:Devuelve cualquier elemento <title> que contenga algún atributo:)
(://title/@*:)
(:Ejes:)
(://book[price=29.99]/ancestor::*
//book[price=29.99]/title/following::*
//book[price=29.99]/title/following-sibling::*:)

(:Funciones:)
(:last->Mostrar el ultimo libro:)
(://book[last()]:)
(:last-> Mostrar el titulo del ultimo libro:)
(://book[last()]/title:)
(:Position-> Posicion que ocupa el libro 'Aprendiendo Java':)
(://book[position()=3]:)
(:Count-> Contar cuantos nodos title hay:)
(:count(//title):)
(:Count-> Contar cuantos nodos title hay:)
(:count(//book[price<20]):)
(:count(//price[.<20]):)
(:SUM->Sumar los precios de los libros:)
(:sum(//book/price):)




























