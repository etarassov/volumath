---
id: "8241"
title: "Trois pièces en L dans un carré 3 × 3"
grade: 8
theme: coloring
difficulty: 3
duration_min: 20
tags: [pavage, coins, coloriage, impossible]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », deuxième partie, « Principe des tiroirs » (Andrei Barbu), section Coloriages, exercice 15"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Une **pièce en L** est faite de trois cases : un carré $2 \times 2$ auquel on a enlevé une case.
On peut la tourner comme on veut.

Peut-on recouvrir exactement un carré $3 \times 3$ avec de telles pièces, sans trou ni
chevauchement ?

## Hints

1. Combien de cases y a-t-il dans un carré $3 \times 3$ ? Combien de pièces faudrait-il donc ?
2. Essaie plusieurs fois. Quelle case te gêne systématiquement à la fin ?
3. Regarde les **quatre coins** du carré $3 \times 3$. Une pièce en L tient toujours dans un
   carré $2 \times 2$. Combien de coins du grand carré un tel carré $2 \times 2$ peut-il
   contenir ?

## Solution

**La réponse est non.**

**Le compte des cases ne dit rien.**

Le carré $3 \times 3$ a $9$ cases et chaque pièce en couvre $3$. Il faudrait donc exactement
$9 \div 3 = 3$ pièces. Le compte tombe juste, ce n'est donc pas par là que ça coince : il faut
une autre idée.

**On regarde les quatre coins.**

Marquons les quatre cases des coins du carré $3 \times 3$ :

|   | 1 | 2 | 3 |
|---|---|---|---|
| **1** | × |   | × |
| **2** |   |   |   |
| **3** | × |   | × |

Une pièce en L est, par définition, contenue dans un carré $2 \times 2$. Or dans un carré
$3 \times 3$ il n'y a que quatre carrés $2 \times 2$ possibles, et chacun contient **exactement
un** des quatre coins :

- le carré en haut à gauche contient le coin en haut à gauche ;
- le carré en haut à droite contient le coin en haut à droite ;
- le carré en bas à gauche contient le coin en bas à gauche ;
- le carré en bas à droite contient le coin en bas à droite.

Donc **une pièce en L couvre au plus un coin**. (Au plus, et pas exactement : la case qu'on a
enlevée du carré $2 \times 2$ peut justement être le coin.)

**Conclusion.**

Avec trois pièces on couvre donc au plus trois coins. Mais il y a quatre coins, et il faudrait
les couvrir tous. C'est impossible.

**On ne peut pas paver un carré $3 \times 3$ avec des pièces en L.**

## Going further

1. Et un carré $4 \times 4$ ? Il a $16$ cases, ce qui n'est pas un multiple de $3$ : que peut-on
   en dire tout de suite ?
2. Montrer qu'un rectangle $2 \times 3$ se pave, lui, avec deux pièces en L. En déduire tous
   les rectangles $m \times n$ qu'on sait paver de cette façon.
3. Reprendre le carré $3 \times 3$ privé de sa case centrale : peut-on le paver avec des pièces
   en L ?
