---
id: "7436"
title: "Six parmi onze, de somme divisible par 6"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [tiroirs, divisibilite, parite, construction]
adapted_from: null
see_also: ["0430"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, La Muraille"
  reference: "stage_ete_2011.pdf, « La Muraille », exercice 62 (résolu par Louise Gassot)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

1. Montrer que parmi cinq entiers quelconques, on peut toujours en choisir trois dont la somme
   est divisible par $3$.
2. En déduire que parmi onze entiers quelconques, on peut toujours en choisir six dont la somme
   est divisible par $6$.

## Hints

1. Pour la première question, classe les cinq entiers selon leur reste dans la division par $3$ :
   il y a trois classes. Deux cas se présentent, selon qu'une classe contient au moins trois
   nombres ou non.
2. Pour la seconde question, utilise la première **trois fois de suite**. Combien de nombres
   reste-t-il après chaque utilisation ?
3. Tu obtiendras trois paquets de trois nombres, de sommes $A$, $B$, $C$, toutes divisibles par
   $3$. Il te faut une somme divisible par $6$, donc par $3$ **et** par $2$. Regarde les parités
   de $A$, $B$, $C$.

## Solution

### 1. Trois parmi cinq, de somme divisible par 3

Classons les cinq entiers selon leur reste dans la division par $3$ : reste $0$, reste $1$ ou
reste $2$. Cela fait trois classes, et cinq nombres à y ranger.

**Premier cas : une classe contient au moins trois nombres.** Choisissons-en trois dans cette
classe. Ils ont tous le même reste $r$, donc leur somme a le même reste que $3r$, qui est
divisible par $3$. La somme est donc divisible par $3$.

**Second cas : chaque classe contient au plus deux nombres.** Comme il y a cinq nombres et trois
classes, et qu'aucune classe n'en contient trois ou plus, les effectifs des trois classes sont
$2$, $2$, $1$ dans un certain ordre : **aucune classe n'est vide**.

Choisissons alors un nombre dans chaque classe. Leur somme a le même reste que $0 + 1 + 2 = 3$,
c'est-à-dire un reste nul : elle est divisible par $3$.

Dans les deux cas, on a trouvé trois nombres dont la somme est divisible par $3$.

### 2. Six parmi onze, de somme divisible par 6

**On applique trois fois le résultat précédent.**

Partons de onze entiers. Comme $11 \geq 5$, on peut en choisir cinq et appliquer la question 1 :
on obtient trois nombres $a_1, a_2, a_3$ dont la somme $A = a_1+a_2+a_3$ est divisible par $3$.

Mettons ces trois nombres de côté. Il en reste $11 - 3 = 8$. Comme $8 \geq 5$, on recommence :
trois nombres $b_1, b_2, b_3$ de somme $B$ divisible par $3$.

Il en reste $8 - 3 = 5$. Comme $5 \geq 5$, on recommence une dernière fois : trois nombres
$c_1, c_2, c_3$ de somme $C$ divisible par $3$.

Nous avons ainsi trois paquets de trois nombres, deux à deux disjoints, de sommes $A$, $B$, $C$
toutes divisibles par $3$.

**On choisit deux paquets.**

Chacun des trois nombres $A$, $B$, $C$ est soit pair, soit impair. Trois nombres répartis en deux
catégories : d'après le principe des tiroirs, **deux d'entre eux ont la même parité**. Disons
$A$ et $B$.

Alors $A + B$ est pair, puisque la somme de deux nombres de même parité est paire.

**Conclusion.**

Les six nombres $a_1, a_2, a_3, b_1, b_2, b_3$ sont deux à deux distincts (les paquets sont
disjoints), et leur somme vaut $A + B$. Ce nombre est :

- divisible par $3$, car $A$ et $B$ le sont ;
- pair, comme on vient de le voir.

Étant divisible par $2$ et par $3$, qui sont premiers entre eux, il est divisible par $6$.

**On a bien trouvé six des onze entiers dont la somme est divisible par $6$.**

## Going further

Peut-on faire mieux ? Autrement dit : parmi **dix** entiers quelconques, peut-on toujours en
choisir six dont la somme est divisible par $6$ ? Cherche un contre-exemple avec des entiers qui
ne prennent que deux valeurs.
