:- prolog_load_context(directory, Dir), working_directory(_, Dir).

:- dynamic
    ojos/1,
    garganta/1,
    loras/1,
    patas/1,
    alas/1,
    cabeza/1,
    cere/1,
    auriculares/1,
    corona/1,
    cobertoras_inferiores_cola/1,
    pico/1,
    cuerpo/1,
    vientre/1,
    pecho/1,
    zona_malar/1,
    cola/1,
    tarsos/1,
    espalda/1,
    come/1,
    ave/1.


/* Guardado y recuperado de nuevas aves */
archivo_aves('aves.pl').
guardar :- archivo_aves(File), tell(File), listing(ave), told.
recuperar :- archivo_aves(File), exists_file(File), consult(File).


/* Punto de entrada al sistema */
sistema :- 
    recuperar,
    borrarEntradaUsuario,
    preguntas,
    respuesta.


respuesta :-
    not(ave(_)),
    write("No hemos encontrado el ave que describes."), nl,
    pruebas, nl, nl,
    write("Te gustaria agregar esta descripcion como una nueva ave?"), nl, read(R),
    (R = no; agregarNuevaAve, guardar).

respuesta :-
    ave(X),
    write("Creemos que el ave que describes es: "), write(X), nl,
    pruebas.


/* Modulo de explicacion */
resuelve(ave(X), prueba(ave(X),
    Pojos,
    Pgarganta,
    Ploras,
    Ppatas,
    Palas,
    Pcere,
    Pvientre,
    Pcabeza,
    Ppecho,
    Pespalda,
    Pauriculares,
    Pcobertoras_inferiores_cola,
    Pcome,
    Pcorona,
    Pzona_malar,
    Ptarsos,
    Pcuerpo,
    Pcola,
    Ppico
)) :- ave(X),
    resuelve(ojos(_), Pojos),
    resuelve(garganta(_), Pgarganta),
    resuelve(loras(_), Ploras),
    resuelve(patas(_), Ppatas),
    resuelve(alas(_), Palas),
    resuelve(come(_), Pcome),
    resuelve(vientre(_), Pvientre),
    resuelve(cobertoras_inferiores_cola(_), Pcobertoras_inferiores_cola),
    resuelve(espalda(_), Pespalda),
    resuelve(pecho(_), Ppecho),
    resuelve(tarsos(_), Ptarsos),
    resuelve(auriculares(_), Pauriculares),
    resuelve(corona(_), Pcorona),
    resuelve(pico(_), Ppico),
    resuelve(zona_malar(_), Pzona_malar),
    resuelve(cuerpo(_), Pcuerpo),
    resuelve(cere(_), Pcere),
    resuelve(cola(_), Pcola),
    resuelve(cabeza(_), Pcabeza).

resuelve(loras(X), prueba(loras(X), hecho)) :- loras(X), not(loras(desconocido)).
resuelve(loras(X), prueba(loras(X), no_definido)) :- not(loras(X)); loras(desconocido).

resuelve(alas(X), prueba(alas(X), hecho)) :- alas(X), not(alas(desconocido)).
resuelve(alas(X), prueba(alas(X), no_definido)) :- not(alas(X)); alas(desconocido).

resuelve(cabeza(X), prueba(cabeza(X), hecho)) :- cabeza(X), not(cabeza(desconocido)).
resuelve(cabeza(X), prueba(cabeza(X), no_definido)) :- not(cabeza(X)); cabeza(desconocido).

resuelve(cere(X), prueba(cere(X), hecho)) :- cere(X), not(cere(desconocido)).
resuelve(cere(X), prueba(cere(X), no_definido)) :- not(cere(X)); cere(desconocido).

resuelve(ojos(X), prueba(ojos(X), hecho)) :- ojos(X), not(ojos(desconocido)).
resuelve(ojos(X), prueba(ojos(X), no_definido)) :- not(ojos(X)); ojos(desconocido).

resuelve(espalda(X), prueba(espalda(X), hecho)) :- espalda(X), not(espalda(desconocido)).
resuelve(espalda(X), prueba(espalda(X), no_definido)) :- not(espalda(X)); espalda(desconocido).

resuelve(cola(X), prueba(cola(X), hecho)) :- cola(X), not(cola(desconocido)).
resuelve(cola(X), prueba(cola(X), no_definido)) :- not(cola(X)); cola(desconocido).

