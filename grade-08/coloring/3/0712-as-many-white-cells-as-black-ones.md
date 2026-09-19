---
id: "0712"
title: "Autant de cases blanches que de noires"
grade: 8
theme: coloring
difficulty: 3
duration_min: 25
tags: [coloriage, echiquier, denombrement, parite]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Combinatoire », niveau collège - débutants"
  reference: "Combinatoire.Invariants.pdf, exercice 18"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Combinatoire.Invariants.pdf"
---

## Statement

Un échiquier de $8 \times 8$ est formé de $64$ petits carrés, appelés *cases*, coloriés alternativement en blanc et en noir.

On s'intéresse à tous les carrés que l'on peut découper dans cet échiquier en suivant les lignes du quadrillage : des carrés $1 \times 1$, $2 \times 2$, $3 \times 3$, et ainsi de suite jusqu'au carré $8 \times 8$ tout entier, placés n'importe où sur l'échiquier.

Combien, parmi tous ces carrés, contiennent autant de cases blanches que de cases noires ?

## Hints

1. Prends un carré $2 \times 2$ n'importe où sur l'échiquier et compte ses cases blanches et noires. Fais de même avec un carré $3 \times 3$. Que remarques-tu ?
2. Un carré $k \times k$ contient $k^2$ cases. Pour qu'il y ait autant de blanches que de noires, que doit vérifier le nombre $k^2$ ?
3. Quand $k$ est pair, regarde le carré ligne par ligne : chaque ligne du carré contient $k$ cases qui alternent de couleur.
4. Il reste à compter, pour chaque taille $k$ qui convient, combien de carrés $k \times k$ on peut placer sur un échiquier $8 \times 8$. Où peut se trouver le coin en bas à gauche du carré ?

## Solution

**Étape 1. Quelles tailles peuvent convenir ?**

Un carré $k \times k$ contient $k^2$ cases. Si les blanches et les noires sont en même nombre, ce nombre est $k^2 / 2$, donc $k^2$ doit être pair, donc $k$ doit être pair.

Autrement dit, un carré de taille impaire est éliminé d'office : $1 \times 1$, $3 \times 3$, $5 \times 5$, $7 \times 7$ n'ont aucune chance. Par exemple un carré $3 \times 3$ contient $9$ cases, et $9$ ne se partage pas en deux parts égales.

**Étape 2. Quand $k$ est pair, ça marche toujours.**

Prenons $k$ pair et un carré $k \times k$ posé n'importe où. Regardons-le ligne par ligne. Sur une ligne de l'échiquier, les couleurs alternent : blanc, noir, blanc, noir... Donc une tranche de $k$ cases consécutives, avec $k$ pair, contient exactement $k/2$ cases blanches et $k/2$ cases noires, quel que soit l'endroit où elle commence.

Chacune des $k$ lignes du carré est donc équilibrée, et le carré tout entier l'est aussi. **Toutes** les tailles paires conviennent, où que l'on place le carré.

**Étape 3. Compter les carrés de chaque taille paire.**

Où peut-on placer un carré $k \times k$ sur un échiquier $8 \times 8$ ? Son coin en bas à gauche doit laisser la place aux $k$ cases vers la droite et aux $k$ cases vers le haut : il y a donc $9 - k$ positions possibles horizontalement et $9 - k$ verticalement, soit $(9-k)^2$ carrés.

| taille $k$ | nombre de carrés $(9-k)^2$ |
|---|---|
| $2$ | $49$ |
| $4$ | $25$ |
| $6$ | $9$ |
| $8$ | $1$ |

**Étape 4. Conclusion.**

$$49 + 25 + 9 + 1 = 84$$

**Réponse : $84$ carrés contiennent autant de cases blanches que de cases noires.**

## Going further

Remarque que $49 + 25 + 9 + 1 = 7^2 + 5^2 + 3^2 + 1^2$ : ce sont les carrés des nombres impairs de $1$ à $7$. Sur un échiquier $2n \times 2n$, le même calcul donne $1^2 + 3^2 + \cdots + (2n-1)^2$.
