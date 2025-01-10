# Learning Erlang

Este proyecto es una guía para aprender Erlang.

## Requisitos

- Erlang/OTP instalado en tu sistema.

## Ejecución

Para compilar y ejecutar el código Erlang, sigue estos pasos:

1. Abre una terminal.
2. Navega al directorio del proyecto:
    ```sh
    cd /Users/sebastian-puentes/erl/learning_erlang
    ```
3. Compila el archivo Erlang:
    ```sh
    erlc nombre_del_archivo.erl
    ```
4. Ejecuta el código compilado:
    ```sh
    erl -noshell -s nombre_del_modulo nombre_de_la_funcion -s init stop
    ```

## Ejemplo

Si tienes un archivo `math_utils.erl` con un módulo `math_utils` y una función `add/2`, puedes ejecutar:

```sh
erlc math_utils.erl
erl -noshell -s math_utils add -s init stop
```

¡Feliz aprendizaje de Erlang!