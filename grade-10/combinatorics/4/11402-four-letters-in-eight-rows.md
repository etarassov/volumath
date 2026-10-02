---
id: "11402"
title: "Quatre lettres sur huit lignes"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [double-comptage, tiroirs, construction, maximum, tableau]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 4 (combinatoire)"
  reference: "2020-01_EnvoiCombiFinal.pdf, Exercices Juniors, exercice 5 (repris mot pour mot en Exercices Seniors, exercice 12) ; corrigé 2020-03_corrige-commente-envoi-4.pdf. La grille à 7 colonnes donnée par le corrigé est fausse : les lignes 1 et 7 y portent la même lettre dans deux colonnes, de même que les lignes 2 et 8. Une grille correcte est donnée ici."
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/01/EnvoiCombiFinal.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-01_EnvoiCombiFinal.pdf"
---

## Statement

Martin veut remplir une grille rectangulaire de $8$ lignes et $n$ colonnes. Dans chaque case, il
écrit l'une des quatre lettres P, O, F ou M.

Il veut respecter la règle suivante : pour deux lignes différentes quelconques, il y a **au plus
une** colonne dans laquelle ces deux lignes portent la même lettre.

Quel est le plus grand nombre $n$ de colonnes pour lequel Martin peut y arriver ?

## Hints

1. Combien y a-t-il de paires de lignes ?
2. Regarde une seule colonne, avec ses $8$ cases. Combien de paires de cases portent forcément
   la même lettre ? Essaie de rendre ce nombre aussi petit que possible.
3. Une paire de lignes qui porte la même lettre dans une colonne ne peut plus le faire dans
   aucune autre colonne. Compare les deux comptes.
4. Pour la construction, chaque colonne doit contenir chaque lettre exactement deux fois, et
   chaque paire de lignes doit se retrouver dans exactement une colonne. Pense au calendrier
   d'un tournoi entre $8$ équipes.

## Solution

On va montrer que la réponse est $n = 7$ : d'abord qu'on ne peut pas faire mieux, puis qu'on
peut y arriver avec $7$ colonnes.

**Le nombre de paires de lignes.**

On choisit une première ligne de $8$ façons, une seconde de $7$ façons, et chaque paire a été
comptée deux fois (dans les deux ordres). Il y a donc
$$\frac{8 \times 7}{2} = 28$$
paires de lignes.

**Dans une colonne, au moins quatre paires portent la même lettre.**

Fixons une colonne. Disons que la lettre P y apparaît $p$ fois, O $o$ fois, F $f$ fois et M $m$
fois, avec $p + o + f + m = 8$. Une lettre qui apparaît $k$ fois donne
$\dfrac{k(k-1)}{2}$ paires de cases portant cette lettre.

Pour tout entier $k \geqslant 1$, on a
$$\frac{k(k-1)}{2} - (k - 1) = \frac{(k-1)(k-2)}{2} \geqslant 0 ,$$
car $k - 1$ et $k - 2$ sont deux entiers consécutifs, donc jamais l'un strictement positif et
l'autre strictement négatif. Ainsi une lettre qui apparaît $k \geqslant 1$ fois donne au moins
$k - 1$ paires.

Additionnons sur les lettres qui apparaissent dans la colonne. Si ces lettres sont au nombre de
$\ell$ (avec $\ell \leqslant 4$), on obtient au moins
$$8 - \ell \geqslant 8 - 4 = 4$$
paires de cases portant la même lettre. Chaque colonne fournit donc au moins $4$ paires de lignes
qui « se rencontrent » dans cette colonne.

**On ne peut pas dépasser $7$ colonnes.**

D'après la règle, une paire de lignes se rencontre dans au plus une colonne. Les paires fournies
par les différentes colonnes sont donc toutes différentes. Avec $n$ colonnes, on obtient au moins
$4n$ paires différentes, alors qu'il n'y en a que $28$ en tout. Donc
$$4n \leqslant 28, \qquad n \leqslant 7 .$$

**Une grille à $7$ colonnes.**

Pour atteindre $7$, il faut que chaque colonne contienne chaque lettre exactement deux fois, et
que les $7 \times 4 = 28$ paires obtenues soient exactement les $28$ paires de lignes. Voici une
telle grille :

| Ligne | 1 | 2 | 3 | 4 | 5 | 6 | 7 |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| 1 | P | P | P | P | P | P | P |
| 2 | P | O | F | M | M | F | O |
| 3 | O | P | O | F | M | M | F |
| 4 | F | O | P | O | F | M | M |
| 5 | M | F | O | P | O | F | M |
| 6 | M | M | F | O | P | O | F |
| 7 | F | M | M | F | O | P | O |
| 8 | O | F | M | M | F | O | P |

On peut vérifier les $28$ paires une par une, mais il y a plus rapide.

- La ligne $1$ ne contient que des P, et chacune des autres lignes contient exactement un P. La
  ligne $1$ rencontre donc chaque autre ligne dans une seule colonne.
- Les lignes $2$ à $8$ se déduisent les unes des autres en décalant d'une case vers la droite,
  la dernière lettre revenant au début. Dans la ligne $2$, les deux O sont aux places $2$ et $7$,
  les deux F aux places $3$ et $6$, les deux M aux places $4$ et $5$. En tournant en rond sur
  les $7$ places, l'écart entre les deux M est $1$, entre les deux O il est $2$ (de la place $7$
  à la place $2$ en passant par la place $1$), entre les deux F il est $3$. Deux lignes de ce
  groupe sont décalées de $1$, $2$ ou $3$ places dans un sens ou dans l'autre, et elles se
  rencontrent seulement là où une même lettre se répète avec exactement cet écart : une seule
  fois.

**Conclusion.**

**Le plus grand nombre de colonnes possible est $n = 7$.**

## Going further

Chaque colonne de la grille découpe les $8$ lignes en $4$ paires, et les $7$ colonnes utilisent
chacune des $28$ paires exactement une fois. C'est exactement le calendrier d'un championnat
entre $8$ équipes qui se rencontrent toutes une fois en $7$ journées de $4$ matchs.

Que devient la réponse avec $10$ lignes et $5$ lettres ?