resuelve(tarsos(X), prueba(tarsos(X), hecho)) :- tarsos(X), not(tarsos(desconocido)).
resuelve(tarsos(X), prueba(tarsos(X), no_definido)) :- not(tarsos(X)); tarsos(desconocido).

resuelve(garganta(X), prueba(garganta(X), hecho)) :- garganta(X), not(garganta(desconocido)).
resuelve(garganta(X), prueba(garganta(X), no_definido)) :- not(garganta(X)); garganta(desconocido).

resuelve(patas(X), prueba(patas(X), hecho)) :- patas(X), not(patas(desconocido)).
resuelve(patas(X), prueba(patas(X), no_definido)) :- not(patas(X)); patas(desconocido).

resuelve(pecho(X), prueba(pecho(X), hecho)) :- pecho(X), not(pecho(desconocido)).
resuelve(pecho(X), prueba(pecho(X), no_definido)) :- not(pecho(X)); pecho(desconocido).

resuelve(vientre(X), prueba(vientre(X), hecho)) :- vientre(X), not(vientre(desconocido)).
resuelve(vientre(X), prueba(vientre(X), no_definido)) :- not(vientre(X)); vientre(desconocido).

resuelve(auriculares(X), prueba(auriculares(X), hecho)) :- auriculares(X), not(auriculares(desconocido)).
resuelve(auriculares(X), prueba(auriculares(X), no_definido)) :- not(auriculares(X)); auriculares(desconocido).

resuelve(come(X), prueba(come(X), hecho)) :- come(X), not(come(desconocido)).
resuelve(come(X), prueba(come(X), no_definido)) :- not(come(X)); come(desconocido).

resuelve(zona_malar(X), prueba(zona_malar(X), hecho)) :- zona_malar(X), not(zona_malar(desconocido)).
resuelve(zona_malar(X), prueba(zona_malar(X), no_definido)) :- not(zona_malar(X)); zona_malar(desconocido).

resuelve(corona(X), prueba(corona(X), hecho)) :- corona(X), not(corona(desconocido)).
resuelve(corona(X), prueba(corona(X), no_definido)) :- not(corona(X)); corona(desconocido).

resuelve(cobertoras_inferiores_cola(X),prueba(cobertoras_inferiores_cola(X), hecho)) :-
    cobertoras_inferiores_cola(X), not(cobertoras_inferiores_cola(desconocido)).
resuelve(cobertoras_inferiores_cola(X),prueba(cobertoras_inferiores_cola(X), no_definido)) :- 
    not(cobertoras_inferiores_cola(X)); cobertoras_inferiores_cola(desconocido).

resuelve(pico(X), prueba(pico(X), hecho)) :- pico(X), not(pico(desconocido)).
resuelve(pico(X), prueba(pico(X), no_definido)) :- not(pico(X)); pico(desconocido).

resuelve(cuerpo(X), prueba(cuerpo(X), hecho)) :- cuerpo(X), not(cuerpo(desconocido)).
resuelve(cuerpo(X), prueba(cuerpo(X), no_definido)) :- not(cuerpo(X)); cuerpo(desconocido).


/* Preguntas al usuario sobre las caracteristicas de las aves */
preguntas :-
    preguntaOjos,
    preguntaGarganta,
    preguntaLoras,
    preguntaPatas,
    preguntaAlas,
    preguntaCabeza,
    preguntaCere,
    preguntaAuriculares,
    preguntaCorona,
    preguntaCobertorasInferioresDeLaCola,
    preguntaPico,
    preguntaCuerpo,
    preguntaVientre,
    preguntaPecho,
    preguntaZonaMalar,
    preguntaCola,
    preguntaTarsos,
    preguntaEspalda,
    preguntaCome.

preguntaOjos :-
    write("De que color son los ojos?"), nl, read(X), 
    asserta(ojos(X)),
    (
        X = desconocido; 
        write("Tiene algun otro color?"), nl, read(Y),
        (Y = si -> write("Que otro color tiene?"), nl, read(Z), asserta(ojos(Z)); Y \= si)
    ).

preguntaGarganta :-
    write("De que color es la garganta?"), nl, read(X), 
    asserta(garganta(X)),
    (
        X = desconocido; 
        write("Tiene algun otro color?"), nl, read(Y),
        (Y = si -> write("Que otro color tiene?"), nl, read(Z), asserta(garganta(Z)); Y \= si)
    ).
    
