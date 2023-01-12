16 de noviembre del 2022 </h1>
##### Harryson Ariel Montesdeoca Rhea


Despues de haber creado nuestra carpeta Gitmarkdown en nuestro repositorio y agregarlo a  editor Visual Studio Code
Esta carpeta y precisamente este archivo servirá de diario para lo más importante de lo visto en clases.


Primero comandos básicos con los cuales podemos manipular Markdown.




- Titulo  1:  #     ---> Hará el titulo principal/más grande y vistoso

- Titulo  2:  ##	---> Hará el titulo secundario/un poco menos grande 

- Titulo  3:  ###	---> Hará el subtitulo principal/tamano normal

- Titulo  4: ####	---> Hará el subtitulo secundario

- Titulo  5: #####	---> Será el tamano de la mayoria de texto

### **Modificadores de texto**

command: ** word ** 			----> Hará el texto más marcado

command: * cualquier cosa *		----> Hará el texto cursivo

command: *** Ariel***			----> Combinara negritas con cursiva

Tachado command: ~~ Palabra ~~		----> Tachara el texto

### ***Marco obscuro***

#### Primero lo principal

##### El Hola mundo, el primer paso de todo futuro programador. 

int main(){

printf("Hola mundo")


    return 0;
}
````
 ### Creacion de tags

1.*.txt

Nos permite ignorar todos los archivos .txt que tengamos

## Version del git: 
- git -m "nombre de la version" 




# 18 de noviembre del 2022


Para el manejo del git se reviso ciertos comandos que nos ayudan a interactuar con el.


1. git commit -m"Version1"
2. gcc --version
3. ls
4. History 
5. git add .
6. clear 
7. git version
8. pwd
9. git status
10. echo .gitignore >> .gitignore



***Para mandar a crear un archivo .exe con el codigo que se desea compilar es necesario el siguiente comando:***

1. g++ src/main.c -o output/main.exe

	este nos permite leer el archivo main.c ubicado en la carpetar src y ejecutarlo como .exe 

*** Subir informacion a la nube: 

- git push
nos permite anadir el progreso que tenemos en nuestra carpeta a la nube ubicada en el git 

*** Traer informacion de la nube a la computadora

- git pull

hay que ser cuidadosos, si subirmos codigo sucio pueden existir errores posteriormente.

# Palabras Reservadas en c/cpp
do	        int	        struct	    _Packed
continue	goto	    sizeof	    volatile
case	    extern	    return	    union
break	    enum	    register	typedef
char	    float	    short	    unsigned
const	    for	        signed	    void
auto	    else	    long	    switch
default	    if	        static	    while
double

21 de noviembre del 2022

**¿Qué son las librerias y en que las utilizamos?**


Son espacios que el codificador tiende a llamar a la hora de hacer sus proyectos ya que estas brindan una gama de herramientas que hace mas sencilla la codificacion para el usuario

##** Variables **##

#### ***Existen dos tipos de variables:***

- Locales: Generalmente se encuentran dentro de llaves.
- Globales: Se encuentran fuera de las llaves e incluso fuera del main()



6 de diciembre del 2022

Para iniciar con un proyecto en C es necesario:

1. Ctrl + shift + p 
2. Create C proyect
3. Escoger la carpeta a ser usada y nombrar al proyecto


Uno de los primeros cosigos consistia en determinar el area de un rectangulo al ingresar los valores de la altura y la base.

#include<stdio.h>

int main(){



    int ancho =0, base=0, area=0;

    printf("Ingrese la ancho de su rectangulo: ");
    scanf("%i", &ancho);

    printf("Ingrese la base de su rectangulo: ");
    scanf("%i",  base);

    area = ancho * base;

    printf("El area de su rectangulo dado por base %i y de ancho %i es: %i", base, ancho, area);

    printf("\n");

    return 0;
}




El siguiente codigo presenta nos ensenaba como usar un for:

#include<stdio.h>

int main(){

int signos=0;

    printf("Ingrese la cantidad de signos: ");
    scanf("%i",&signos);

        for(int i=0; i<signos; i++)

            printf("+");
            printf("\n\n");
        for(int i=0; i<signos; i++){

            if(i%2==0)
                printf("+");
            else
                printf("-");

        }

    return 0;
}

#### Recordar ####
Funciones: Busca realizar una tarea especifica, y su nombre se asocia a la tarea . Una función contiene declaraciones e instrucciones.
Se inicia una función con un tipo de dato.


Refactorización: Podemos cambiar código con dos restricciones cruciales: Los cambios hacen que el código sea más fácil de entender y es mas ediciente.

    Beneficios:
    1. Reutilización del código.
    2. Estructura modular.
	3. Mejorar nuestro codigo

void  verbo en infinito()



#### El siguiente ejemplo es muy completo engloba refactorizacion y usos del for.

#include <stdio.h>

