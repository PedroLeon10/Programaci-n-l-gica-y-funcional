:- use_module(library(pce)).

%MetodoParaMostrarImagen
mostrarImagen(V,D,M):- new(I, image(V)),%CreandoUnaNuevaImagen
        new(B, bitmap(I)),
        new(F2, figure),
        send(F2, display, B),
        %DondeSeVeraLaImagen
        new(D1, device),
        send(D1, display, F2),
        send(D, display, D1,point(10,10)),
        send(D1,below(M)).

:- pce_global(@name_prompter, make_name_prompter).

        %CreaElDilogoParaIngresarElNombreYBuscarLaInformacion
        make_name_prompter(P) :-
                new(P, dialog),
                send(P, kind, transient),
                send(P, append, label(prompt)),
                send(P, append,
                        new(TI, text_item(name, '',
                                 message(P?ok_member, execute)))),
                send(P, append, button(ok, message(P, return, TI?selection))),
                %%send(P, append, button(ok, message(@prolog,pp))),
                send(P, append, button(cancel, message(P, return, @nil))).

        %MuestraElDialogoIngresarElNombreYBuscarLaInformacion__EnNameEstaElNombre
        ask_name(Prompt, Label, Name) :-
                send(@name_prompter?prompt_member, selection, Prompt),
                send(@name_prompter?name_member, label, Label),
                send(@name_prompter?name_member, clear),
                get(@name_prompter, confirm_centered, RawName),
                send(@name_prompter, show, @off),
                RawName \== @nil,
                Name = RawName.
        
        %MostrarInfromacionDeLosPlantas
        ask_name_info_planta:-
                  ask_name('Informacion de una planta','Nombre de la planta:', Planta),
                  pp_info_planta(Planta).
                  
        ask_name_info_medicamento:-
                  ask_name('Informacion de un medicamento','Nombre del medicamento:', Medicamento),
                  pp_info_medicamento(Medicamento).

        ask_name_info_enfermedad:-
                  ask_name('Informacion de una enfermedad','Nombre de la enfermedad:', Enfermedad),
                  pp_info_enfermedad(Enfermedad).
                  
        ask_name_enfermedades_curadas_por:-
                  ask_name('Enfermedades curadas por una planta','Ingrese la planta:', Planta),
                  pp_enfermedades_curadas_por(Planta).
        
        ask_name_Termino_a_buscar:-
                  ask_name('Buscador de terminos: ','Termino a buscar:', Termino),
                  pp_significado_De_Terminos(Termino).
        
        ask_propiedad_plantas:-
                  ask_name('Plantas segun el efecto causado: ','Ingrese el efecto:', Propiedad),
                  pp_listar_plantas_propiedad(Propiedad).

        pp_ask_forma_uso:-
                  ask_name('Modos de preparacion: ','Inserte el modo de preparacion:', FormaUso),
                  pp_recetario(FormaUso).
                  