preguntaLoras :-
    write("De que color son las loras?"), nl, read(X), 
    asserta(loras(X)),
    (
        X = desconocido; 
        write("Tiene algun otro color?"), nl, read(Y),
        (Y = si -> write("Que otro color tiene?"), nl, read(Z), asserta(loras(Z)); Y \= si)
    ).
    
preguntaPatas :-
    write("De que color son las patas?"), nl, read(X),
    asserta(patas(X)),
    (
        X = desconocido; 
        write("Tiene algun otro color?"), nl,
        read(Y),
        (Y = si -> write("Que otro color tiene?"), nl, read(Z), asserta(patas(Z)); Y \= si)
    ).
    
preguntaAlas :-
    write("De que color son las alas?"), nl, read(X),
    asserta(alas(X)),
    (
        X = desconocido; 
        write("Tiene algun otro color?"), nl,
        read(Y),
        (Y = si -> write("Que otro color tiene?"), nl, read(Z), asserta(alas(Z)); Y \= si)
    ).
    
preguntaCabeza :-
    write("De que color es la cabeza?"), nl, read(X),
    asserta(cabeza(X)),
    (
        X = desconocido; 
        write("Tiene algun otro color?"), nl,
        read(Y),
        (Y = si -> write("Que otro color tiene?"), nl, read(Z), asserta(cabeza(Z)); Y \= si)
    ).
    
preguntaCere :-
    write("De que color es el cere?"), nl, read(X),
    asserta(cere(X)),
    (
        X = desconocido; 
        write("Tiene algun otro color?"), nl,
        read(Y),
        (Y = si -> write("Que otro color tiene?"), nl, read(Z), asserta(cere(Z)); Y \= si)
    ).
    
preguntaAuriculares :-
    write("De que color son los auriculares?"), nl, read(X),
    asserta(auriculares(X)),
    (
        X = desconocido; 
        write("Tiene algun otro color?"), nl,
        read(Y),
        (Y = si -> write("Que otro color tiene?"), nl, read(Z), asserta(auriculares(Z)); Y \= si)
    ).
    
preguntaCorona :-
    write("De que color es la corona?"), nl, read(X),
    asserta(corona(X)),
    (
        X = desconocido; 
        write("Tiene algun otro color?"), nl,
        read(Y),
        (Y = si -> write("Que otro color tiene?"), nl, read(Z), asserta(corona(Z)); Y \= si)
    ).
    
preguntaCobertorasInferioresDeLaCola :-
    write("De que color son las cobertoras inferiores de la cola?"), nl, read(X),
    asserta(cobertoras_inferiores_cola(X)),
    (
        X = desconocido; 
        write("Tiene algun otro color?"), nl,
        read(Y),
        (Y = si -> write("Que otro color tiene?"), nl, read(Z), asserta(cobertoras_inferiores_cola(Z)); Y \= si)
    ).

preguntaPico :-
    write("De que color es el pico?"), nl, read(X),
    asserta(pico(X)),
    (
        X = desconocido; 
        write("Tiene algun otro color?"), nl,
        read(Y),
        (Y = si -> write("Que otro color tiene?"), nl, read(Z), asserta(pico(Z)); Y \= si)
    ).

preguntaCuerpo :-
    write("De que color es el cuerpo?"), nl, read(X),
    asserta(cuerpo(X)),
    (
        X = desconocido; 
        write("Tiene algun otro color?"), nl,
        read(Y),
        (Y = si -> write("Que otro color tiene?"), nl, read(Z), asserta(cuerpo(Z)); Y \= si)
    ).

preguntaVientre :-
    write("De que color es el vientre?"), nl, read(X),
    asserta(vientre(X)),
    (
        X = desconocido; 
        write("Tiene algun otro color?"), nl,
        read(Y),
        (Y = si -> write("Que otro color tiene?"), nl, read(Z), asserta(vientre(Z)); Y \= si)
    ).

preguntaPecho :-
    write("De que color es el pecho?"), nl, read(X),
    asserta(pecho(X)),
    (
        X = desconocido; 
        write("Tiene algun otro color?"), nl,
        read(Y),
        (Y = si -> write("Que otro color tiene?"), nl, read(Z), asserta(pecho(Z)); Y \= si)
    ).