void matrizIntegerCuadrada()
{
    int mc[4][4]=   {//otra forma de inicializar la matriz
                         {1,2,3,0}
                        ,{4,5,6,0}
                        ,{7,8,9,0}
                        ,{7,8,9,0}
                    };
    int fila = sizeof(mc)/sizeof(mc[0]);
    int columna = sizeof(mc[0])/sizeof(mc[0][0]);
    int nroElementos = sizeof(mc)/sizeof(mc[0][0]);

    printf("fila = %i \n",fila);
    printf("columna= %i \n", columna);
    printf("nroElementos= %i \n", nroElementos);


    for (int fi = 0; fi < fila; fi++)  // --> fila
    {
        for (int ci = 0; ci < columna; ci++) // ->columna
        {
            printf("%i \t", mc[fi][ci]);// se iteran las filas y columnas, va imprimiendo los indices    
        }
        printf("\n");
    }

    printf("\nDiagonal Principal \n");
    for (int fi = 0; fi < fila; fi++)  // --> fila
    {
        for (int ci = 0; ci < columna; ci++) // ->columna
        {
            if(fi == ci)
                printf("%i \t", mc[fi][ci]);   
            else
                printf(" \t");
        }
        printf("\n");
    }

    printf("\nDiagonal Secundaria \n");
    for (int fi = 0; fi < fila; fi++)  // --> fila
    {
        for (int ci = 0; ci < columna; ci++) // ->columna
        {
            if((fi+ci)==fila)
                printf("%i \t", mc[fi][ci]);   
            else
                printf(" \t");
        }
        printf("\n");
    }

    printf("\nDiagonal Principal y Secundaria \n");
    for (int fi = 0; fi < fila; fi++)  // --> fila
    {
        for (int ci = 0; ci < columna; ci++) // ->columna
        {
            if(((fi+ci+1)==fila) || (fi == ci))
                printf("%i \t", mc[fi][ci]);   
            else
                printf(" \t");
        }
        printf("\n");
    }

}

void matrizInteger()
{
    int fila=3, columna=4;
    int m[fila][columna];
    //f c  posiciones y los valores

    //f c -> fila de pares
    m[0][0]=2;
    m[0][1]=4;
    m[0][2]=6;
    m[0][3]=8;
    
    //f c -> fila de impares
    m[1][0]=1;
    m[1][1]=3;
    m[1][2]=5;
    m[1][3]=7;

    //f c -> fila de ceros
    m[2][0]=0;
    m[2][1]=0;
    m[2][2]=0;
    m[2][3]=0;


    for (int fi = 0; fi < fila; fi++)  // --> fila
    {
        for (int ci = 0; ci < columna; ci++) // ->columna
        {
            printf("%i \t", m[fi][ci]);// se iteran las filas y columnas, va imprimiendo los indices    
        }
        printf("\n");
    }
}

void main()
{
    //system("clear"); //clear para el bash
    //matrizInteger();   
    matrizIntegerCuadrada();
}


 21 - 12 - 2022
###Rubber Duck Debugging

* Consiste en explicar tu propio codigo a un pato de hule, siendo lo mas conciso posible y procurando que el patito entienda.
* Este procedimiento busca fomentar la comunicacion y ganar la capacidad de explicar la solucion a los problemas
* Es valido usar cualquier objeto para realizar esta practica.


 23 - 12 - 2022
# Pasando a C++

C++ es un lenguaje mas rapido / mejorado de C, cambiando parcialmente la sintaxis de escritura en algunos comandos y manteniendolos en otros siendo el caso de:

In c            	  In c++
printf()		  cout<<""
scanf()			  cin>>
for()			  for()
do{}while()	  	  do{}While()
\n                        \n o endl;


La logica se mantiene pero algunas palabras reservadas cambian.

El hola mundo en c++ es de la siguiente forma:

#include <iostream>
using namespace std;

int main(int argc, char *argv[])
{
	cout << "Hello world!" << endl;
}

03 - 01 - 2023
# Archivos

En C++, existen varias formas de acceder a archivos. Una de las formas más comunes es mediante el uso de la biblioteca estándar de C++, la cual proporciona varios objetos y funciones para el manejo de archivos.

Para acceder a un archivo, primero se debe incluir la librería <fstream> y crear un objeto de archivo de tipo ifstream (input file stream) o ofstream (output file stream). Luego, se puede abrir el archivo utilizando el método open() y especificando el nombre del archivo y el modo de acceso (leer, escribir o agregar).

Una vez abierto el archivo, se puede utilizar el objeto para realizar operaciones de lectura o escritura. Para leer el archivo, se pueden utilizar operadores de lectura (>>) o los métodos getline() o get(). Para escribir en el archivo, se pueden utilizar operadores de escritura (<<) o el método put().

Finalmente, es importante cerrar el archivo después de su uso mediante el método close() para liberar los recursos del sistema.

En resumen, acceder a archivos en C++ implica incluir la librería <fstream>, crear un objeto de archivo de tipo ifstream o ofstream, abrir el archivo utilizando el método open(), realizar operaciones de lectura o escritura, y cerrar el archivo después de su uso mediante el método close().



