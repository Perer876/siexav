:- dynamic ave/1.

ave(egretta_thula) :-
    ojos(amarillo),
    loras(amarillo),
    pico(negro),
    cuerpo(blanco),
    espalda(blanco),
    tarsos(negro),
    patas(amarillo),
    alas(blanco),
    vientre(blanco),
    (   come(peces)
    ;   come(insectos)
    ;   come(crustaceos)
    ).
ave(butorides_virescens) :-
    ojos(amarillo),
    garganta(rojo),
    pico(negro),
    pico(amarillo),
    espalda(verde),
    (   tarsos(amarillo)
    ;   tarsos(naranja)
    ),
    (   patas(amarillo)
    ;   tarsos(naranja)
    ),
    alas(verde_oscuro),
    pecho(rojo),
    vientre(gris),
    zona_malar(blanco),
    corona(verde_oscuro),
    cola(verde_oscuro),
    (   come(peces)
    ;   come(ranas)
    ;   come(insectos)
    ).
ave(nycticorax_nycticorax) :-
    ojos(rojo),
    garganta(blanco),
    pico(negro),
    espalda(negro),
    tarsos(negro),
    patas(amarillo),
    alas(gris),
    pecho(gris),
    vientre(gris),
    corona(negra),
    cola(gris),
    come(peces).
ave(accipiter_striatus) :-
    ojos(rojo),
    pico(gris_oscuro),
    cere(amarillo),
    auriculares(gris),
    espalda(gris),
    tarsos(amarillo),
    patas(amarillo),
    alas(gris),
    pecho(blanco),
    (   pecho(naranja)
    ;   pecho(rojo)
    ),
    vientre(blanco),
    (   vientre(naranja)
    ;   vientre(rojo)
    ),
    cola(gris),
    cola(negro),
    cobertoras_inferiores_cola(blanco),
    (   come(aves)
    ;   come(roedores)
    ).
ave(falco_sparverius) :-
    garganta(blanco),
    pico(gris_oscuro),
    cere(amarillo),
    auriculares(negro),
    espalda(negro),
    espalda(rojo),
    (   alas(azul)
    ;   alas(gris)
    ),
    alas(negro),
    pecho(naranja_deslavado),
    vientre(blanco),
    vientre(negro),
    zona_malar(negro),
    (   corona(azul)
    ;   corona(gris)
    ),
    corona(rojo),
    cola(rojo),
    (   come(insectos)
    ;   come(mamiferos_pequenios)
    ;   come(aves)
    ;   come(reptiles)
    ).
ave(columba_livia) :-
    ojos(rojo),
    (   tarsos(naranja)
    ;   tarsos(rojo)
    ),
    (   patas(naranja)
    ;   patas(rojo)
    ),
    alas(gris_claro),
    cola(gris_claro),
    (   come(semillas)
    ;   come(insectos)
    ).
ave(aratinga_canicularis) :-
    ojos(amarillo),
    (   garganta(amarillo)
    ;   garganta(cafe)
    ),
    (   pico(amarillo_claro)
    ;   pico(gris_claro)
    ),
    auriculares(verde),
    espalda(verde),
    alas(verde),
    (   pecho(amarillo)
    ;   pecho(cafe)
    ),
    (   vientre(verde)
    ;   vientre(amarillo)
    ),
    (   come(insectos)
    ;   come(flores)
    ;   come(semillas)
    ).
ave(amazona_finschi) :-
    ojos(amarillo),
    (   pico(amarillo_claro)
    ;   pico(ocre_claro)
    ),
    cuerpo(verde),
    espalda(blanco),
    espalda(negro),
    alas(verde),
    pecho(verde),
    vientre(verde),
    (   corona(azul)
    ;   corona(lila)
    ),
    cola(negro),
    come(semillas).
ave(crotophaga_sulcirostris) :-
    ojos(negro),
    pico(gris),
    cuerpo(negro),
    tarsos(negro),
    patas(negro),
    alas(negro),
    pecho(negro),
    vientre(negro),
    zona_malar(negro),
    corona(negro),
    cola(negro),
    cobertoras_inferiores_cola(negro),
    (   come(insectos)
    ;   come(frutos)
    ;   come(semillas)
    ).