%##################### METODO PRINCIPAL #########################       
    start :-
            %IniciaElProgramaComoTal
            new(D,dialog('El yerberito ilustrado')),
            send(D,size,size(400,800)),
            send(D,colour,colour(red)),
            send(D, append, new(Menu, menu_bar)),        
            send(Menu,append,new(Iniciar1,popup('Menu: '))),
                    %mostrar_lista_de_plantas_medicinales        
                    send_list(Iniciar1, append,
                        [menu_item('Listar plantas medicinales', message(@prolog, pp_listar_plantas))
                        ]),
                    send_list(Iniciar1, append,
                        [menu_item('Listar elementos de las plantas', message(@prolog, pp_listar_elementos))
                        ]),
                    %Informacion de una planta en especifico
                    send_list(Iniciar1,append,
                        [menu_item('Consultar una planta',message(@prolog,ask_name_info_planta))
                        ]),
                    %mostrar_lista_de_plantas_medicinales        
                    send_list(Iniciar1, append,
                        [menu_item('Listar de plantas que producen medicamentos', message(@prolog, pp_produce_medicamento))
                        ]),
                    send_list(Iniciar1,append,
                        [menu_item('Lista de medicamentos',message(@prolog,pp_lista_medicamentos))
                        ]),
                    send_list(Iniciar1,append,
                        [menu_item('Consultar un medicamento',message(@prolog,ask_name_info_medicamento))
                        ]), 
                    %Mostrar_medicamento_que_produce_la_planta
                    send_list(Iniciar1,append,
                        [menu_item('Plantas segun su efecto',message(@prolog,ask_propiedad_plantas))
                        ]),
                    %Buscar_significado_de_los_terminos
                    send_list(Iniciar1,append,
                        [menu_item('Significado de terminos',message(@prolog,ask_name_Termino_a_buscar))
                        ]),
                    %mostrar lista de planta y su efecto en el cuerpo
                    send_list(Iniciar1, append,
                        [menu_item('Lista de plantas y sus efectos', message(@prolog, pp_listar_planta_efecto))
                        ]),  
                    %mostrar_lista_de_propiedades_y_efectos_de_las_plantas
                    send_list(Iniciar1, append,
                        [menu_item('Listar propiedades y sus efectos', message(@prolog, pp_listar_propiedades_efectos))
                        ]),
                    %mostrar lista de nombre de la planta y su nombre cientifico
                    send_list(Iniciar1, append,
                        [menu_item('Nombre cientifico de las plantas', message(@prolog, pp_listar_planta_y_nombre_cientifico))
                        ]), 
                    send_list(Iniciar1,append,
                        [menu_item('Lista de enfermedades',message(@prolog,pp_lista_padecimientos))
                        ]),
                    %Mostar_enfermedades_que_cura_x_plnata
                    send_list(Iniciar1,append,
                        [menu_item('Enfermedades curadas por una planta',message(@prolog,ask_name_enfermedades_curadas_por))
                        ]),
                    send_list(Iniciar1,append,
                        [menu_item('Consultar una enfermedad',message(@prolog,ask_name_info_enfermedad))
                        ]),
                    send_list(Iniciar1, append,
                        [menu_item('Modos de preparacion', message(@prolog, pp_ask_forma_uso))
                        ]),
                    send_list(Iniciar1, append,
                        [menu_item('Lista de plantas y su forma de preparacion', message(@prolog, pp_listar_plantas_uso))
                        ]),
                    send_list(Iniciar1,append,
                        [menu_item('Lista de origenes',message(@prolog,pp_lista_origenes))
                        ]),
                    %mostrar_lista_de_plantas_que pertenecen al botiquin        
                    send_list(Iniciar1, append,
                        [menu_item('Botiquin', message(@prolog, pp_botiquin))
                        ]),
            mostrarImagen('C:/Prolog/img/0_Yerberito.jpg',D,Menu),
            send(D,open,point(100,100)),
            consult('C:/Prolog/Data.pl'),
            nl.

%##################### TARJETA DE INFORMACIÓN DE UNA PLANTA #########################       
    pp_info_planta(Planta):-
        %Datos 
        nombre(Planta, Nombre),
        planta_origen(Planta, Origen),
        %efectos_planta(Planta, Efectos),
        findall(Efecto, efecto_de_la_planta(Planta, Efecto), Efectos),
        findall(Medicamento, planta_obtiene(Planta, Medicamento), Medicamentos),
        findall(FormaUso, se_usa_como(Planta, FormaUso), FormasUso),

        atom_concat('Informacion sobre: ', Planta, Titulo),
        new(D, dialog(Titulo)),
        send(D, size, size(400,500)),
        send(D, colour, colour(black)),
        
        %EstoSeUsaParaMostrarLaImagenDespues
        send(D, append, new(Menu, menu_bar)),
        
        %BuscarTodasLasVecesQueLaPlantaEstaLigadaConUnMalestar
        findall(Malestar, usado_para_tratar(Planta, Malestar), Enfermedades),
        send(D, open, point(300, 200)),

        send(D, display, text('Nombre comun: ', center, bold), point(200,15)),
        send(D, display, text(Planta, center, normal), point(210,30)),

        send(D, display, text('Nombre cientifico: ', center, bold), point(200,50)),
        send(D, display, text(Nombre, center, normal), point(210,65)),
        
        send(D, display, text('Origen: ', center, bold), point(200,85)),
        send(D, display, text(Origen, center, normal), point(210,100)),
        
        %ConvertirListaDeEnfermedadesAStringConInterlineado
        atomic_list_concat(Enfermedades, '\n', EnfermedadesStr),
        atomic_list_concat(Efectos, '\n', EfectosStr),
        atomic_list_concat(Medicamentos, '\n', MedicamentosStr),
        atomic_list_concat(FormasUso, '\n', FormasUsoStr),

        send(D, display, text('Enfermedades que cura:',left, bold), point(10,170)), nl,
        send(D, display, text(EnfermedadesStr, left, normal), point(10,185)),

        send(D, display, text('Medicamentos que produce:', left, bold), point(200,170)),nl,
        send(D, display, text(MedicamentosStr, left, normal), point(10,185)),

        send(D, display, text('Efectos:', left, bold), point(200,230)), nl,
        send(D, display, text(EfectosStr, left, normal), point(200,245)),

        send(D, display, text('Formas de uso:', left, bold), point(200,300)),nl,
        send(D, display, text(FormasUsoStr, left, normal), point(200,315)),    
        
        %MostrarLaImagenDeLaPlanta
        unirPlantaImagen(Planta, Foto),
        mostrarImagen(Foto, D, Menu),
        nl.


