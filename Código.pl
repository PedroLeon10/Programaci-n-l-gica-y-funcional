concepto_principal('Hierbas Medicinales').
concepto_principal('Curación Natural').
concepto_principal('Medicina Tradicional').
concepto_principal('Plantas Curativas').
concepto_principal('Recetas Herbales').

relacion('Hierbas Medicinales', 'Curación Natural').
relacion('Curación Natural', 'Medicina Tradicional').
relacion('Hierbas Medicinales', 'Plantas Curativas').
relacion('Plantas Curativas', 'Recetas Herbales').

conocimiento_herbolaria_tratamiento('Hierbas Medicinales') :- enfermedades('Hierbas Medicinales').
conocimiento_herbolaria_tratamiento('Curación Natural') :- fortalecimiento('Curación Natural').
conocimiento_herbolaria_tratamiento('Medicina Tradicional') :- enfermedades('Medicina Tradicional'), fortalecimiento('Medicina Tradicional').

forma_emplear_plantas('Hierbas Medicinales', 'Infusiones').
forma_emplear_plantas('Plantas Curativas', 'Pomadas').
forma_emplear_plantas('Recetas Herbales', 'Tisanas').

enfermedades('Hierbas Medicinales') :- tratamiento_enfermedades('Hierbas Medicinales').
enfermedades('Medicina Tradicional') :- tratamiento_enfermedades('Medicina Tradicional').

fortalecimiento('Curación Natural') :- fortalecimiento_organismo('Curación Natural').
fortalecimiento('Medicina Tradicional') :- fortalecimiento_organismo('Medicina Tradicional').

tratamiento_enfermedades(X) :- sintomas('Fiebre'), tratamiento(X, 'Fiebre').
fortalecimiento_organismo(X) :- ejercicio_fisico(X), alimentacion_sana(X).

tratamiento('Hierbas Medicinales', 'Fiebre') :- aliviar_fiebre('Hierbas Medicinales').
tratamiento('Medicina Tradicional', 'Fiebre') :- aliviar_fiebre('Medicina Tradicional').
sintomas('Fiebre').
aliviar_fiebre('Hierbas Medicinales') :- efecto('Hierbas Medicinales', 'Bajar la temperatura').
aliviar_fiebre('Medicina Tradicional') :- efecto('Medicina Tradicional', 'Reducción de la fiebre').

ejercicio_fisico('Curación Natural') :- actividad('Curación Natural', 'Yoga').
alimentacion_sana('Curación Natural') :- dieta('Curación Natural', 'Vegetariana').
ejercicio_fisico('Medicina Tradicional') :- actividad('Medicina Tradicional', 'Tai Chi').
alimentacion_sana('Medicina Tradicional') :- dieta('Medicina Tradicional', 'Mediterránea').

efecto('Hierbas Medicinales', 'Bajar la temperatura') :- planta('Manzanilla').
efecto('Medicina Tradicional', 'Reducción de la fiebre') :- planta('Corteza de Sauce').
concepto_principal('Hierbas Medicinales').
concepto_principal('Curación Natural').
concepto_principal('Medicina Tradicional').
concepto_principal('Plantas Curativas').
concepto_principal('Recetas Herbales').

relacion('Hierbas Medicinales', 'Curación Natural').
relacion('Curación Natural', 'Medicina Tradicional').
relacion('Hierbas Medicinales', 'Plantas Curativas').
relacion('Plantas Curativas', 'Recetas Herbales').

conocimiento_herbolaria_tratamiento('Hierbas Medicinales') :- enfermedades('Hierbas Medicinales').
conocimiento_herbolaria_tratamiento('Curación Natural') :- fortalecimiento('Curación Natural').
conocimiento_herbolaria_tratamiento('Medicina Tradicional') :- enfermedades('Medicina Tradicional'), fortalecimiento('Medicina Tradicional').

forma_emplear_plantas('Hierbas Medicinales', 'Infusiones').
forma_emplear_plantas('Plantas Curativas', 'Pomadas').
forma_emplear_plantas('Recetas Herbales', 'Tisanas').

enfermedades('Hierbas Medicinales') :- tratamiento_enfermedades('Hierbas Medicinales').
enfermedades('Medicina Tradicional') :- tratamiento_enfermedades('Medicina Tradicional').

fortalecimiento('Curación Natural') :- fortalecimiento_organismo('Curación Natural').
fortalecimiento('Medicina Tradicional') :- fortalecimiento_organismo('Medicina Tradicional').

tratamiento_enfermedades(X) :- sintomas('Fiebre'), tratamiento(X, 'Fiebre').
fortalecimiento_organismo(X) :- ejercicio_fisico(X), alimentacion_sana(X).