preguntaZonaMalar :-
    write("De que color es la zona malar?"), nl, read(X),
    asserta(zona_malar(X)),
    (
        X = desconocido; 
        write("Tiene algun otro color?"), nl,
        read(Y),
        (Y = si -> write("Que otro color tiene?"), nl, read(Z), asserta(zona_malar(Z)); Y \= si)
    ).

preguntaCola :-
    write("De que color es la cola?"), nl, read(X),
    asserta(cola(X)),
    (
        X = desconocido; 
        write("Tiene algun otro color?"), nl,
        read(Y),
        (Y = si -> write("Que otro color tiene?"), nl, read(Z), asserta(cola(Z)); Y \= si)
    ).

preguntaTarsos :-
    write("De que color son los tarsos?"), nl, read(X),
    asserta(tarsos(X)),
    (
        X = desconocido; 
        write("Tiene algun otro color?"), nl,
        read(Y),
        (Y = si -> write("Que otro color tiene?"), nl, read(Z), asserta(tarsos(Z)); Y \= si)
    ).

preguntaEspalda :-
    write("De que color es la espalda?"), nl, read(X),
    asserta(espalda(X)),
    (
        X = desconocido; 
        write("Tiene algun otro color?"), nl,
        read(Y),
        (Y = si -> write("Que otro color tiene?"), nl, read(Z), asserta(espalda(Z)); Y \= si)
    ).

preguntaCome :-
    write("De que se alimenta?"), nl, read(X),
    asserta(come(X)),
    (
        X = desconocido; 
        write("Come algun otro alimento?"), nl,
        read(Y),
        (Y = si -> write("Que otra cosa come?"), nl, read(Z), asserta(come(Z)); Y \= si)
    ).
    

/* Las pruebas que se muestran al usuario cuando se llega a una respuesta */
pruebas :-
    pruebaOjos,
    pruebaGarganta,
    pruebaLoras,
    pruebaPatas,
    pruebaAlas,
    pruebaCabeza,
    pruebaCere,
    pruebaAuriculares,
    pruebaCorona,
    pruebaCobertorasInferiorasDeLaCola,
    pruebaPico,
    pruebaCuerpo,
    pruebaVientre,
    pruebaPecho,
    pruebaZonaMalar,
    pruebaCola,
    pruebaTarsos,
    pruebaEspalda,
    pruebaCome.
    
pruebaOjos :-
    resuelve(ojos(X), prueba(_, B)), nl,
    (
        B = no_definido, write("No definiste el color de los ojos.");
        write("Definiste el color de los ojos como: "), write(X)
    ).
    
pruebaGarganta :-
    resuelve(garganta(X), prueba(_, B)), nl,
    (
        B = no_definido, write("No definiste el color de la garganta.");
        write("Definiste el color de la garganta como: "), write(X)
    ).

pruebaLoras :-
    resuelve(loras(X), prueba(_, B)), nl,
    (
        B = no_definido, write("No definiste el color de las loras.");
        write("Definiste el color de las loras como: "), write(X)
    ).

pruebaPatas :-
    resuelve(patas(X), prueba(_, B)), nl,
    (
        B = no_definido, write("No definiste el color de las patas.");
        write("Definiste el color de las patas como: "), write(X)
    ).

pruebaAlas :-
    resuelve(alas(X), prueba(_, B)), nl,
    (
        B = no_definido, write("No definiste el color de las alas.");
        write("Definiste el color de las alas como: "), write(X)
    ).

pruebaCabeza :-
    resuelve(cabeza(X), prueba(_, B)), nl,
    (
        B = no_definido, write("No definiste el color de la cabeza.");
        write("Definiste el color de la cabeza como: "), write(X)
    ).

pruebaCere :-
    resuelve(cere(X), prueba(_, B)), nl,
    (
        B = no_definido, write("No definiste el color del cere.");
        write("Definiste el color del cere como: "), write(X)
    ).

pruebaAuriculares :-
    resuelve(auriculares(X), prueba(_, B)), nl,
    (
        B = no_definido, write("No definiste el color de los auriculares.");
        write("Definiste el color de los auriculares como: "), write(X)
    ).

pruebaCorona :-
    resuelve(corona(X), prueba(_, B)), nl,
    (
        B = no_definido, write("No definiste el color de la corona.");
        write("Definiste el color de corona: "), write(X)
    ).

