---
id: "11425"
title: "Pas de rectangle d'une seule couleur"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [tiroirs, grille, coloriage, construction, maximum]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 4 (combinatoire)"
  reference: "2022-02_sujet-envoi-4.pdf, Exercices Juniors, exercice 5 ; corrigé 2022-04_corrige-envoi-4.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-02_sujet-envoi-4.pdf"
---

## Statement

On colorie chaque case d'une grille de $n$ lignes et $n$ colonnes, soit en blanc, soit en noir.

On veut que la règle suivante soit respectée : quelles que soient les deux lignes et les deux
colonnes que l'on choisit, les $4$ cases où elles se croisent ne sont **jamais toutes de la même
couleur**. Autrement dit, la grille ne contient aucun rectangle dont les quatre coins sont de la même
couleur.

Quel est le plus grand $n$ pour lequel c'est possible ?

## Hints

1. Pour $n = 2$ et $n = 3$, trouve un coloriage qui respecte la règle. Si la règle est respectée
   dans une grille, l'est-elle aussi dans un morceau carré de cette grille ?
2. Pour $n = 4$, essaie de mettre exactement deux cases noires dans chaque ligne.
3. Dans une grille $5 \times 5$, une colonne a $5$ cases et il n'y a que deux couleurs. Que peut-on
   dire de la couleur qui apparaît le plus souvent dans une colonne ?
4. Il y a $5$ colonnes. Trois d'entre elles ont la même couleur majoritaire. Regarde-les de près.

## Solution

**Réponse : $n = 4$.**

### Il suffit de regarder $n = 4$ et $n = 5$

Si une grille respecte la règle, alors n'importe quel morceau de cette grille formé de certaines de
ses lignes et de certaines de ses colonnes la respecte aussi : un rectangle d'une seule couleur dans
le morceau en serait un dans la grille entière.

Donc si c'est possible pour une certaine taille, c'est possible pour toutes les tailles plus
petites, et si c'est impossible pour $n = 5$, c'est impossible pour toutes les tailles plus grandes.
Il suffit de donner une grille $4 \times 4$ qui convient, puis de montrer qu'aucune grille
$5 \times 5$ ne convient.

### Une grille $4 \times 4$ qui convient

On note N pour noir et B pour blanc.

| | col. 1 | col. 2 | col. 3 | col. 4 |
|---|---|---|---|---|
| **ligne 1** | N | N | B | B |
| **ligne 2** | B | N | N | B |
| **ligne 3** | B | B | N | N |
| **ligne 4** | N | B | B | N |

Chaque ligne a deux cases noires et deux cases blanches. Un rectangle noir demanderait deux lignes
qui ont leurs cases noires dans les deux mêmes colonnes. Or les cases noires sont dans les colonnes

$$\{1, 2\}, \quad \{2, 3\}, \quad \{3, 4\}, \quad \{1, 4\}$$

et deux de ces paires n'ont jamais plus d'une colonne en commun. Il n'y a donc pas de rectangle noir.

Les cases blanches sont dans les colonnes $\{3, 4\}$, $\{1, 4\}$, $\{1, 2\}$, $\{2, 3\}$ : ce sont les
mêmes quatre paires, rangées autrement. Il n'y a donc pas non plus de rectangle blanc.

### Aucune grille $5 \times 5$ ne convient

Prenons une grille $5 \times 5$ coloriée n'importe comment, et montrons qu'elle contient un rectangle
d'une seule couleur.

**Première étape.** Chaque colonne a $5$ cases et il n'y a que deux couleurs. Si chaque couleur
apparaissait au plus $2$ fois, la colonne aurait au plus $4$ cases. Donc dans chaque colonne, une
couleur apparaît **au moins $3$ fois**. Appelons-la la couleur majoritaire de la colonne.

**Deuxième étape.** Il y a $5$ colonnes et seulement deux couleurs majoritaires possibles. Pour la
même raison, au moins $3$ colonnes ont la même couleur majoritaire. Quitte à échanger le noir et le
blanc partout, on peut supposer que c'est le blanc. Appelons ces trois colonnes $a$, $b$ et $c$ :
chacune a au moins $3$ cases blanches.

**Troisième étape.** La colonne $a$ a au moins trois cases blanches. Choisissons-en trois, et
appelons $x$, $y$, $z$ leurs lignes. Les deux autres lignes s'appellent $u$ et $v$.

- Si la colonne $b$ a des cases blanches sur **deux** des lignes $x$, $y$, $z$, par exemple sur $x$
  et $y$, alors les lignes $x$, $y$ et les colonnes $a$, $b$ forment un rectangle blanc.
- De même si la colonne $c$ a des cases blanches sur deux des lignes $x$, $y$, $z$.
- Sinon, la colonne $b$ a au plus une case blanche sur les lignes $x$, $y$, $z$. Comme elle en a au
  moins trois en tout, ses deux cases des lignes $u$ et $v$ sont blanches. Pour la même raison, les
  deux cases de la colonne $c$ sur les lignes $u$ et $v$ sont blanches. Les lignes $u$, $v$ et les
  colonnes $b$, $c$ forment alors un rectangle blanc.

Dans tous les cas, la grille contient un rectangle d'une seule couleur.

**Conclusion.** C'est possible pour $n \leqslant 4$ et impossible pour $n \geqslant 5$. Le plus grand
$n$ est $\boxed{4}$.