tratamiento('Hierbas Medicinales', 'Fiebre') :- aliviar_fiebre('Hierbas Medicinales').
tratamiento('Medicina Tradicional', 'Fiebre') :- aliviar_fiebre('Medicina Tradicional').
sintomas('Fiebre').
aliviar_fiebre('Hierbas Medicinales') :- efecto('Hierbas Medicinales', 'Bajar la temperatura').
aliviar_fiebre('Medicina Tradicional') :- efecto('Medicina Tradicional', 'Reducción de la fiebre').

ejercicio_fisico('Curación Natural') :- actividad('Curación Natural', 'Yoga').
alimentacion_sana('Curación Natural') :- dieta('Curación Natural', 'Vegetariana').
ejercicio_fisico('Medicina Tradicional') :- actividad('Medicina Tradicional', 'Tai Chi').
alimentacion_sana('Medicina Tradicional') :- dieta('Medicina Tradicional', 'Mediterránea').

efecto('Hierbas Medicinales', 'Bajar la temperatura') :- planta('Manzanilla').
efecto('Medicina Tradicional', 'Reducción de la fiebre') :- planta('Corteza de Sauce').
tratamiento(abcesos, malva).
tratamiento(abceso_hepatico, zarzaparrilla).
tratamiento(acidez_estomacal, anis).
tratamiento(acidez_estomacal, peregil).

tratamiento(acido_urico, sanguinaria).
tratamiento(acido_urico, limos).
tratamiento(acido_urico, sauco).

tratamiento(acne, arnica).

tratamiento(aftas, llanten).
tratamiento(aftas, fenogreco).
tratamiento(aftas, zarzamora).

tratamiento(agotamiento, salvia).
tratamiento(agotamiento, tilo).
tratamiento(agotamiento, valeriana).

tratamiento(agruas, yerbabuena).
tratamiento(agruas, manzanilla).
tratamiento(agruas, jugo_de_limón).
tratamiento(agruas, jugo_de_toronja).

tratamiento(albuminaria, pinguica).
tratamiento(albuminaria, quinaroja).
tratamiento(albuminaria, encino_rojo).

tratamiento(alcoholismo, pimiento).

tratamiento(almorranas, salvia).
tratamiento(almorranas, hamamelis).
tratamiento(almorranas, sanguinaria).
tratamiento(almorranas, cola_de_caballo).
tratamiento(almorranas, arnica).
tratamiento(almorranas, sauco).

tratamiento(anemia, ajenjo).
tratamiento(anemia, germen_de_trigo).
tratamiento(anemia, quira).
tratamiento(anemia, canela).
tratamiento(anemia, alholra).

tratamiento(anginas, eucalipto).
tratamiento(anginas, cabada).
tratamiento(anginas, salvia).
tratamiento(anginas, tabachin).
tratamiento(anginas, borraja).

tratamiento(anorexia, ajenjo).
tratamiento(anorexia, gerciana).
tratamiento(anorexia, yerbabuena).

tratamiento(arterosclerosis, limon).
tratamiento(arterosclerosis, genciana).
tratamiento(arterosclerosis, cardo).
tratamiento(arterosclerosis, zarzaparilla).
tratamiento(arterosclerosis, arnica).
tratamiento(arterosclerosis, chicalote).
tratamiento(arterosclerosis, alcanfor).
tratamiento(arterosclerosis, toronja).

tratamiento(artritis, limon).
tratamiento(artritis, genciana).
tratamiento(artritis, cardo).
tratamiento(artritis, zarzaparilla).
tratamiento(artritis, arnica).
tratamiento(artritis, chicalote).
tratamiento(artritis, alcanfor).
tratamiento(artritis, toronja).

tratamiento(asma, eucalipto).
tratamiento(asma, marrubio).
tratamiento(asma, toloache).
tratamiento(asma, cregano).
tratamiento(asma, salvia).

tratamiento(atonia_estomacal, lupulo).
tratamiento(atonia_estomacal, eucalipto).
tratamiento(atonia_estomacal, cuasia).

tratamiento(bazo, uva).
tratamiento(bazo, cerezo).

tratamiento(boca_inflamacion, malva).
tratamiento(boca_inflamacion, rosal).
tratamiento(boca_inflamacion, limon).
tratamiento(boca_inflamacion, salvia).

tratamiento(boca_estomatitis, rosal).
tratamiento(boca_estomatitis, encima).
tratamiento(boca_estomatitis, salvia).
tratamiento(boca_estomatitis, zarzamora).