pruebaCobertorasInferiorasDeLaCola :-
    resuelve(cobertoras_inferiores_cola(X), prueba(_, B)), nl,
    (
        B = no_definido, write("No definiste el color de las cobertoras inferiores de la cola.");
        write("Definiste el color de las cobertoras inferiores de la cola como: "), write(X)
    ).    

pruebaPico :-
    resuelve(pico(X), prueba(_, B)), nl,
    (
        B = no_definido, write("No definiste el color del pico");
        write("Definiste el color del pico como: "), write(X)
    ).

pruebaCuerpo :-
    resuelve(cuerpo(X), prueba(_, B)), nl,
    (
        B = no_definido, write("No definiste el color del cuerpo");
        write("Definiste el color del cuerpo como: "), write(X)
    ).

pruebaVientre :-
    resuelve(vientre(X), prueba(_, B)), nl,
    (
        B = no_definido, write("No definiste el color del vientre");
        write("Definiste el color del vientre como: "), write(X)
    ).

pruebaPecho :-
    resuelve(pecho(X), prueba(_, B)), nl,
    (
        B = no_definido, write("No definiste el color del pecho");
        write("Definiste el color del pecho como: "), write(X)
    ).

pruebaZonaMalar :-
    resuelve(zona_malar(X), prueba(_, B)), nl,
    (
        B = no_definido, write("No definiste el color de la zona malar");
        write("Definiste el color de la zona malar como: "), write(X)
    ).

pruebaCola :-
    resuelve(cola(X), prueba(_, B)), nl,
    (
        B = no_definido, write("No definiste el color de la cola");
        write("Definiste el color de la cola como: "), write(X)
    ).

pruebaTarsos :-
    resuelve(tarsos(X), prueba(_, B)), nl,
    (
        B = no_definido, write("No definiste el color de los tarsos");
        write("Definiste el color de los tarsos como: "), write(X)
    ).

pruebaEspalda :-
    resuelve(espalda(X), prueba(_, B)), nl,
    (
        B = no_definido, write("No definiste el color de la espalda");
        write("Definiste el color de la espalda como: "), write(X)
    ).

pruebaCome :-
    resuelve(come(X), prueba(_, B)), nl,
    (
        B = no_definido, write("No definiste el alimento del ave");
        write("Definiste el que el ave se alimenta de: "), write(X)
    ).

/* Agrega una nueva ave con la descripcion que hay en memoria */
agregarNuevaAve :-
    write("Cual es el nombre cientifico del ave que describes?"), nl, read(Nombre),
    ojos(Ojos), 
    garganta(Garganta), 
    loras(Loras),
    patas(Patas),
    alas(Alas),
    cabeza(Cabeza),
    cere(Cere),
    auriculares(Auriculares),
    corona(Corona),
    cobertoras_inferiores_cola(CobertorasInferioresCola),
    pico(Pico),
    cuerpo(Cuerpo),
    vientre(Vientre),
    pecho(Pecho),
    zona_malar(ZonaMalar),
    cola(Cola),
    tarsos(Tarsos),
    espalda(Espalda),
    come(Come),
    assertz((
        ave(Nombre) :- 
            ojos(Ojos), 
            garganta(Garganta), 
            loras(Loras),
            patas(Patas),
            alas(Alas),
            cabeza(Cabeza),
            cere(Cere),
            auriculares(Auriculares),
            corona(Corona),
            cobertoras_inferiores_cola(CobertorasInferioresCola),
            pico(Pico),
            cuerpo(Cuerpo),
            vientre(Vientre),
            pecho(Pecho),
            zona_malar(ZonaMalar),
            cola(Cola),
            tarsos(Tarsos),
            espalda(Espalda),
            come(Come)
        )).

/* Borra los datos dados por el usuario */
borrarEntradaUsuario :-
    retractall(ojos(_)), 
    retractall(garganta(_)), 
    retractall(loras(_)),
    retractall(patas(_)),
    retractall(alas(_)),
    retractall(cabeza(_)),
    retractall(cere(_)),
    retractall(auriculares(_)),
    retractall(corona(_)),
    retractall(cobertoras_inferiores_cola(_)),
    retractall(pico(_)),
    retractall(cuerpo(_)),
    retractall(vientre(_)),
    retractall(pecho(_)),
    retractall(zona_malar(_)),
    retractall(cola(_)),
    retractall(tarsos(_)),
    retractall(espalda(_)),
    retractall(come(_)).