%##################### TARJETA DE INFORMACIÓN DE UN MEDICAMENTO #########################       
    pp_info_medicamento(Medicamento):-
        %Datos 
        efectos_de_medicamento(Medicamento, Efectos),
        atomic_list_concat(Efectos, '\n', EfectosStr),

        atom_concat('Informacion sobre: ', Medicamento, Titulo),
        new(D, dialog(Titulo)),
        send(D, size, size(400,500)),
        send(D, colour, colour(black)),
        
        %BuscarTodasLasVecesQueLaPlantaEstaLigadaConUnMalestar
        send(D, open, point(300, 200)),

        send(D, display, text('Nombre: ', center, bold), point(10,15)),
        send(D, display, text(Medicamento, center, normal), point(20,30)),

        send(D, display, text('Efectos: ', center, bold), point(10,50)),
        send(D, display, text(EfectosStr, center, normal), point(20,65)).

%##################### TARJETA DE INFORMACIÓN DE UNA ENFERMEDAD #########################       
    pp_info_enfermedad(Enfermedad):-
        %Datos 
        % Obtener la lista de plantas que se usan para tratar la enfermedad
        findall(Planta, usado_para_tratar(Planta, Enfermedad), Plantas),
        % Obtener la lista de formas de uso de las plantas
        findall(FormaUso, (member(Planta, Plantas), se_usa_como(Planta, FormaUso)), FormasUso),
        % Combinar las listas de plantas y formas de uso en una lista de pares [Planta, FormaUso]
        combinar_listas(Plantas, FormasUso, Resultados),
        % Mostrar la información en el diálogo
        % mostrar_info_enfermedad(Enfermedad, Resultados)
        
        atom_concat('Informacion sobre: ', Enfermedad, Titulo),
        new(D, dialog(Titulo)),
        send(D, size, size(400,500)),
        send(D, colour, colour(black)),
        
        send(D, display, text('Nombre:', left, bold), point(10,0)),
        %send(D, display, text(Enfermedad, center, normal), point(20,50)),
        send(D, append, text(Enfermedad, center, normal)),
        % Crear una ventana con scroll
        send(D, append, text('Propiedades de la plantas y su uso:', left, bold)),
        new(W, window('Propiedades de la plantas y sus uso', size(300, 300))),
        send(W, scrollbars, vertical),  % Agregar barra de scroll vertical
        
        % Mostrar los resultados en la ventana con scroll
        mostrar_resultados2(Resultados, W, 10),
        
        % Agregar la ventana con scroll al diálogo
        send(D, append, W),

        % Abrir el diálogo
        send(D, open, point(300, 200)).
        
    % Mostrar los resultados en la ventana aplicando recursividad.
        mostrar_resultados2([], _, _).
        mostrar_resultados2([[Planta, FormaUso] | Resto], W, Y) :-
            send(W, display, text(Planta, left, normal), point(10, Y)),
            send(W, display, text(FormaUso, left, normal), point(150, Y)),
            NewY is Y + 15,  % Incrementar la posición Y para la siguiente línea
            mostrar_resultados2(Resto, W, NewY).

    % Combina dos listas en una lista de pares [X, Y]
        combinar_listas([], [], []).
        combinar_listas([X|Xs], [Y|Ys], [[X,Y]|Resto]) :-
            combinar_listas(Xs, Ys, Resto).
        combinar_listas(_, _, []).  % En caso de que las listas no tengan la misma longitud