tratamiento(bronquitis, eucalipto).
tratamiento(bronquitis, borraja).
tratamiento(bronquitis, anacahuite).
tratamiento(bronquitis, gadolobo).
tratamiento(bronquitis, tilo).
tratamiento(bronquitis, benjui).
tratamiento(bronquitis, marrubio).
tratamiento(bronquitis, rabano).

tratamiento(bronconeumonia, gordolobo).
tratamiento(bronconeumonia, eucalipto).
tratamiento(bronconeumonia, ipecacuana).
tratamiento(bronconeumonia, mostaza).

tratamiento(cabello_caida, ortiga).
tratamiento(cabello_caida, espinosilla).
tratamiento(cabello_caida, marrubio).
tratamiento(cabello_caida, romero).

tratamiento(calambres, anis).
tratamiento(calambres, tila).
tratamiento(calambres, manzanilla).
tratamiento(calambres, ajenjo).

tratamiento(calculos_biliares, diente_de_leon).
tratamiento(calculos_biliares, aceite_de_oliva).
tratamiento(calculos_biliares, retama).

tratamiento(calculos_renales, cabellos_de_elote).
tratamiento(calculos_renales, pinguica).
tratamiento(calculos_renales, cola_de_caballo).

tratamiento(callos, ajo).
tratamiento(callos, cebolla).

tratamiento(caries, hiedra).
tratamiento(caries, cola_de_caballo).

tratamiento(caspa, ortiga).
tratamiento(caspa, limon).
tratamiento(caspa, romero).

tratamiento(cancer_del_utero, cuachalalate).
tratamiento(cancer_del_utero, llanten).
tratamiento(cancer_del_utero, siempreviva).

tratamiento(ciatica, mastuerzo).
tratamiento(ciatica, higuera).
tratamiento(ciatica, sauco).

tratamiento(circulacion, toronjil).
tratamiento(circulacion, sanguinaria).
tratamiento(circulacion, salvia).
tratamiento(circulacion, hamamelis).

tratamiento(cistitis, cola_de_caballo).
tratamiento(cistitis, doradilla).
tratamiento(cistitis, ajo).
tratamiento(cistitis, cabellos_de_elote).

tratamiento(colicos, menta).
tratamiento(colicos, hinojo).
tratamiento(colicos, manzanilla).
tratamiento(colicos, toronjil).
tratamiento(colicos, boldo).

tratamiento(colitis, linaza).
tratamiento(colitis, anis).
tratamiento(colitis, romero).
tratamiento(colitis, cola_de_caballo).

tratamiento(contusiones, arnica).
tratamiento(contusiones, hamamelis).
tratamiento(contusiones, laurel).
tratamiento(contusiones, brionia).

tratamiento(corazon_tonico, digital).
tratamiento(corazon_tonico, salvia).
tratamiento(corazon_tonico, nuez_de_kola).
tratamiento(corazon_tonico, tejocote).

tratamiento(depurativos_de_la_sangre, achicoria).
tratamiento(depurativos_de_la_sangre, diente_de_leon).
tratamiento(depurativos_de_la_sangre, apio).
tratamiento(depurativos_de_la_sangre, sanguinaria).
tratamiento(depurativos_de_la_sangre, zarzaparrilla).
tratamiento(depurativos_de_la_sangre, berro).

tratamiento(diabetes, matarique).
tratamiento(diabetes, tronadora).
tratamiento(diabetes, eucalipto).
tratamiento(diabetes, damiana).

tratamiento(diarrea_cronica, capulin).
tratamiento(diarrea_cronica, mezquite).
tratamiento(diarrea_cronica, tlalchichinole).

tratamiento(diarrea_por_irritacion, linaza).
tratamiento(diarrea_por_irritacion, membrillo).
tratamiento(diarrea_por_irritacion, arroz).
tratamiento(diarrea_por_irritacion, cebada).

tratamiento(diarrea_por_inflamacion, guayaba).
tratamiento(diarrea_por_inflamacion, albahaca).
tratamiento(diarrea_por_inflamacion, granada).

tratamiento(diarrea_verdosa, manzanilla).
tratamiento(diarrea_verdosa, simonillo).
tratamiento(diarrea_verdosa, siempreviva).

tratamiento(diarrea_con_sangre, chaparro_amargoso).
tratamiento(diarrea_con_sangre, muicle).
tratamiento(diarrea_con_sangre, monacillo).

tratamiento(difteria, limon).
tratamiento(difteria, naranja).

tratamiento(disenteria, tamarindo).
tratamiento(disenteria, chaparro_amargoso).
tratamiento(disenteria, ipecacuana).
tratamiento(disenteria, cedral).