ave(tyto_alba) :-
    ojos(negro),
    pico(gris_claro),
    pico(rosa),
    (   cuerpo(naranja_claro)
    ;   cuerpo(amarillo_claro)
    ),
    cuerpo(gris),
    (   tarsos(naranja_claro)
    ;   tarsos(amarillo_claro)
    ),
    tarsos(gris),
    (   patas(naranja_claro)
    ;   patas(amarillo_claro)
    ),
    patas(gris),
    (   alas(naranja_claro)
    ;   alas(amarillo_claro)
    ),
    alas(gris),
    (   pecho(blanco)
    ;   pecho(gris)
    ;   pecho(negro)
    ),
    (   vientre(blanco)
    ;   vientre(gris)
    ;   vientre(negro)
    ),
    (   corona(blanco)
    ;   corona(gris)
    ;   corona(negro)
    ),
    zona_malar(blanco),
    (   cola(naranja_claro)
    ;   cola(amarillo_claro)
    ),
    cola(gris),
    (   cobertoras_inferiores_cola(naranja_claro)
    ;   cobertoras_inferiores_cola(amarillo_claro)
    ;   cobertoras_inferiores_cola(gris)
    ),
    (   come(roedores)
    ;   come(musaranias)
    ;   come(aves)
    ;   come(lagartijas)
    ).
ave(cynanthus_latirostris) :-
    ojos(negro),
    garganta(gris),
    pico(rojo),
    pico(negro),
    alas(negro),
    pecho(verde_iridiscente),
    vientre(verde_iridiscente),
    corona(verde_iridiscente),
    cola(azul),
    (   come(insectos)
    ;   come(aranias)
    ;   come(nectar_floral)
    ).
ave(hylocharis_leucotis) :-
    ojos(negro),
    pico(rojo),
    pico(negro),
    espalda(verde),
    vientre(blanco),
    corona(morado_iridiscente),
    zona_malar(morado_iridiscente),
    (   come(insectos)
    ;   come(aranias)
    ;   come(nectar_floral)
    ).
ave(amazilia_beryllina) :-
    ojos(negro),
    loras(gris),
    pico(rojo),
    espalda(verde),
    (   patas(cafe)
    ;   patas(rojo)
    ),
    vientre(gris),
    corona(verde_oscuro),
    zona_malar(verde_oscuro),
    cola(rojo),
    (   come(insectos)
    ;   come(aranias)
    ;   come(nectar_floral)
    ).
ave(momotus_mexicanus) :-
    ojos(cafe),
    pico(negro),
    (   alas(azul)
    ;   alas(verde)
    ),
    pecho(verde),
    (   vientre(verde)
    ;   vientre(amarillo)
    ),
    corona(rojo),
    cola(verde),
    (   come(insectos)
    ;   come(frutos)
    ).
ave(melanerpes_uropygialis) :-
    ojos(negro),
    pico(gris_oscuro),
    (   espalda(blanco)
    ;   espalda(negro)
    ),
    (   alas(blanco)
    ;   alas(negro)
    ),
    (   pecho(cafe_claro)
    ;   pecho(gris_claro)
    ),
    vientre(amarillo),
    corona(rojo),
    cola(negro),
    (   cobertoras_inferiores_cola(blanco)
    ;   cobertoras_inferiores_cola(negro)
    ),
    (   come(insectos)
    ;   come(frutos)
    ;   come(semillas),
        come(nectar_floral)
    ).
ave(megaceryle_alcyon) :-
    ojos(negro),
    loras(blanco),
    garganta(blanco),
    (   pico(negro)
    ;   pico(gris)
    ),
    espalda(azul),
    (   alas(azul)
    ;   alas(blanco)
    ),
    pecho(blanco),
    vientre(blanco),
    corona(azul),
    cola(azul),
    cobertoras_inferiores_cola(azul),
    (   come(peces)
    ;   come(ranas)
    ;   come(mamiferos_pequenios),
        come(aves)
    ;   come(lagartijas)
    ;   come(frutos)
    ).