%##################### LISTA DE PLANTAS CON SUS ELEMENTOS #########################       
    pp_listar_elementos:-
        new(D, dialog('Elementos en las plantas:')),
        send(D, size, size(290, 400)),
        send(D, colour, colour(black)),
        findall(Medicamento, medicamento(Medicamento), Medicamento),
        %Crear una ventana con scroll
        send(D, display, text('Elementos que se encuentran en las plantas:', center, normal), point(10, 10)),
        new(W, window('Elementos que se encuentran en las plantas:', size(250, 370))),
        send(W, scrollbars, vertical),  % Agregar barra de scroll vertical
        %Convertir la lista de plantas a string con interlineado
        atomic_list_concat(Medicamento, '\n', MedicamentoStr),
        %Mostrar los resultados de la lista en la ventana con scroll
        send(W, display, text(MedicamentoStr, left, normal), point(30, 10)),
        %Agregar la ventana con scroll al diálogo
        send(D, append, W),
        %Abrir el diálogo
        send(D, open, point(300, 200)).

%##################### LISTA DE PLANTAS POR PROPIEDAD #########################       
    pp_listar_plantas_propiedad(Propiedad):-
        %Datos 
        findall(Planta, efecto_de_la_planta(Planta, Propiedad), Plantas),
        atomic_list_concat(Plantas, '\n', PlantasStr),

        atom_concat('Plantas con efecto: ', Propiedad, Titulo),
        new(D, dialog(Titulo)),
        send(D, size, size(400,500)),
        send(D, colour, colour(black)),

        send(D, display, text(Titulo, left, bold), point(10,10)),
        new(W, window("Plantas segun su efecto", size(370, 470))),
        send(W, scrollbars, vertical),  % Agregar barra de scroll vertical
        send(W, display, text(PlantasStr, left, normal), point(10, 10)),
        %Agregar la ventana con scroll al diálogo
        send(D, append, W),
        send(D, open, point(300, 200)).


%##################### LISTA DE PROPIEDADES Y EFECTOS #########################       
    pp_listar_propiedades_efectos :-
        new(D, dialog('Propiedades de la planta y sus efectos')),
        send(D, size, size(400, 400)),
        send(D, colour, colour(black)),
        
        % Buscar todas las propiedades y sus efectos
        findall([Propiedad, Efecto], propiedad_efecto(Propiedad, Efecto), Resultados),
        
        % Crear una ventana con scroll
        send(D, append, new(text('Propiedades de la plantas y su efectos:', center, normal))),
        new(W, window('Propiedades de la plantas y sus efectos', size(380, 370))),
        send(W, scrollbars, vertical),  % Agregar barra de scroll vertical
        
        % Mostrar los resultados en la ventana con scroll
        mostrar_resultados(Resultados, W, 10),
        
        % Agregar la ventana con scroll al diálogo
        send(D, append, W),
        
        % Abrir el diálogo
        send(D, open, point(300, 200)).
        
        % Mostrar los resultados en la ventana aplicando recursividad.
        mostrar_resultados([], _, _).
        mostrar_resultados([[Propiedad, Efecto] | Resto], W, Y) :-
            send(W, display, text(Propiedad, left, normal), point(10, Y)),
            send(W, display, text(Efecto, left, normal), point(150, Y)),
            NewY is Y + 20,  % Incrementar la posición Y para la siguiente línea
            mostrar_resultados(Resto, W, NewY).

%##################### LISTA DE PLANTAS Y SU USO #########################       
    pp_listar_plantas_uso :-
        new(D, dialog('Platas y su forma de preparacion')),
        send(D, size, size(400, 400)),
        send(D, colour, colour(black)),
        
        % Buscar todas las propiedades y sus efectos
        findall([Planta, FormaUso], se_usa_como(Planta, FormaUso), Resultados),
        
        % Crear una ventana con scroll
        send(D, append, new(text('Plantas y su forma de preparacion:', left, bold))),
        new(W, window('Propiedades de la plantas y sus efectos', size(380, 370))),
        send(W, scrollbars, vertical),  % Agregar barra de scroll vertical
        
        % Mostrar los resultados en la ventana con scroll
        mostrar_resultados(Resultados, W, 10),
        
        % Agregar la ventana con scroll al diálogo
        send(D, append, W),
        
        % Abrir el diálogo
        send(D, open, point(300, 200)).