tratamiento(dispepsia, anis).
tratamiento(dispepsia, menta).
tratamiento(dispepsia, yerbabuena).
tratamiento(dispepsia, diente).
tratamiento(dispepsia, te_limon).
tratamiento(dispepsia, quina).
tratamiento(dispepsia, genciana).
tratamiento(dispepsia, tabaquillo).
tratamiento(dispepsia, ruibarbo).

tratamiento(dolor, anis_estrella).
tratamiento(dolor, valeriana).
tratamiento(dolor, manzanilla).

tratamiento(dolores_musculares, alcanfor).

tratamiento(empacho, tamarindo).

tratamiento(enteritis, linaza).
tratamiento(enteritis, cedron).
tratamiento(enteritis, llanten).

tratamiento(epilepsia, valeriana).

tratamiento(epistaxis, hierba_de_pollo).
tratamiento(epistaxis, cebolla).
tratamiento(epistaxis, perejil).

tratamiento(erisipela, sauco).
tratamiento(erisipela, hiedra).
tratamiento(erisipela, zanahoria).

tratamiento(escarlatina, borraja).
tratamiento(escarlatina, sauco).
tratamiento(escarlatina, cebolla).

tratamiento(escorbuto, ajo).
tratamiento(escorbuto, limon).
tratamiento(escorbuto, berro).
tratamiento(escorbuto, cebolla).
tratamiento(escorbuto, geranio).

tratamiento(estrenimiento, ciruela).
tratamiento(estrenimiento, linaza).
tratamiento(estrenimiento, chia).
tratamiento(estrenimiento, tamarindo).
tratamiento(estrenimiento, agar_agar).

tratamiento(faringitis, eucalipto).
tratamiento(faringitis, laranda).
tratamiento(faringitis, anacahuite).

tratamiento(flatulencias, apio).
tratamiento(flatulencias, tornillo).
tratamiento(flatulencias, perejil).
tratamiento(flatulencias, arus_estrella).
tratamiento(flatulencias, hinojo).
tratamiento(flatulencias, toronjil).
tratamiento(flatulencias, romero).
tratamiento(flatulencias, ruibardo).
tratamiento(flatulencias, ruda).
tratamiento(flatulencias, menta).

tratamiento(flebitis, arnica).
tratamiento(flebitis, alfalfa).
tratamiento(flebitis, lino).
tratamiento(flebitis, malvavisco).
tratamiento(flebitis, romero).
tratamiento(flebitis, quina).

tratamiento(flemas, genciana).
tratamiento(flemas, oregano).

tratamiento(forunculos, fenogreco).
tratamiento(forunculos, malvavisco).
tratamiento(forunculos, hiedra).

tratamiento(gastralgia_dolor_estomago, manzanilla).
tratamiento(gastralgia_dolor_estomago, anis_estrella).

tratamiento(gonorrea, cola_de_caballo).
tratamiento(gonorrea, doradilla).
tratamiento(gonorrea, zarzaparrilla).

tratamiento(gota, apio).
tratamiento(gota, cereza).
tratamiento(gota, limon).
tratamiento(gota, pino).
tratamiento(gota, alcanfor).
tratamiento(gota, aconito).
tratamiento(gota, belladona).
tratamiento(gota, beleno).
tratamiento(gota, colchico).
tratamiento(gota, chicalote).

tratamiento(grientas_del_ano, encina).

tratamiento(grietas_del_pezon, encina).
tratamiento(grietas_del_pezon, nogal).
tratamiento(grietas_del_pezon, milenrana).

tratamiento(gripe, eucalipto).
tratamiento(gripe, limon).
tratamiento(gripe, quina).
tratamiento(gripe, zarzaparrilla).
tratamiento(gripe, calenda).

tratamiento(halitosis, hinajo).
tratamiento(halitosis, menta).

tratamiento(hemorragia_interna, mastuerzo).
tratamiento(hemorragia_interna, ortiga).
tratamiento(hemorragia_interna, rosal).

tratamiento(hepatitis, retama).
tratamiento(hepatitis, boldo).
tratamiento(hepatitis, alcachofa).
tratamiento(hepatitis, prodigiosa).
tratamiento(hepatitis, cascara_sagrada).

tratamiento(hernia, helecho).
tratamiento(hernia, ricino).
tratamiento(hernia, tabaco).

tratamiento(herpes, linaza).
tratamiento(herpes, llanten).

tratamiento(heridas, arnica).
tratamiento(heridas, hamamelis).

