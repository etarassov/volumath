---
id: "0179"
title: "Des coccinelles qui changent de case"
grade: 8
theme: coloring
difficulty: 3
duration_min: 25
tags: [coloriage, principe-des-tiroirs, parite, damier, demonstration]
adapted_from: null
see_also: ["0814"]
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок, 7 класс, II полугодие, пособие для преподавателей"
  reference: "Ast2017b.pdf, листок 20, задача 1"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

Un damier compte $7$ lignes et $7$ colonnes, soit $49$ cases, et il y a une coccinelle sur chaque case.

1. Au signal, toutes les coccinelles se déplacent en même temps, chacune vers une case voisine **par un côté** (chacune choisit sa direction comme elle veut). Montrer qu'après ce déplacement, au moins une case porte plusieurs coccinelles.
2. Au signal, toutes les coccinelles se déplacent en même temps, chacune vers une case voisine **par un coin**, c'est-à-dire en diagonale. Montrer qu'après ce déplacement, il reste au moins $7$ cases vides.

## Hints

1. Pour la question 1, colorie le damier comme un échiquier, en noir et blanc. Attention : le damier est $7 \times 7$, pas $8 \times 8$. Combien y a-t-il de cases de chaque couleur ?
2. Quand une coccinelle passe sur une case voisine par un côté, la couleur de sa case change-t-elle ?
3. Les coccinelles parties des cases noires arrivent donc toutes sur des cases blanches. Combien sont-elles, et combien de cases blanches les attendent ?
4. Pour la question 2, le coloriage en échiquier ne sert plus à rien : un déplacement en diagonale garde la couleur de la case. Essaie plutôt de colorier **une ligne sur deux**.
5. Compte les cases des lignes impaires, puis les coccinelles qui y arrivent.

## Solution

L'idée est la même dans les deux questions : **colorier le damier**, remarquer que le déplacement fait changer de couleur, puis compter.

### 1. Déplacement par un côté

**Le coloriage.** Colorions le damier comme un échiquier, en commençant par une case noire dans le coin en haut à gauche. Sur chaque ligne, les couleurs alternent.

- Les $4$ lignes impaires (lignes $1$, $3$, $5$, $7$) commencent par une case noire : elles contiennent $4$ cases noires et $3$ blanches chacune.
- Les $3$ lignes paires (lignes $2$, $4$, $6$) commencent par une case blanche : elles contiennent $3$ cases noires et $4$ blanches chacune.

Au total :

$$\text{cases noires} = 4 \times 4 + 3 \times 3 = 16 + 9 = 25, \qquad \text{cases blanches} = 4 \times 3 + 3 \times 4 = 24$$

On vérifie : $25 + 24 = 49$. Sur un damier $7 \times 7$, **les deux couleurs ne sont pas en nombre égal** : il y a une case noire de plus.

**Le déplacement change la couleur.** Deux cases voisines par un côté sont toujours de couleurs différentes. Donc une coccinelle qui part d'une case noire arrive sur une case blanche.

**On compte.** Les $25$ coccinelles qui étaient sur les cases noires arrivent donc toutes sur des cases blanches. Or il n'y a que $24$ cases blanches.

On range $25$ coccinelles dans $24$ cases : il est impossible qu'elles soient toutes seules, donc au moins une case blanche en reçoit au moins deux. C'est le **principe des tiroirs**.

**Conclusion.** Après le déplacement, au moins une case porte plusieurs coccinelles.

### 2. Déplacement en diagonale

Ici l'échiquier ne sert à rien : deux cases voisines par un coin sont de la **même** couleur, et le raisonnement précédent s'effondre. Il faut un autre coloriage.

**Le coloriage.** Colorions maintenant le damier en bandes horizontales : les lignes impaires ($1$, $3$, $5$, $7$) en gris, les lignes paires ($2$, $4$, $6$) en blanc.

$$\text{cases grises} = 4 \times 7 = 28, \qquad \text{cases blanches} = 3 \times 7 = 21$$

**Le déplacement change la bande.** Un déplacement en diagonale change la ligne de exactement $1$ : une coccinelle qui était sur une ligne paire arrive sur une ligne impaire, et inversement.

**On compte.** Les coccinelles qui arrivent sur les lignes impaires sont exactement celles qui venaient des lignes paires : elles sont $21$.

Les lignes impaires comptent $28$ cases, et elles n'accueillent que $21$ coccinelles. Même si ces $21$ coccinelles se rangeaient une par case, il resterait

$$28 - 21 = 7$$

cases inoccupées. Et si plusieurs coccinelles se retrouvent sur la même case, il en reste encore davantage.

**Conclusion.** Après le déplacement en diagonale, il y a au moins $7$ cases vides.

## Going further

1. Reprendre la question 1 sur un damier $8 \times 8$. Le raisonnement tient-il encore ? Peut-on trouver un déplacement où chaque case reçoit exactement une coccinelle ? (Indication : découpe le damier en dominos et fais échanger leurs places aux deux coccinelles de chaque domino.)
2. Reprendre la question 2 sur un damier $9 \times 9$ : combien de cases vides au minimum peut-on garantir ?
3. Plus difficile : dans la question 2, peut-on réellement organiser le déplacement de façon qu'il y ait exactement $7$ cases vides, et pas plus ?