%##################### LISTA DE PLANTAS QUE PRODUCEN MEDICAMENTOS #########################       
    pp_produce_medicamento:-
        new(D, dialog('Lista de plantas que producen medicamentos')),
        send(D, size, size(400, 430)),
        send(D, colour, colour(black)),
        
        plantas_que_producen_medicamentos(Plantas),

        %Crear una ventana con scroll
        send(D, display, text('Plantas que producen medicamentos: ', left, normal), point(10, 10)),
        
        %Agregar la ventana con scroll al diálogo
        new(W, window('Plantas', size(380, 400))),
        send(W, scrollbars, vertical),  % Agregar barra de scroll vertical
        
        %Convertir la lista de plantas a string con interlineado
        atomic_list_concat(Plantas, '\n', PlantasStr),
        
        %Mostrar los resultados de la lista en la ventana con scroll
        send(W, display, text(PlantasStr, left, normal), point(10, 25)),
        send(D, append, W),
        
        %Abrir el diálogo
        send(D, open, point(300, 200)).

%##################### ENFERMEDADES CURADAS CON LAS PLANTAS #########################       
    pp_enfermedades_curadas_por(Planta):-
        %AsignacionDelNombreParaVentanaEmergente
        atom_concat('Enfermedades curadas por: ', Planta, Titulo),
        new(D, dialog(Titulo)),
        send(D, size, size(400,500)),
        send(D, colour, colour(black)),

        %EstoSeUsaParaMostrarLaImagenDespues
        send(D, append, new(Menu, menu_bar)),
        
        %BuscarTodasLasVecesQueLaPlantaEstaLigadaConUnMalestar
        findall(Malestar, usado_para_tratar(Planta, Malestar), Enfermedades),
        send(D, open, point(300, 200)),

        %MostrarPlantaSeguidoDelNombre
        send(D, display, text('Planta: ', left, normal), point(200,35)),
        send(D, display, text(Planta, left, normal), point(270,35)),
        
        %MostrarEtiquetaDeMalestaresParaTratar
        send(D, display, text('Enfermedades que combate', left, normal), point(200,60)),
        nl,
        
        %ConvertirListaDeEnfermedadesAStringConInterlineado
        atomic_list_concat(Enfermedades, '\n', EnfermedadesStr),
        
        %MostrarLosResultadosDeLaListaEnLaVentana
        send(D, display, text(EnfermedadesStr, left, normal), point(200,80)),
        %MostrarLaImagenDeLaPlanta
        unirPlantaImagen(Planta, Foto),
        mostrarImagen(Foto, D, Menu),
        nl.

%##################### LISTA DE TERMINOS Y SIGNIFICADOS #########################       
    pp_significado_De_Terminos(Termino):-
        %DefineLaInstanciaDelNuevoFormulario
        new(D, dialog(Termino)),
        send(D, size, size(230,100)),
        send(D, colour, colour(black)),
        propiedad_efecto(Termino, Significado),
        send(D, open, point(300, 200)),
        %EtiquetasParaPresentacionDeDatos
        send(D, display, text('Termino: ', center, bold), point(20,15)),
        send(D, display, text(Termino, center, normal), point(35,30)),
        send(D, display, text('Significado: ', center, bold), point(20,45)), nl,
        send(D, display, text(Significado, center, normal), point(35,60)),
        nl.

%##################### LISTA DE PLANTAS MEDICINALES #########################       
    %ListarPlantasMedicinales
    pp_listar_plantas :-
        % AsignacionDelNombreParaVentanaEmergente
        new(D, dialog('Lista de plantas medicinales')),
        send(D, size, size(400, 430)),
        send(D, colour, colour(black)),
        %Buscar todas las veces que la planta está ligada con un malestar
        findall(Planta, planta(Planta), Plantas),
        %Crear una ventana con scroll
        send(D, display, text('Plantas medicinales: ', center, normal), point(10, 10)),
        %Agregar la ventana con scroll al diálogo
        new(W, window('Plantas', size(380, 400))),
        send(W, scrollbars, vertical),  % Agregar barra de scroll vertical
        %Convertir la lista de plantas a string con interlineado
        atomic_list_concat(Plantas, '\n', PlantasStr),
        %Mostrar los resultados de la lista en la ventana con scroll
        send(W, display, text(PlantasStr, left, normal), point(10, 10)),
        send(D, append, W),
        %Abrir el diálogo
        send(D, open, point(300, 200)).