tratamiento(hidropesia, alcachofa).
tratamiento(hidropesia, cardo).
tratamiento(hidropesia, perejil).
tratamiento(hidropesia, sauco).
tratamiento(hidropesia, berros).
tratamiento(hidropesia, retama).

tratamiento(higado, marrubio).
tratamiento(higado, boldo).
tratamiento(higado, doradilla).
tratamiento(higado, ruibarbo).

tratamiento(bilis, lechuga).
tratamiento(bilis, tila).

tratamiento(letericia, papaloquelite).
tratamiento(letericia, alchicoria).
tratamiento(letericia, berros).
tratamiento(letericia, llanton).
tratamiento(letericia, retama).
tratamiento(letericia, tecomasuchil).

tratamiento(hipertension, miel).
tratamiento(hipertension, nuez_de_kola).
tratamiento(hipertension, crategus).
tratamiento(hipertension, acedera).

tratamiento(hipo, anis).
tratamiento(hipo, hinojo).
tratamiento(hipo, tila).
tratamiento(hipo, valeriana).

tratamiento(histerismo, azahar).
tratamiento(histerismo, beleno).
tratamiento(histerismo, gelsemio).
tratamiento(histerismo, tita).
tratamiento(histerismo, valeriana).

tratamiento(insomnio, pasiflora).
tratamiento(insomnio, azahar).
tratamiento(insomnio, menta).
tratamiento(insomnio, manzanilla).
tratamiento(insomnio, lechiga).
tratamiento(insomnio, tila).

tratamiento(intestino_atonia, genciana).
tratamiento(intestino_atonia, melisa).

tratamiento(impotencia_sexual, yohimbo).
tratamiento(impotencia_sexual, danviana).
tratamiento(impotencia_sexual, nuez_vomica).
tratamiento(impotencia_sexual, aguacate).

tratamiento(jaqueca, manzanilla).
tratamiento(jaqueca, aconito).
tratamiento(jaqueca, valeriana).
tratamiento(jaqueca, tila).
tratamiento(jaqueca, chicalote).

tratamiento(lactancia, hinojo).
tratamiento(lactancia, anis).
tratamiento(lactancia, menta).
tratamiento(lactancia, perejil).
tratamiento(lactancia, zanahoria).

tratamiento(laringitis, aconito).
tratamiento(laringitis, borraja).
tratamiento(laringitis, cebolla).
tratamiento(laringitis, rosa).
tratamiento(laringitis, benjui).
tratamiento(laringitis, encino).

tratamiento(leucorrea, encina).
tratamiento(leucorrea, zarzaparrilla).
tratamiento(leucorrea, pino).
tratamiento(leucorrea, enebro).
tratamiento(leucorrea, genciana).

tratamiento(lombrices, ajenjo).
tratamiento(lombrices, ajo).
tratamiento(lombrices, cebolla).
tratamiento(lombrices, brionia).
tratamiento(lombrices, aguacate).
tratamiento(lombrices, epazote).
tratamiento(lombrices, papaya).

tratamiento(lumbago, avena).
tratamiento(lumbago, cebada).
tratamiento(lumbago, tomillo).
tratamiento(lumbago, verbena).

tratamiento(llagas, fenogreco).
tratamiento(llagas, eucalipto).
tratamiento(llagas, llanton).
tratamiento(llagas, sanguinaria).

tratamiento(malaria, quina).
tratamiento(malaria, girasol).
tratamiento(malaria, eucalipto).
tratamiento(malaria, cardo).

tratamiento(menopausia, azahar).
tratamiento(menopausia, hamamelis).
tratamiento(menopausia, tila).
tratamiento(menopausia, quina_roja).

tratamiento(menstruacion_abundante, azafran).
tratamiento(menstruacion_abundante, hamamelis).

tratamiento(menstruacion_dolorosa, belladona).
tratamiento(menstruacion_dolorosa, anis_estrella).

tratamiento(menstruacion_escasa, ruda).
tratamiento(menstruacion_escasa, ajenjo).
tratamiento(menstruacion_escasa, manzanilla).

tratamiento(menstruacion_irregular, apio).
tratamiento(menstruacion_irregular, hisopo).
tratamiento(menstruacion_irregular, quina_amarilla).
tratamiento(menstruacion_irregular, sabina).
tratamiento(menstruacion_irregular, artemia).

tratamiento(metorrogia_hemorragia_vaginal, hamamelis).
tratamiento(metorrogia_hemorragia_vaginal, zoapatle).
tratamiento(metorrogia_hemorragia_vaginal, perejil).
tratamiento(metorrogia_hemorragia_vaginal, cuerrecilo_centena).

tratamiento(dolor_de_muelas, clavo).
tratamiento(dolor_de_muelas, hiedra).

