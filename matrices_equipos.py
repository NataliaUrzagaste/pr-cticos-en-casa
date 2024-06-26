# -*- coding: utf-8 -*-
"""matrices equipos.ipynb

Automatically generated by Colab.

Original file is located at
    https://colab.research.google.com/drive/1JhBHkqtwJsboZKIqbCRSRfOsv4omPm_j
"""

import numpy as np
import random

class Equipo:
    def __init__(self, nombre):
        self.nombre = nombre
        self.puntos = 0
        self.goles = 0

    def __repr__(self):
        return f"{self.nombre} - {self.puntos} puntos, {self.goles} goles"

def ronda_de_equipos(equipos):
    equipos_results = {nombre: Equipo(nombre) for nombre in equipos}
    resultados = np.zeros((len(equipos), len(equipos)))

    for i in range(len(equipos)):
        for j in range(len(equipos)):
            if i != j:
                goles_local = random.randint(0, 5)
                goles_visitante = random.randint(0, 5)
                resultados[i][j] = goles_local
                resultados[j][i] = goles_visitante

    print(resultados)

    for i in range(len(equipos)):
        for j in range(len(equipos)):
            if i != j:
                print(f'{equipos[i]} {round(resultados[i][j])} - {equipos[j]} {round(resultados[j][i])}')
                if resultados[i][j] > resultados[j][i]:
                    equipos_results[equipos[i]].puntos += 3
                    equipos_results[equipos[i]].goles += round(resultados[i][j])
                    equipos_results[equipos[j]].goles += round(resultados[j][i])
                    print(f'{equipos[i]} ganó el partido con 3 puntos')
                elif resultados[j][i] > resultados[i][j]:
                    equipos_results[equipos[j]].puntos += 3
                    equipos_results[equipos[j]].goles += round(resultados[j][i])
                    equipos_results[equipos[i]].goles += round(resultados[i][j])
                    print(f'{equipos[j]} ganó el partido con 3 puntos')
                else:
                    equipos_results[equipos[i]].puntos += 1
                    equipos_results[equipos[j]].puntos += 1
                    equipos_results[equipos[i]].goles += round(resultados[i][j])
                    equipos_results[equipos[j]].goles += round(resultados[j][i])
                    print(f'{equipos[i]} y {equipos[j]} empate, cada equipo tiene 1 punto')

    orden_de_equipos = sorted(equipos_results.values(), key=lambda x: (-x.puntos, -x.goles))

    for i, equipo in enumerate(orden_de_equipos):
        print(f"{i+1}. {equipo}")

equipos = np.array(['Oriente Petrolero', 'Real Santa Cruz', 'Real Tomayapo', 'The Strongest'])
ronda_de_equipos(equipos)