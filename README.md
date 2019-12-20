# Extraer-PDF

A continuación se explicará en detalle el proceso que permite la extracción de una tabla de datos de un PDF, con el fin de obtener esa información en el programa R, para así poder realizar cálculos o diferentes procesos sobre él. En principio este proceso podria realizarse manualmente creando un dataframe y transcribiendo los datos, pero esto no sería para nada óptimo.

Afortunadamente, existe un paquete que nos facilita esta tarea, el mismo lleva por nombre **Tabulizer**. Dentro de las funciones que cuenta este paquete están,

* **extract_metadata**: esta función permite extraer la metadata del PDF, es decir, información sobre el autor, fecha de creación, fecha de modificación entre otras. 
* **extract_tables**: esta función permite extraer tablas que se encuentran en el PDF.
* **extract_text**: esta función permite extraer texto de un PDF y llevarlo a un string ó cadena de caracteres.
* **get_page_dims**: esta función permite conocer las dimensiones de la página del PDF en cuestión.
* **locate_areas**: esta función me permite localizar un área específica dentro del PDF.
* **make_thumbnails**: esta función me permite generar imágenes en miniatura de cada hoja del PDF.
* **split_pdf**: esta función me permite unir o separar las páginas de uno o varios PDF.

Cabe destacar que en esta ocasión sólo se va a explicar el uso de la funcion **"extract_tables"**.