tratamiento(nariz_hemorragias, ortiga).
tratamiento(nariz_hemorragias, cola_de_caballo).
tratamiento(nariz_hemorragias, ruda).
tratamiento(nariz_hemorragias, eucalipto).

tratamiento(nauseas, anis).
tratamiento(nauseas, ajenjo).
tratamiento(nauseas, menta).
tratamiento(nauseas, salvia).

tratamiento(neuralgias, manzanilla).
tratamiento(neuralgias, menta).
tratamiento(neuralgias, valeriana).
tratamiento(neuralgias, boldo).

tratamiento(neurastenia, pasiflora).
tratamiento(neurastenia, te_negro).
tratamiento(neurastenia, mate).
tratamiento(neurastenia, valeriana).

tratamiento(nefritis, linaza).
tratamiento(nefritis, grama).
tratamiento(nefritis, cebada).
tratamiento(nefritis, llanten).
tratamiento(nefritis, doradilla).
tratamiento(nefritis, esparrago).
tratamiento(nefritis, ruda).

tratamiento(obesidad, toronjil).
tratamiento(obesidad, marrubro).
tratamiento(obesidad, limon).
tratamiento(obesidad, malva).
tratamiento(obesidad, esparrago).

tratamiento(oidos, bolbo).
tratamiento(oidos, aceite_de_oliva).
tratamiento(oidos, llanten).
tratamiento(oidos, hiedra).

tratamiento(ojos_conjuntivitis_irritacion, manzanilla).
tratamiento(ojos_conjuntivitis_irritacion, limon).
tratamiento(ojos_conjuntivitis_irritacion, llanten).
tratamiento(ojos_conjuntivitis_irritacion, salvia).
tratamiento(ojos_conjuntivitis_irritacion, ruda).
tratamiento(ojos_conjuntivitis_irritacion, rosal).

tratamiento(paludismo, ajenjo).
tratamiento(paludismo, quina).

tratamiento(pecas, berro).
tratamiento(pecas, genciana).
tratamiento(pecas, rabano).
tratamiento(pecas, papaya).

tratamiento(pies_olorosos, laurel).
tratamiento(pies_olorosos, encina).

tratamiento(piquetes_abeja, miel).
tratamiento(piquetes_abeja, perejil).
tratamiento(piquetes_abeja, cebolla).
tratamiento(piquetes_abeja, puerro).

tratamiento(piquetes_arana, fresno).
tratamiento(piquetes_arana, ipecacuana).

tratamiento(piquetes_mosco, alcantor).
tratamiento(piquetes_mosco, perejil).
tratamiento(piquetes_mosco, hamamelis).

tratamiento(piquetes_vivora, anagalida).

tratamiento(pleuresia, jengibre).
tratamiento(pleuresia, linaza).
tratamiento(pleuresia, cardo).
tratamiento(pleuresia, girasol).

tratamiento(piorrea, ipecacuana).

tratamiento(prostata, cola_de_caballo).

tratamiento(pulmonia, eucalipto).
tratamiento(pulmonia, ocote).
tratamiento(pulmonia, gordolobo).
tratamiento(pulmonia, borraja).
tratamiento(pulmonia, sauco).

tratamiento(quemaduras, lanaza).
tratamiento(quemaduras, cebolla).
tratamiento(quemaduras, hiedra).
tratamiento(quemaduras, gordolobo).

tratamiento(raquitismo, nogal).

tratamiento(reumatismo, ajo).
tratamiento(reumatismo, apio).
tratamiento(reumatismo, borraja).
tratamiento(reumatismo, gobernadora).
tratamiento(reumatismo, pino).
tratamiento(reumatismo, romero).
tratamiento(reumatismo, sanguinaria).
tratamiento(reumatismo, marrubio).
tratamiento(reumatismo, tabaco).

tratamiento(rinones, cabellos_de_elote).
tratamiento(rinones, cola_de_caballo).
tratamiento(rinones, apio).

tratamiento(ronquera, eucalipto).
tratamiento(ronquera, pino).
tratamiento(ronquera, gordolobo).

tratamiento(sabaniotes, ajo).
tratamiento(sabaniotes, cebolla).

tratamiento(san_vito, estafiate).
tratamiento(san_vito, valeriana).

tratamiento(sarna, ajo).
tratamiento(sarna, alcanfor).
tratamiento(sarna, mente).
tratamiento(sarna, tomillo).
tratamiento(sarna, romero).

tratamiento(sarpullido, encina).
tratamiento(sarpullido, salvia).
tratamiento(sarpullido, tila).

