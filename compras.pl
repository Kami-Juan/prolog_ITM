%elabore una base de hechos  d productos para comprar al menos 25, determine al menos 3 criterios de compra con sus correspondientes excepciones y escriba las reglas para comprar MEDICINAS

medicametos(paracetamol).
medicametos(naproxeno).
medicametos(ketotifeno).
medicametos(ranitidina).
medicametos(loratadina).
medicametos(sabutamol).
medicametos(montelukas).
medicametos(ambroxol).
medicametos(aspirina).
medicametos(benzoanatato).
medicametos(amoxicilina).
medicametos(ibuprofeno).
medicametos(caolin-pectina).
medicametos(fenilefrina).
medicametos(dexametasona).
medicametos(metamisol).
medicametos(ampicilina).
medicametos(terramicina).
medicametos(insulina).
medicametos(cefalicina).
medicametos(omeprasol).
medicametos(vicodin).
medicametos(diclofenaco).
medicametos(buscapina).
medicametos(ciplofloxacino).

funcion(paracetamol, dolor).
funcion(naproxeno, dolor).
funcion(ketotifeno, alergia).
funcion(ranitidina, dolor).
funcion(loratadina, alergia).
funcion(sabutamol, expectorante).
funcion(montelukas, alergia).
funcion(ambroxol, expectorante).
funcion(aspirina, dolor).
funcion(benzoanatato, antihistaminico).
funcion(amoxicilina, antibiotico).
funcion(ibuprofeno, dolor).
funcion(caolin-pectina, antidiarreico).
funcion(fenilefrina, antihistaminico).
funcion(dexametasona, corticoide).
funcion(metamizol, dolor).
funcion(ampicilina, antibiotico).
funcion(terramicina, antibiotico).
funcion(enalapril, hipertension).
funcion(cefalexina, antibiotico).
funcion(omeprazol, dolor).
funcion(telmisartan, hipertension).
funcion(diclofenaco, dolor).
funcion(buscapina, dolor).
funcion(ciplofloxacino, antibiotico).

presentacion(paracetamol, tableta).
presentacion(naproxeno, tableta).
presentacion(ketotifeno, tableta).
presentacion(ketotifeno, jarabe).
presentacion(ranitidina, ampolleta).
presentacion(ranitidina, tableta).
presentacion(loratadina, tableta).
presentacion(loratadina, jarabe).
presentacion(sabutamol, pastilla).
presentacion(sabutamol, jarabe).
presentacion(montelukas, pastilla).
presentacion(ambroxol, pastilla).
presentacion(ambroxol, jarabe).
presentacion(aspirina, tableta).
presentacion(benzoanatato, tableta).
presentacion(amoxicilina, tableta).
presentacion(amoxicilina, capsula).
presentacion(ibuprofeno, capsula).
presentacion(ibuprofeno, jarabe).
presentacion(ibuprofeno, tableta).
presentacion(caolin-pectina, tableta).
presentacion(caolin-pectina, capsula).
presentacion(caolin-pectina, jarabe).
presentacion(fenilefrina, tableta).
presentacion(dexametasona, tableta).
presentacion(dexametasona, ampolleta).
presentacion(metamizol, tableta).
presentacion(metamizol, jarabe).
presentacion(ampicilina, capsula).
presentacion(terramicina, tableta).
presentacion(enalapril, tableta).
presentacion(cefalexina, tableta).
presentacion(cefalexina, capsula).
presentacion(cefalexina, ampolleta).
presentacion(omeprazol, tableta).
presentacion(telmisartan, tableta).
presentacion(diclofenaco, tableta).
presentacion(diclofenaco, capsula).
presentacion(buscapina, capsula).
presentacion(ciprofloxacino, ampolleta).
presentacion(ciprofloxacino, tableta).

precio(paracetamol, barato).
precio(naproxeno, barato).
precio(ketotifeno, barato).
precio(ranitidina, caro).
precio(loratadina, barato).
precio(sabutamol, barato).
precio(montelukas, caro).
precio(ambroxol, barato).
precio(aspirina, barato).
precio(benzoanatato, barato).
precio(amoxicilina, barato).
precio(ibuprofeno, barato).
precio(caolin-pectina, caro).
precio(fenilefrina, barato).
precio(dexametasona, caro).
precio(metamizol, barato).
precio(ampicilina, barato).
precio(terramicina, caro).
precio(enalapril, caro).
precio(cefalexina, caro).
precio(omeprazol, caro).
precio(telmisartan, caro).
precio(diclofenaco, barato).
precio(buscapina, barato).
precio(ciplofloxacino, caro).

comprar_medicamento( Uso,Presentacion,Precio ):- funcion(Medicamento, Uso), presentacion(Medicamento, Presentacion), precio(Medicamento, Precio), nl, write(Medicamento). 

padecimiento(Uso):-medicametos(Medicamento),funcion(Medicamento,Uso),nl, write(Medicamento).

algo(Uso,Costo):-medicametos(Medicamento),funcion(Medicamento,Uso),precio(Medicamento,Costo),write(Medicamento).