%##################### BOTIQUIN #########################       
    pp_botiquin :-
        new(D, dialog('Botiquin de plantas')),
        send(D, size, size(230, 400)),
        send(D, colour, colour(black)),
        findall(Planta, botiquin(Planta), Plantas),
        
        %Crear una ventana con scroll
        send(D, display, text('Plantas que siempre debes tener:', left, normal), point(10, 10)),
        new(W, window('Plantas que siempre debes tener: ', size(210, 370))),
        send(W, scrollbars, vertical),  % Agregar barra de scroll vertical
        
        %Convertir la lista de plantas a string con interlineado
        atomic_list_concat(Plantas, '\n', PlantasStr),
        
        %Mostrar los resultados de la lista en la ventana con scroll
        send(W, display, text(PlantasStr, left, normal), point(10, 0)),
        
        %Agregar la ventana con scroll al diálogo
        send(D, append, W),
        
        %Abrir el diálogo
        send(D, open, point(300, 200)).



%#################### LISTA DE MEDICAMENTOS #####################
    pp_lista_medicamentos:-
        new(D, dialog('Lista de medicamentos')),
        send(D, size, size(300, 450)),
        send(D, colour, colour(black)),

        findall(Medicamento, medicamento(Medicamento), Medicamentos),
        
        send(D, display, text('Medicamentos: ', left, bold), point(10, 10)),
        new(W, window('Medicamentos', size(280, 410))),
        
        %Crear una ventana con scroll
        send(W, scrollbars, vertical),  % Agregar barra de scroll vertical
        
        %Convertir la lista de medicamentos a string con salto de línea
        atomic_list_concat(Medicamentos, '\n', ListaMedicamentos),
        
        %Mostrar los resultados de la lista en la ventana con scroll
        send(W, display, text(ListaMedicamentos, left, normal), point(30, 10)),
        
        %Agregar la ventana con scroll al diálogo
        send(D, append, W),
        %Abrir el diálogo
        send(D, open, point(300, 200)).

%#################### LISTA DE ENFERMEDADES #####################
    pp_lista_padecimientos:-
        new(D, dialog('Lista de enfermedades')),
        send(D, size, size(300, 450)),
        send(D, colour, colour(black)),

        findall(Enfermedad, padecimiento(Enfermedad), Enfermedades),
        
        send(D, display, text('Enfermedades: ', left, bold), point(10, 10)),
        new(W, window('Enfermedades', size(280, 410))),
        
        %Crear una ventana con scroll
        send(W, scrollbars, vertical),  % Agregar barra de scroll vertical
        
        %Convertir la lista de enfermedades a string con salto de línea
        atomic_list_concat(Enfermedades, '\n', ListaEnfermedades),
        
        %Mostrar los resultados de la lista en la ventana con scroll
        send(W, display, text(ListaEnfermedades, left, normal), point(30, 10)),
        
        %Agregar la ventana con scroll al diálogo
        send(D, append, W),
        %Abrir el diálogo
        send(D, open, point(300, 200)).        


%#################### LISTA DE ORIGENES #####################
    pp_lista_origenes:-
        new(D, dialog('Lista de origenes')),
        send(D, size, size(300, 450)),
        send(D, colour, colour(black)),

        findall(Origen, origen(Origen), Origenes),
        
        send(D, display, text('Origenes: ', left, bold), point(10, 10)),
        new(W, window('Origenes', size(280, 410))),
        
        %Crear una ventana con scroll
        send(W, scrollbars, vertical),  % Agregar barra de scroll vertical
        
        %Convertir la lista de enfermedades a string con salto de línea
        atomic_list_concat(Origenes, '\n', ListaOrigenes),
        
        %Mostrar los resultados de la lista en la ventana con scroll
        send(W, display, text(ListaOrigenes, left, normal), point(30, 10)),
        
        %Agregar la ventana con scroll al diálogo
        send(D, append, W),
        
        %Abrir el diálogo
        send(D, open, point(300, 200)).        