tratamiento(sed, led).
tratamiento(sed, tamarindo).
tratamiento(sed, pirul).

tratamiento(solitaria, semilla_de_calabaza).
tratamiento(solitaria, granado).
tratamiento(solitaria, coquito_de_aceite).
tratamiento(solitaria, raiz_de_granado_agrio).
tratamiento(solitaria, helecho_macho).

tratamiento(sudoracion_excesiva, encina).

tratamiento(tifoidea, alcanfor).
tratamiento(tifoidea, borraja).
tratamiento(tifoidea, quina).
tratamiento(tifoidea, canela).
tratamiento(tifoidea, romero).
tratamiento(tifoidea, salvia).

tratamiento(tina, berro).
tratamiento(tina, tila).
tratamiento(tina, tamarindo).
tratamiento(tina, salvia).

tratamiento(tos, eucalipto).
tratamiento(tos, capulin).
tratamiento(tos, cedron).
tratamiento(tos, salvia).
tratamiento(tos, malva).
tratamiento(tos, marrubio).

tratamiento(tos_ferina, gelsemio).
tratamiento(tos_ferina, quina).
tratamiento(tos_ferina, rabano).
tratamiento(tos_ferina, violeta).

tratamiento(tuberculosis, jugo_de_platano_morado).
tratamiento(tuberculosis, mastuerzo).
tratamiento(tuberculosis, berro).
tratamiento(tuberculosis, ajo).
tratamiento(tuberculosis, eucalipto).
tratamiento(tuberculosis, pirul).
tratamiento(tuberculosis, pino).
tratamiento(tuberculosis, roble).

tratamiento(ulcera, cuachalalate).
tratamiento(ulcera, sanguinaria).
tratamiento(ulcera, cola_de_caballo).
tratamiento(ulcera, girasol).

tratamiento(urticaria, limon).
tratamiento(urticaria, ruibardo).

tratamiento(varices, hamamelis).
tratamiento(varices, castano_de_indias).
tratamiento(varices, llanten).
tratamiento(varices, toronjil).

tratamiento(vejiga, apio).
tratamiento(vejiga, cipres).
tratamiento(vejiga, cola_de_caballo).
tratamiento(vejiga, ortiga).
tratamiento(vejiga, malva).

tratamiento(verrugas, leche_de_higuera).
tratamiento(verrugas, cebolla).
tratamiento(verrugas, nogal).

tratamiento(vertigos, albahaca).
tratamiento(vertigos, espino).

tratamiento(vomitos, menta).
tratamiento(vomitos, tila).
tratamiento(vomitos, marrubio).
tratamiento(vomitos, valeriana).
tratamiento(vomitos, salvia).

tratamiento(voz, cilantro).
tratamiento(voz, ajo).
tratamiento(voz, limon).
tratamiento(voz, pino).

tratamiento(vitaminas, alfalfa).
tratamiento(vitaminas, espinacas).
tratamiento(vitaminas, acelga).
tratamiento(vitaminas, berro).
tratamiento(vitaminas, cebolla).
tratamiento(vitaminas, limon).
tratamiento(vitaminas, zanahoria).
tratamiento(vitaminas, aceite_de_bacalao).

% Hechos (botiquín)
hierba(anis).
hierba(estrella).
hierba(menta).
hierba(arnica).
hierba(savila).
hierba(tila).
hierba(eucalipto).
hierba(yerbabuena).
hierba(manzanilla).
hierba(cola_de_caballo).
hierba(romero).
hierba(toronjil).
hierba(sanguinaria).
hierba(linaza).
hierba(hamamelis).
hierba(boldo).
hierba(diente_de_leon).
hierba(azahar).
hierba(malva).
hierba(marrubio).
hierba(rosal).

% Reglas (relaciones)
trata_condicion(anis, acidez_estomacal).
trata_condicion(estrella, dolor).
trata_condicion(menta, nauseas).
trata_condicion(arnica, contusiones).
trata_condicion(savila, quemaduras).
trata_condicion(tila, nerviosismo).
trata_condicion(eucalipto, bronquitis).
trata_condicion(yerbabuena, agotamiento).
trata_condicion(manzanilla, aftas).
trata_condicion(cola_de_caballo, cistitis).
trata_condicion(romero, cabello_caida).
trata_condicion(toronjil, sedante).
trata_condicion(sanguinaria, hemorragia).
trata_condicion(linaza, diarrea_cronica).
trata_condicion(hamamelis, hemorroides).
trata_condicion(boldo, flatulencias).
trata_condicion(diente_de_leon, calculos_biliares).
trata_condicion(azahar, insomnio).
trata_condicion(malva, inflamacion).
trata_condicion(marrubio, lumbago).
trata_condicion(rosal, boca_inflamacion).

