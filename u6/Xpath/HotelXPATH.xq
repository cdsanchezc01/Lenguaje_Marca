(:Nombres de los hoteles con 4 o más estrellas de la provincia de
Cáceres.:)
(:/hotelesExtremadura/provincia[@nombre='Cáceres']//alojamiento[numEstrellas>=4 and @categoria="Hotel"]/@nombre/string():)

(:Datos de los alojamientos que existen en Navalmoral que cuesten
menos de 60 € y tengan aire acondicionado.:)
(:/hotelesExtremadura//localidad[@nombre='Navalmoral de la Mata']/alojamiento[precioMedio<60 and servicios/servicio="Aire acondicionado"]:)

(:Nombre y teléfono con el formato (Nombre-Tfno) de las casas rurales
que hay en localidades de la Vera (contienen la palabra Vera).:)
(:/hotelesExtremadura//localidad[contains(@nombre, 'Vera')]/alojamiento[@categoria='Casa rural']/concat(@nombre, '-', datosContacto/telefono):)

(:Los alojamientos que tengan una valoración media superior a 8.5 y que
tengan piscina y que estén en localidades de menos de 5000 habitantes.:)
(:/hotelesExtremadura//localidad/[@numHabitantes<5000]/alojamiento[valoracionMediaClientes>8.5 and servicios/servicio="Piscina"]:)

(:El precio medio que tienen los hoteles en la provincia de 'Cáceres'.:)
(:avg(/hotelesExtremadura/provincia[@nombre='Cáceres']//precioMedio):)








