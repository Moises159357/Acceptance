Feature: Registrarse a la aplicación con cuenta de Facebook 

Como usuario, quiero poder registrarme en la aplicación con mi 
usuario de Facebook, para poder acceder a mi cuenta personal 
en la aplicación.

Escenario: Usuario quiere registrarse en la aplicación con su cuenta de Facebook
Dado que el sistema al inicio muestra el formulario “Iniciar Sesión” con los campos de “Desea Iniciar sesión con Google” e “Iniciar sesión con Facebook”
Cuando el usuario presiona la opción de “Iniciar sesión con Facebook”
Entonces el sistema valida si en el dispositivo se encuentra una cuenta de Facebook

Escenario: Usuario se registró correctamente en la aplicación con una cuenta de Facebook.
Dado que en el dispositivo si existe una cuenta de Facebook habilitada
Cuando el presione “Iniciar sesión con Facebook”
Entonces el sistema muestra el perfil principal del usuario

Escenario: Usuario registrado con una cuenta Facebook quiere acceder a su perfil
Dado que al inicio se muestra el formulario “Iniciar Sesión” con los campos de “Desea Iniciar sesión con Google” e “Iniciar sesión con Facebook”
Cuando el usuario presiona “Iniciar sesión con Facebook”
Entonces el sistema muestra el formulario del Perfil del usuario


Feature: Registrarse a la aplicación con cuenta de Google

    Como usuario, quiero poder registrarme en la aplicación con mi usuario de Google, para poder iniciar sesión con mi correo.

Escenario: Usuario requiere registrarse en la aplicación con una cuenta de Google
Dado que el sistema al inicio muestra el formulario “Iniciar Sesión” con los campos de “Desea Iniciar sesión con Google” e “Iniciar sesión con Facebook”.
Cuando el usuario presiona la opción de “Desea Iniciar sesión con Google”
Entonces el sistema muestra un nuevo formulario con las cuentas Google registradas en el dispositivo.

Escenario: Usuario no cuenta con usuario Google y quiere iniciar sesión con este.
Dado que el sistema al inicio muestra el formulario “Iniciar Sesión” con los campos de “Desea Iniciar sesión con Google” e “Iniciar sesión con Facebook”.
Cuando el usuario presiona la opción de “Desea Iniciar sesión con Google”
Y el sistema no encuentra un usuario Google en el dispositivo
Entonces el sistema muestra un mensaje de error y vuelve al formulario de “Iniciar Sesión”

Escenario: Usuario se registra correctamente en la aplicación con usuario Google.
Dado que en el dispositivo si existen cuentas de Google.
Cuando el usuario escoge una de sus cuentas de Google.
Entonces el sistema muestra el perfil principal del usuario.

Escenario: Usuario registrado con una cuenta Google quiere acceder a su perfil
Dado que al inicio se muestra el formulario “Iniciar Sesión” con los campos de “Desea Iniciar sesión con Google” e “Iniciar sesión con Facebook”.
Y el usuario escoge “Desea Iniciar sesión con Google”
Y el usuario llena los campos de “Email” y “Contraseña” correctamente.
Cuando el usuario presiona “Iniciar sesión”
Entonces el sistema muestra el formulario del Perfil del usuario.


Feature: Búsqueda de recetas en función de ingredientes

    Como usuario, quiero poder buscar recetas en función de los ingredientes que tengo en casa para poder encontrar recetas que emplean los ingredientes con los que dispongo.

Escenario: Usuario busca recetas por nombres de ingredientes.
Dado que la aplicación muestra la sección “Buscar” en la parte superior del formulario “Búsquedas”
Y el usuario completa dicho campo con el nombre del ingrediente que desea que se emplee en la receta.
Cuando el usuario ordena presiona “Buscar”
Entonces la aplicación le muestra todas las recetas que contengan en su preparación el ingrediente que ingresó previamente.

Escenario: Usuario busca recetas por nombres de ingredientes que tiene disponibles.
Dado que la aplicación muestra la sección “Buscar” en la parte superior del formulario “Búsquedas”
Y el usuario completa dicho campo con el nombre de los ingredientes que desea que se emplee en la receta.
Cuando el usuario ordena “Buscar”
Entonces la aplicación le muestra todas las recetas que utilizan los ingredientes que el usuario escogió.


Feature: Utilizar filtros para encontrar recetas en base al nivel de complejidad

    Como usuario, quiero poder encontrar recetas de acuerdo al nivel de complejidad, para poder escoger recetas fáciles de realizar a pesar de no saber cocinar.

Escenario: Usuario requiere utilizar filtros
Dado que el sistema muestra la opción de “Filtros” en el formulario de “Búsquedas”
Cuando el usuario presiona “Filtros”
Y el usuario presione el “Nivel de complejidad”
Entonces la aplicación muestra un nuevo formulario con el campo de “Nivel de complejidad”, donde se muestran las opciones que el sistema permite entre fácil, medio y difícil.

Escenario: Usuario utiliza filtros para encontrar recetas por nivel de complejidad
Dado que el sistema muestra el formulario “Nivel de complejidad”
Y el usuario completa el campo con la opción que desea
Cuando el usuario presiona “Aplicar”
Entonces la aplicación muestra las recetas en base al nivel de complejidad que el usuario seleccionó.


Feature: Utilizar filtros para encontrar recetas en base al estilo de alimentación

    Como usuario, quiero poder filtrar las recetas en base al estilo de alimentación, para poder encontrar recetas que se adecuen a mi estilo de vida.

Escenario: Usuario busca estilo de comida
Dado que el sistema muestra la opción de “Filtros” en el formulario de “Búsquedas”
Cuando el usuario presiona “Filtros”
Y el usuario presione “Estilo de comida”
Y el usuario selecciona el tipo de comida que prefiera 
Entonces la aplicación muestra las diferentes recetas de tipo de comida seleccionado