ave(sphyrapicus_varius) :-
    ojos(negro),
    garganta(rojo),
    pico(gris_oscuro),
    (   espalda(blanco)
    ;   espalda(negro)
    ),
    (   alas(negro)
    ;   alas(blanco)
    ),
    (   corona(rojo)
    ;   corona(negro)
    ),
    cola(negro),
    (   cobertoras_inferiores_cola(blanco)
    ;   cobertoras_inferiores_cola(negro)
    ),
    (   come(savia)
    ;   come(insectos)
    ;   come(frutos)
    ).
ave(picoides_scalaris) :-
    ojos(negro),
    (   garganta(blanco)
    ;   garganta(amarillo)
    ),
    pico(gris),
    auriculares(amarillo),
    (   espalda(blanco)
    ;   espalda(negro)
    ),
    (   alas(blanco)
    ;   alas(negro)
    ),
    (   pecho(blanco)
    ;   pecho(amarillo)
    ),
    (   vientre(blanco)
    ;   vientre(amarillo)
    ),
    zona_malar(negro),
    corona(rojo),
    cola(negro),
    (   come(insectos)
    ;   come(frutos)
    ).
ave(mitrephanes_phaeocercus) :-
    ojos(negro),
    garganta(cafe_canela),
    espalda(cafe_olivo),
    alas(cafe_oscuro),
    pecho(cafe_canela),
    (   corona(cafe)
    ;   corona(rojo)
    ),
    cola(cafe),
    come(insectos).
ave(contopus_pertinax) :-
    ojos(negro),
    loras(gris_claro),
    garganta(gris_claro),
    alas(negro),
    pecho(gris_claro),
    vientre(amarillo),
    cola(gris),
    come(insectos).
ave(sayornis_saya) :-
    ojos(negro),
    loras(gris_claro),
    pico(negro),
    espalda(gris),
    alas(gris_oscuro),
    pecho(gris_claro),
    vientre(rojo),
    corona(gris),
    cola(negro),
    (   come(insectos)
    ;   come(aranias)
    ;   come(frutos)
    ).
ave(pitangus_sulphuratus) :-
    ojos(negro),
    garganta(blanco),
    pico(negro),
    espalda(cafe),
    alas(rojo),
    pecho(amarillo),
    vientre(amarillo),
    cola(rojo),
    cobertoras_inferiores_cola(cafe),
    (   come(insectos)
    ;   come(lagartijas)
    ;   come(ranas)
    ;   come(mamiferos_pequenios)
    ;   come(peces)
    ;   come(frutos)
    ;   come(semillas)
    ).
ave(tyrannus_vociferans) :-
    ojos(negro),
    pico(negro),
    espalda(verde_olivo),
    alas(cafe),
    pecho(gris_plomizo),
    zona_malar(blanco),
    corona(gris_plomizo),
    cola(negro),
    (   come(frutos)
    ;   come(insectos)
    ).
ave(lanius_ludovicianus) :-
    ojos(negro),
    garganta(blanco),
    pico(gris_oscuro),
    alas(negro),
    pecho(blanco),
    (   vientre(gris_claro)
    ;   vientre(blanco)
    ),
    corona(gris_plomizo),
    (   cola(negro)
    ;   cola(blanco)
    ),
    cobertoras_inferiores_cola(blanco),
    (   come(insectos)
    ;   come(roedores)
    ;   come(aves_pequenias)
    ).
ave(nombre_ave_prueba) :-
    ojos(verde),
    garganta(amarillo),
    loras(desconocido),
    patas(desconocido),
    alas(desconocido),
    cabeza(desconocido),
    cere(desconocido),
    auriculares(desconocido),
    corona(desconocido),
    cobertoras_inferiores_cola(desconocido),
    pico(desconocido),
    cuerpo(desconocido),
    vientre(desconocido),
    pecho(desconocido),
    zona_malar(desconocido),
    cola(desconocido),
    tarsos(desconocido),
    espalda(desconocido),
    come(desconocido).