%##################### Información sobre un aforma de uso #########################       
    pp_recetario(FormaUso):-
        %Datos 
        ingredientes(FormaUso, Ingredientes),
        parte_planta(FormaUso, Partes),
        tiempo(FormaUso, Tiempo),
        administracion(FormaUso, Administracion),
        instrucciones(FormaUso, Instrucciones),

        atom_concat('Modo de preparacion de ', FormaUso, Titulo),
        new(D, dialog(Titulo)),
        send(D, size, size(500,500)),
        send(D, colour, colour(black)),
        
        send(D, open, point(100, 100)),

        atom_concat('Modo de preparacion de ', FormaUso, Header),
        send(D, display, text(Header, left, bold), point(10,10)),

        send(D, display, text('Ingredientes: ', left, bold), point(10,30)),
        send(D, display, text(Ingredientes, left, normal), point(15,50)),

        send(D, display, text('Partes utilizadas: ', left, bold), point(110,30)),
        send(D, display, text(Partes, left, normal), point(115,50)),
        
        send(D, display, text('Tiempo: ', left, bold), point(250,30)),
        send(D, display, text(Tiempo, left, normal), point(255,50)),
        
        send(D, display, text('Via de administracion: ', left, bold), point(330,30)),
        send(D, display, text(Administracion, left, normal), point(335,50)),

        send(D, display, text('Instrcciones', left, bold), point(10,100)),
        send(D, display, text(Instrucciones, left, normal), point(15,120)).

%##################### LISTA DE PLANTAS y NOMBRE CIENTIFICO #########################       
        pp_listar_planta_y_nombre_cientifico:-
            new(D, dialog('Nombre cientifico de plantas')),
            send(D, size, size(500, 400)),
            send(D, colour, colour(black)),
            
            % Buscar todas las propiedades y sus efectos
            findall([Planta, NombreCientifico], nombre(Planta, NombreCientifico), Resultados),
            
            % Crear una ventana con scroll
            send(D, append, new(text('Nombre coloquial de la planta     ->   Nombre cientifico:', center, normal))),
            new(W, window('Nombre coloquial de la planta     ->   Nombre cientifico:', size(480, 400))),
            send(W, scrollbars, vertical),  % Agregar barra de scroll vertical
            
            % Mostrar los resultados en la ventana con scroll
            mostar_resultado_planta_nombreCientifico(Resultados, W, 10),
            
            % Agregar la ventana con scroll al diálogo
            send(D, append, W),
            
            % Abrir el diálogo
            send(D, open, point(300, 200)).
            
            % Mostrar los resultados en la ventana aplicando recursividad.
            mostar_resultado_planta_nombreCientifico([], _, _).
            mostar_resultado_planta_nombreCientifico([[Planta, NombreCientifico] | Resto], W, Y) :-
                send(W, display, text(Planta, left, normal), point(10, Y)),
                send(W, display, text(NombreCientifico, left, normal), point(230, Y)),
                NewY is Y + 20,  % Incrementar la posición Y para la siguiente línea
                mostar_resultado_planta_nombreCientifico(Resto, W, NewY).


%##################### LISTA DE PLANTAS CON SUS EFECTOS #########################       
        pp_listar_planta_efecto:-
            new(D, dialog('Planta y su efecto')),
            send(D, size, size(400, 400)),
            send(D, colour, colour(black)),
            
            % Buscar todas las propiedades y sus efectos
            findall([Planta, Efecto], efecto_de_la_planta(Planta, Efecto), Resultados),
            
            % Crear una ventana con scroll
            send(D, append, new(text('Planta y su efecto:', center, normal))),
            new(W, window('Planta y su efecto:', size(380, 370))),
            send(W, scrollbars, vertical),  % Agregar barra de scroll vertical
            
            % Mostrar los resultados en la ventana con scroll
            mostrar_resultado_planta_y_efecto(Resultados, W, 10),
            
            % Agregar la ventana con scroll al diálogo
            send(D, append, W),
            
            % Abrir el diálogo
            send(D, open, point(300, 200)).
            
            % Mostrar los resultados en la ventana aplicando recursividad.
            mostrar_resultado_planta_y_efecto([], _, _).
            mostrar_resultado_planta_y_efecto([[Planta, Efecto] | Resto], W, Y) :-
                send(W, display, text(Planta, left, normal), point(10, Y)),
                send(W, display, text(Efecto, left, normal), point(230, Y)),
                NewY is Y + 20,  % Incrementar la posición Y para la siguiente línea
                mostrar_resultado_planta_y_efecto(Resto, W, NewY).