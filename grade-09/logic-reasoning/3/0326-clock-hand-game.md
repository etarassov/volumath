---
id: "0326"
title: "Le jeu de la pendule"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [jeu, strategie, positions-gagnantes, horloge]
adapted_from: null
created: 2026-09-18
source:
  name: "Математический кружок (8–9 класс), первое полугодие, сост. Е. А. Асташов, Д. А. Удимов, МГУ, 2015"
  reference: "AU.pdf, листок 12, задача 3"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

Deux joueurs jouent avec une pendule qui n'a qu'une seule aiguille. Chacun son tour, un joueur avance l'aiguille de **deux heures** ou de **trois heures**, à son choix.

Au début de la partie, l'aiguille indique midi. Le gagnant est celui qui, le premier, place l'aiguille sur **11 heures**. L'aiguille a le droit de faire plusieurs tours de cadran avant d'arriver sur 11 heures.

Lequel des deux joueurs peut être sûr de gagner ? Décrire sa stratégie.

## Hints

1. Ne cherche pas à jouer depuis le début. Regarde plutôt la fin : depuis quelles heures peut-on gagner en un seul coup ?
2. Appelle une heure **perdante** si le joueur qui doit jouer depuis cette heure va perdre, et **gagnante** s'il peut s'assurer la victoire. Depuis 8 heures et depuis 9 heures, on gagne tout de suite : ces deux heures sont gagnantes.
3. Une heure est gagnante dès qu'un de ses deux coups mène à une heure perdante. Elle est perdante si ses **deux** coups mènent à des heures gagnantes. Applique cette règle en remontant : 6, puis 4 et 3, puis 1, puis 10, puis 7...
4. Une fois toutes les heures classées, regarde midi. Est-elle gagnante ou perdante ?

## Solution

**L'idée : analyser les positions en partant de la fin.**

Une *position* est l'heure indiquée par l'aiguille juste avant que quelqu'un joue. On classe chaque position :

- elle est **perdante** si le joueur qui doit jouer depuis cette position va perdre, quoi qu'il fasse ;
- elle est **gagnante** si ce joueur peut s'assurer la victoire.

Trois règles suffisent :

- si un coup met l'aiguille sur 11, la position est **gagnante** ;
- s'il existe un coup qui mène à une position **perdante**, la position est **gagnante** ;
- si **tous** les coups mènent à des positions gagnantes, la position est **perdante**.

**On remonte le cadran.**

- **9 heures** : $9 + 2 = 11$. Gagnante.
- **8 heures** : $8 + 3 = 11$. Gagnante.
- **6 heures** : les deux coups donnent $6+2 = 8$ et $6+3 = 9$, toutes deux gagnantes. Donc 6 est **perdante**.
- **4 heures** : $4 + 2 = 6$, perdante. Donc 4 est gagnante.
- **3 heures** : $3 + 3 = 6$, perdante. Donc 3 est gagnante.
- **1 heure** : les deux coups donnent $1+2 = 3$ et $1+3 = 4$, toutes deux gagnantes. Donc 1 est **perdante**.
- **10 heures** : $10 + 3 = 13$, c'est-à-dire 1 heure, perdante. Donc 10 est gagnante.
- **7 heures** : les deux coups donnent $7+2 = 9$ et $7+3 = 10$, toutes deux gagnantes. Donc 7 est **perdante**.
- **5 heures** : $5 + 2 = 7$, perdante. Donc 5 est gagnante.
- **2 heures** : les deux coups donnent $2+2 = 4$ et $2+3 = 5$, toutes deux gagnantes. Donc 2 est **perdante**.
- **Midi** : $12 + 2 = 2$, perdante. Donc midi est **gagnante**.

Les positions perdantes sont donc exactement **1, 2, 6 et 7**.

**La conclusion.**

Midi est une position gagnante : c'est le **premier joueur** qui gagne.

**Sa stratégie : toujours ramener l'aiguille sur 1, 2, 6 ou 7.**

- Coup 1 : de midi, il avance de 2 et met l'aiguille sur **2**.
- L'adversaire est sur 2 et doit aller sur 4 ou sur 5. Dans les deux cas, le premier joueur avance de 2 et arrive sur **6** ou sur **7**.
- De **6**, l'adversaire ne peut aller que sur 8 ou 9 ; le premier joueur met alors l'aiguille sur **11** et gagne.
- De **7**, l'adversaire va sur 9 (et le premier gagne aussitôt) ou sur 10 ; de 10, le premier joueur avance de 3 et arrive sur **1**.
- De **1**, l'adversaire va sur 3 ou sur 4 ; le premier joueur revient sur **6**, et on retombe sur le cas déjà réglé.

Remarquons au passage que l'adversaire ne peut jamais gagner : depuis 1, 2, 6 et 7 on obtient seulement 3, 4, 5, 8, 9 et 10, jamais 11. Et la partie se termine bien, car dès que le premier joueur pose l'aiguille sur 6, l'adversaire est obligé de lui offrir la victoire au coup suivant.

**Réponse : le premier joueur gagne. Il commence par avancer l'aiguille de deux heures, puis il s'arrange pour la laisser à chaque fois sur 1, 2, 6 ou 7.**

## Going further

1. Et si le gagnant était celui qui place l'aiguille sur 12 (c'est-à-dire lui faire faire un tour complet) ? Qui gagne alors ?
2. On garde la règle « on avance de 2 ou de 3 heures » mais la pendule a maintenant $n$ graduations au lieu de 12. Pour quelles valeurs de $n$ le premier joueur gagne-t-il, si la cible est la graduation juste avant le départ ?