% Regla para obtener hierbas que tratan una condición médica
hierbas_para_condicion(Condicion, Hierbas) :-
    findall(Hierba, trata_condicion(Hierba, Condicion), Hierbas).

% Ejemplo de uso:
% Consultar hierbas para tratar la condición médica "hemorragia"
% ?- hierbas_para_condicion(hemorragia, Hierbas).
% Hierbas = [sanguinaria].

% Hechos y reglas para las formas de uso de las plantas
:- discontiguous uso/6.
% Conocimiento: poner a hervir en agua la hierba o raíz por 10 minutos, dejar reposar unos 5 minutos y tomarlo ya colado
uso(conocimiento, hierba_raiz, hervir_agua, 10, reposar, 5, tomar_colado).

% Infunción: hervir el agua en un recipiente y vaciarla ya hervida y todavía hirviendo en otro donde se depositará previamente la planta, tapar y dejar en reposo 5 minutos, colar y tomar
uso(infuncion, planta, hervir_agua, 1, vaciar_otro_recipiente, hervir_otro_recipiente, 10, reposar, 5, colar, tomar).

% Maceración: triturar la planta y sumergirla en poca agua para que se remoje y suelte las sustancias
uso(maceracion, planta, triturar, sumergir_agua, remojar, suelte_sustancias).

% Jarabe: hervir la planta en agua 10 minutos, agregarle azúcar y hervir otros 10 minutos, enfriar, colar, añadir 10% de alcohol de caña y envasar para uso posterior
uso(jarabe, planta, hervir_agua, 10, agregar_azucar, hervir_otros_10_minutos, enfriar, colar, anadir_alcohol, envasar).

% Tintura: en un frasco que pueda taparse con tapón de corcho, poner la planta desmenuzada o triturada, echarle alcohol de caña, agitar, añadir agua destilada y dejar reposar en lo oscuro una o dos semanas, filtrar con algodón o esponja
uso(tintura, planta, poner_frasco, agregar_alcohol, agitar, anadir_agua_destilada, reposar, filtrar).

% Jugo: exprimir las plantas en un trapo limpio
uso(jugo, plantas, exprimir_trapo_limpo).

% Horchata: moler las semillas agregando poco a poco agua para formar una masa, colar en cedazo, endulzar y agregar agua para tomar
uso(horchata, semillas, moler_agregar_agua, colar_cedazo, endulzar, agregar_agua).

% Hechos
planta(jazmin_amarillo).
venenosa(jazmin_amarillo).
no_debe_usar_nefriticos(jazmin_amarillo).
no_debe_usar_enfermos_corazon(jazmin_amarillo).
efecto_antineralgico(jazmin_amarillo).
efecto_antiespasmodico(jazmin_amarillo).
preparacion_por_tintura(jazmin_amarillo).
dosis_recomendada(jazmin_amarillo, 5, 40). % Dosis recomendada: de 5 a 40 gotas diarias

% Reglas
es_efectivo_contra(jazmin_amarillo, dolor_de_cabeza).
es_efectivo_contra(jazmin_amarillo, reumas).
es_efectivo_contra(jazmin_amarillo, dolor_de_espalda).
es_efectivo_contra(jazmin_amarillo, tosferina).
es_efectivo_contra(jazmin_amarillo, asma_bronquial).
es_efectivo_contra(jazmin_amarillo, menstruacion_dolorosa).



% Hechos
planta(jengibre).
uso(jengibre, tónico_cerebral).
uso(jengibre, remedio_para_la_cruda).
preparacion(jengibre, ["2 gramos de ácido tartárico", "1 cucharada de tintura de jengibre", "2 gramos de bicarbonato"]).

% Reglas
es_efectivo_contra(jengibre, cansancio_mental).
es_efectivo_contra(jengibre, resaca).

% Hechos
planta(linaza).
uso_interno(linaza).
uso_externo(linaza).
efecto_externo(linaza, abcesos).
efecto_externo(linaza, flebitis).
efecto_interno(linaza, estrenimiento).
efecto_interno(linaza, colitis).
efecto_interno(linaza, males_estomacales).
efecto_interno(linaza, bronquitis).
efecto_interno(linaza, hemorroides).

% Reglas
es_efectivo_contra(linaza, estrenimiento_duro_de_pelar).
es_efectivo_contra(linaza, colitis).
es_efectivo_contra(linaza, males_estomacales).
es_efectivo_contra(linaza, bronquitis).
es_efectivo_contra(linaza, hemorroides).



