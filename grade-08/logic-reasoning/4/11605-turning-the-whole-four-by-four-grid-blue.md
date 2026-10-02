---
id: "11605"
title: "Rendre bleue toute la grille 4 × 4"
grade: 8
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [parite, grille, construction, invariant]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 5 (pot-pourri)"
  reference: "2017-10_ofm-2012-2013-envoi5.pdf, Exercices communs, exercice 5 ; corrigé 2017-10_ofm-2012-2013-envoi5-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi5.pdf"
---

## Statement

On considère une grille carrée de $4 \times 4$ cases. Deux cases sont **voisines** si elles ont un côté commun.

Au départ, toutes les cases sont rouges. **Faire une opération** sur une case, c'est changer en même temps la couleur de cette case et celle de toutes ses voisines : les cases rouges deviennent bleues, et les cases bleues deviennent rouges.

On choisit $n$ cases **distinctes**, et on fait une opération sur chacune d'elles.

Pour quelles valeurs de $n$ peut-on choisir ces $n$ cases de sorte qu'à la fin, toute la grille soit bleue ?

## Hints

1. L'ordre des opérations ne change rien au résultat. Une case finit bleue exactement quand elle a changé de couleur un nombre impair de fois.
2. Regarde la case de la première ligne et de la deuxième colonne. Sur quelles cases faut-il opérer pour qu'elle change de couleur ? Combien de ces cases faut-il choisir ?
3. Appelons « croix » d'une case l'ensemble formé par cette case et ses voisines. Cherche quatre cases dont les croix recouvrent toute la grille sans se chevaucher.
4. Dans chacune de ces quatre croix de $4$ cases, on doit choisir un nombre impair de cases, donc $1$ ou $3$. Quelles valeurs de $n$ restent possibles ? Il faudra ensuite une construction pour chacune.

## Solution

**Deux remarques pour commencer.**

- Chaque opération change la couleur de certaines cases, et le résultat final ne dépend pas de l'ordre dans lequel on fait les opérations : seul compte, pour chaque case, le nombre de fois où sa couleur a changé.
- Une case qui part du rouge finit bleue exactement quand elle a changé de couleur un nombre **impair** de fois.

La couleur d'une case change chaque fois qu'on opère sur elle ou sur l'une de ses voisines. Appelons **croix** d'une case l'ensemble formé par cette case et ses voisines. Une case change donc de couleur autant de fois qu'il y a de cases choisies dans sa croix.

**Quatre croix qui pavent la grille.** Numérotons les lignes de haut en bas et les colonnes de gauche à droite. Prenons les quatre cases marquées en gras ci-dessous : ligne 1 colonne 2, ligne 2 colonne 4, ligne 3 colonne 1, ligne 4 colonne 3. Chaque case de la grille porte la lettre de la croix à laquelle elle appartient :

|  | col. 1 | col. 2 | col. 3 | col. 4 |
|---|---|---|---|---|
| **ligne 1** | a | **A** | a | b |
| **ligne 2** | c | a | b | **B** |
| **ligne 3** | **C** | c | d | b |
| **ligne 4** | c | d | **D** | d |

La croix de la case $A$ est formée des cases notées a ou A, et de même pour les autres. On vérifie sur le tableau que ces quatre croix de $4$ cases ne se chevauchent pas et recouvrent les $16$ cases.

**Les valeurs impossibles.** La case $A$ doit finir bleue, donc il faut choisir un nombre impair de cases dans la croix de $A$. Comme la croix contient $4$ cases et que les cases choisies sont distinctes, on choisit $1$ ou $3$ cases dans cette croix. C'est pareil pour les croix de $B$, de $C$ et de $D$.

Comme les quatre croix recouvrent la grille sans se chevaucher, $n$ est la somme de quatre nombres égaux chacun à $1$ ou à $3$. Une somme de quatre nombres impairs est paire, et elle est comprise entre $1 + 1 + 1 + 1 = 4$ et $3 + 3 + 3 + 3 = 12$. Donc

$$n \in \{4, 6, 8, 10, 12\}.$$

**Les constructions.** Il reste à montrer que chacune de ces cinq valeurs est possible. Dans les tableaux ci-dessous, ● marque une case sur laquelle on fait une opération. Pour vérifier, il suffit de compter, pour chaque case, combien de cases choisies il y a dans sa croix, et de constater que ce nombre est toujours impair.

Pour $n = 4$ : on choisit les quatre cases marquées $A$, $B$, $C$, $D$. Chaque case de la grille est dans exactement une croix, donc elle change de couleur exactement une fois.

| ○ | ● | ○ | ○ |
|---|---|---|---|
| ○ | ○ | ○ | ● |
| ● | ○ | ○ | ○ |
| ○ | ○ | ● | ○ |

Pour $n = 6$, puis le nombre de changements de couleur de chaque case :

| ● | ○ | ○ | ● |
|---|---|---|---|
| ○ | ○ | ○ | ○ |
| ○ | ● | ● | ○ |
| ○ | ● | ● | ○ |

| 1 | 1 | 1 | 1 |
|---|---|---|---|
| 1 | 1 | 1 | 1 |
| 1 | 3 | 3 | 1 |
| 1 | 3 | 3 | 1 |

Pour $n = 8$, puis le nombre de changements de couleur :

| ● | ● | ○ | ○ |
|---|---|---|---|
| ● | ● | ○ | ● |
| ○ | ○ | ● | ○ |
| ○ | ● | ○ | ● |

| 3 | 3 | 1 | 1 |
|---|---|---|---|
| 3 | 3 | 3 | 1 |
| 1 | 3 | 1 | 3 |
| 1 | 1 | 3 | 1 |

Pour $n = 10$, puis le nombre de changements de couleur :

| ● | ● | ● | ● |
|---|---|---|---|
| ● | ○ | ○ | ● |
| ● | ● | ● | ● |
| ○ | ○ | ○ | ○ |

| 3 | 3 | 3 | 3 |
|---|---|---|---|
| 3 | 3 | 3 | 3 |
| 3 | 3 | 3 | 3 |
| 1 | 1 | 1 | 1 |

Pour $n = 12$, puis le nombre de changements de couleur :

| ● | ● | ○ | ● |
|---|---|---|---|
| ● | ● | ● | ○ |
| ○ | ● | ● | ● |
| ● | ○ | ● | ● |

| 3 | 3 | 3 | 1 |
|---|---|---|---|
| 3 | 5 | 3 | 3 |
| 3 | 3 | 5 | 3 |
| 1 | 3 | 3 | 3 |

**Conclusion : on peut rendre toute la grille bleue exactement pour $n = 4$, $6$, $8$, $10$ et $12$.**

## Going further

Une vérification par ordinateur des $2^{16}$ choix possibles montre qu'il y a exactement $16$ façons de rendre la grille bleue : $2$ avec $4$ cases, $4$ avec $6$, $4$ avec $8$, $4$ avec $10$ et $2$ avec $12$.
