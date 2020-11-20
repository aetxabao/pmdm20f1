###### Programación Multimedia y Dispositivos Móviles. 2º DAM

# Examen 1ª evaluación

### Nombre y apellidos: \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

![Alt text](/assets/images/ornito.png?raw=true "Capturas de pantalla")

git clone https://github.com/aetxabao/pmdm20f1 ornito

Partiendo del código fuente del repositorio facilitado se tiene que implementar el código necesario para la aplicación cuyas pantallas se muestran. En la primera pantalla se mostrará una lista de todas las zonas, en la segunda un “swiper” con las aves de la zona seleccionada y en la tercera los detalles del ave seleccionada con un efecto “hero”.

1. screens/zonas_screen.dart

   (1) Crear una pantalla con un Scaffold que tenga un ListView cuyos ListTile obtengan la información de

   avesProvider.listaZonas()

2. screens/zonas_screen.dart

   Que al pulsar un ListTile del ListView

   - (0.5) se guarde en el almacenamiento de la aplicación (Storage) la zona seleccionada junto a la clave “zonas”.

   - (1) se acceda a la siguiente pantalla: AvesScreen

3. screens/aves_screen.dart

   Crear una pantalla con un Scaffold que tenga un widget de tipo Swiper definido en widgets/swiper_widget.dart

   - (0.5) Las zonas en las que puede aparecer las aves que se van a filtrar tiene que ser leída del almacenamiento de la aplicación (Storage) mediante la clave “zonas”.

   - (1) Las aves se obtendrán utilizando el método del proveedor: cargarAvesFiltradas(zonas)

   - (0.5) mientras se carguen las aves filtradas se mostrará un: CircularProgressIndicator

   - (0.5) crear un método en la clase del modelo Ave para que se utilice en la carga de las imágenes del Swiper:

     getImgUrl()

     la url que tiene que devolver debe ser similar a:

     https://www.turismo.navarra.es/imgs/rrtt/05/01/11/00/3824FotoTH1.jpg

   - (1) hacer que los items del swiper tengan un ancho y alto respecto de la pantalla del 70% y 50%, así como un borde circular al cual se ajuste de radio 20.0

   - (1) al pulsar uno de los items del swiper se ha de acceder a la pantalla que se llamará: DetallesScreen
     pasando como argumentos el ave seleccionada.

4. screens/detalles_screen.dart

   Crear una pantalla con un Scaffold que tenga como body un Container que tiene una Column con los elementos centrados en el MainAxisAlignment

   - (1) obtener el Ave cuya información se va a mostrar de los argumentos pasados de la anterior pantalla.

   - (1) intentar reproducir la representación de la imagen facilitada lo más fielmente posible utilizando:
     ClipRRect, SizedBox, Padding, Text, TextAlign, TextStyle, ...

   - (1) modifica también el fichero screens/aves_screen.dart para que se produzca la animación hero utilizando un tag único.

Puntuación: entre paréntesis aparece el valor con que se puntúa cada apartado
