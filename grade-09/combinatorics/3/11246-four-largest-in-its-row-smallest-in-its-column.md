---
id: "11246"
title: "Le 4, plus grand de sa ligne et plus petit de sa colonne"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [denombrement, grille, maximum, minimum, principe-multiplicatif]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2017-2018 n° 4 (combinatoire)"
  reference: "2018-01_pofm-2017-2018-envoi4.pdf, Exercices du groupe B, exercice 2 ; corrigé 2018-02_pofm-2017-2018-envoi4-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/01/pofm-2017-2018-envoi4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-01_pofm-2017-2018-envoi4.pdf"
---

## Statement

On place les entiers de $1$ à $9$ dans les neuf cases d'une grille de $3 \times 3$, un entier par
case. Pour $i = 1$, $2$ et $3$, on note $\ell_i$ le plus grand entier de la $i$-ième ligne, et
$c_i$ le plus petit entier de la $i$-ième colonne.

Combien existe-t-il de grilles pour lesquelles le plus petit des trois nombres $\ell_1$, $\ell_2$,
$\ell_3$ vaut $4$, et le plus grand des trois nombres $c_1$, $c_2$, $c_3$ vaut aussi $4$ ?

## Hints

1. Une des lignes a pour plus grand nombre $4$, donc elle contient le $4$. Une des colonnes a pour
   plus petit nombre $4$, donc elle contient aussi le $4$. Que peut-on dire de la case du $4$ ?
2. Montre que la condition revient à dire : « le $4$ est le plus grand nombre de sa ligne et le
   plus petit nombre de sa colonne ». Il faut vérifier les deux sens.
3. Compte alors les grilles en remplissant les cases dans cet ordre : la case du $4$, les deux
   autres cases de sa ligne, les deux autres cases de sa colonne, puis les quatre cases restantes.

## Solution

### Ce que veut dire la condition

Montrons que la condition de l'énoncé revient exactement à ceci : **le $4$ est le plus grand nombre
de sa ligne et le plus petit nombre de sa colonne.**

*Si la condition de l'énoncé est vraie.* Le plus petit des $\ell_i$ vaut $4$, donc une des lignes a
pour plus grand nombre $4$ : cette ligne contient le $4$, et ses deux autres nombres sont plus
petits que $4$. De même, une des colonnes a pour plus petit nombre $4$ : elle contient le $4$, et ses
deux autres nombres sont plus grands que $4$. Le $4$ n'est écrit que dans une seule case, donc cette
ligne et cette colonne sont celles qui passent par la case du $4$. Ainsi, le $4$ est le plus grand
nombre de sa ligne et le plus petit nombre de sa colonne.

*Réciproquement*, supposons que le $4$ soit le plus grand nombre de sa ligne et le plus petit de sa
colonne.

- La ligne du $4$ a pour plus grand nombre $4$. Chacune des deux autres lignes coupe la colonne du
  $4$ en une case dont le nombre est plus grand que $4$ (car le $4$ est le plus petit de sa colonne,
  et ce n'est pas le $4$ lui-même). Le plus grand nombre de cette ligne est donc plus grand que $4$.
  Le plus petit des $\ell_i$ vaut bien $4$.
- De même, la colonne du $4$ a pour plus petit nombre $4$, et chacune des deux autres colonnes coupe
  la ligne du $4$ en une case dont le nombre est plus petit que $4$. Le plus grand des $c_i$ vaut
  bien $4$.

### Le comptage

Il reste à compter les grilles où le $4$ est le plus grand de sa ligne et le plus petit de sa
colonne. On remplit la grille dans l'ordre suivant.

- **La case du $4$** : $9$ choix.
- **Les deux autres cases de sa ligne** contiennent des nombres plus petits que $4$, donc pris
  parmi $1$, $2$, $3$. Il y a $3$ choix pour la première case, puis $2$ pour la seconde, soit
  $3 \times 2 = 6$ choix.
- **Les deux autres cases de sa colonne** contiennent des nombres plus grands que $4$, donc pris
  parmi $5$, $6$, $7$, $8$, $9$. Cela fait $5 \times 4 = 20$ choix.
- **Les quatre cases restantes** reçoivent les quatre nombres qui restent, sans aucune contrainte :
  $4 \times 3 \times 2 \times 1 = 24$ choix.

Chaque façon de faire ces choix donne une grille différente, et chaque grille qui convient est
obtenue une fois. Le nombre de grilles est donc
$$9 \times 6 \times 20 \times 24 = 25\,920 .$$

**Conclusion : il y a $25\,920$ grilles qui conviennent.**

## Going further

- Montre que, pour **n'importe quelle** grille, le plus petit des $\ell_i$ est toujours supérieur ou
  égal au plus grand des $c_i$. (Prends la ligne qui réalise le plus petit $\ell_i$, la colonne qui
  réalise le plus grand $c_i$, et regarde la case où elles se croisent.)
- Combien de grilles vérifient l'égalité entre ces deux nombres, quelle que soit sa valeur ? Le même
  raisonnement montre que la valeur commune ne peut être que $3$, $4$, $5$, $6$ ou $7$, et on trouve
  $108\,864$ grilles, soit à peu près trois grilles sur dix.