Escenario: Usuario busca platos de comida que no tengan ciertos tipos de ingredientes
Dado que: el sistema muestra la opción de “Filtros” en el formulario de “Búsquedas”
Cuando el usuario presiona “Filtros”
Y el usuario selecciona los ingredientes que no desea.
Entonces la aplicación muestra las diferentes recetas que no contengan los ingredientes seleccionados.


Feature: Utilizar filtros para encontrar recetas

    Como usuario, quiero poder encontrar recetas de acuerdo a filtros como cantidad, estilo de alimentación y nivel de complejidad para poder escoger solo entre las recetas que más se adecuan a mis gustos.

Escenario: Usuario requiere utilizar filtros para encontrar recetas
Dado que el sistema muestra la opción de “Filtros” en el formulario de “Búsquedas”
Cuando el usuario presiona “Filtros”
Entonces la aplicación muestra las opciones de “Cantidad”, “Estilo de alimentación” y “Nivel de complejidad”.

Escenario: Usuario utiliza filtros para encontrar recetas
Dado que el sistema muestra el formulario “Filtros”
Y el usuario completa los campos de los filtros que quiere usar.
Cuando el usuario presiona “Aplicar”
Entonces la aplicación muestra las recetas que tienen las mismas características que el usuario seleccionó.


Feature: Buscar recetas por categorías

    Como usuario, quiero poder visualizar las diversas recetas categorizadas en desayuno, almuerzo, cena, merienda, postres, ensaladas, bebidas, y preparaciones saladas y dulces para poder encontrar lo que busco de manera más rápida.

Escenario: Usuario desea encontrar un tipo de comida en especifico
Dado que el sistema muestra las categorías de comidas en la página principal.
Cuando el usuario presiona escoge una de las categorías
Entonces el sistema muestra todas las recetas que pertenecen a ese tipo de comida.


Feature: Buscar receta por el propio nombre de la receta

    Como usuario, quiero poder buscar recetas en función del nombre de la receta para poder encontrar específicamente la receta que estoy buscando.

Escenario: Usuario busca recetas por nombre de la receta.
Dado que la aplicación muestra la sección “Buscar” en la parte superior del formulario “Búsquedas”
Y el usuario completa dicho campo con el nombre de la receta que desea buscar.
Cuando el usuario presiona “Buscar”
Entonces la aplicación le muestra todas las recetas que tengan coincidencia con el nombre que ingreso.

Escenario: El sistema no tiene recetas que coincidan con ese nombre.
Dado que el usuario ingreso en el campo “Búsquedas” el nombre de la receta.
Y la receta no exista en el sistema
Cuando el usuario presione “Buscar”
Entonces el sistema mostrará un formulario que diga “No se encontraron resultados para la búsqueda”.


Feature: Aprender a preparar las recetas mejor calificadas de la aplicación

    Como usuario de la aplicación, quiero poder aprender a preparar las recetas mejor puntuadas de la aplicación para poder ampliar la variedad de mis preparaciones.

Escenario: Usuario busca recetas mejor calificadas
Dado que: el sistema muestra la opción de recetas mejor calificadas en el formulario principal.
Cuando el usuario presiona dicha categoría
Entonces el sistema mostrará las recetas en orden de calificación por los usuarios


Feature: Realizar comentarios a las recetas.

    Como usuario de la aplicación, quiero poder realizar comentarios a las recetas de la app para poder expresar mi opinión y brindar sugerencias.

Escenario: Usuario quiere realizar comentarios sobre una receta en particular
Dado que el usuario escoge una receta
Y el usuario se encuentra en el formulario de la receta
Y el sistema muestra el campo “Añade un comentario” en la parte inferior
Cuando el usuario presiona dicho campo
Entonces el sistema le permite escribir su comentario.
 
Escenario: Usuario realiza comentarios sobre una receta
Dado que el usuario se encuentra en el formulario de la receta que seleccionó
Y el sistema muestra el campo “Añade un comentario” en la parte inferior
Y el usuario escribe un comentario sobre la receta
Cuando el usuario presiona el campo de “Enviar”
Entonces el sistema publica el comentario del usuario.


Feature: Publicar una nueva receta

    Como usuario quiero poder publicar una receta para poder compartir mis conocimientos con los demás usuarios.

Escenario: Usuario quiere publicar una nueva receta.
Dado que el sistema muestra la pestaña “Crear” en el formulario principal
Cuando el usuario presiona dicha pestaña
Entonces el sistema muestra el formulario para crear y publicar una nueva receta.
 
Escenario: Usuario publica una nueva receta.
Dado que el usuario se encuentra en el formulario para crear una nueva receta
Y el sistema muestra los campos de “Titulo de la receta”, “Imagen de la receta” “Cantidad porciones”, “Tiempo de cocina”, “Ingredientes” y “Pasos”.
Cuando el usuario completa todos los campos
Y el usuario presiona el botón publicar
Entonces el sistema publica la receta
Y el sistema muestra un mensaje de “Su receta ha sido publicada”.
 
Escenario: Usuario quiere publicar una nueva receta, pero no completa todos los campos.
Dado que el usuario se encuentra en el formulario para crear una nueva receta
Y el sistema muestra los campos de “Título de la receta”, “Imagen de la receta” “Cantidad porciones”, “Tiempo de cocina”, “Ingredientes” y “Pasos”.
Cuando el usuario completa parcialmente o no completa ninguno de los campos
Y el usuario presiona el botón publicar
Entonces el sistema muestra un mensaje de error que dice lo siguiente: “El título no puede estar en blanco, los pasos no pueden estar en blanco y los ingredientes no pueden estar en blanco”.


