---
id: "8009"
title: "Quatre facteurs dont le produit vaut 98"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [denombrement, decomposition, nombres premiers, diviseurs]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, Coupe Animath 2017, éliminatoires collégiens, exercice 9 (repris en éliminatoires lycéens, exercice 1)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Déterminer le nombre de quadruplets d'entiers naturels $(a, b, c, d)$ vérifiant

$$abcd = 98.$$

*(L'ordre compte : $(98, 1, 1, 1)$ et $(1, 1, 98, 1)$ sont deux quadruplets différents.)*

## Hints

1. Décompose $98$ en produit de nombres premiers.
2. Chacun des quatre nombres $a$, $b$, $c$, $d$ est un diviseur de $98$. Écrire un quadruplet,
   c'est décider où va chaque facteur premier.
3. Traite le facteur $2$ et les deux facteurs $7$ séparément, puis multiplie les deux
   résultats.
4. Pour les deux $7$ : ils peuvent aller dans la même case, ou dans deux cases différentes.

## Solution

**La décomposition de $98$.**

$$98 = 2 \times 49 = 2 \times 7 \times 7 = 2 \times 7^2.$$

**Ce qu'il faut décider.** Chacun des nombres $a$, $b$, $c$, $d$ divise $98$, donc s'écrit
$2^{\alpha} \times 7^{\beta}$. Pour que le produit des quatre fasse $2 \times 7^2$, il faut et
il suffit de répartir le facteur $2$ et les deux facteurs $7$ entre les quatre cases.

Ces deux répartitions sont indépendantes l'une de l'autre, donc on les compte séparément et on
multiplie.

**Où va le facteur $2$ ?** Il y a un seul $2$, et il doit atterrir dans exactement l'une des
quatre cases : $4$ possibilités.

**Où vont les deux facteurs $7$ ?** Deux situations :

- *les deux $7$ dans la même case* : il faut choisir laquelle, $4$ possibilités. Cette case
  reçoit alors $49$ ;
- *les deux $7$ dans deux cases différentes* : il faut choisir deux cases parmi quatre. Les
  paires sont $\{a,b\}$, $\{a,c\}$, $\{a,d\}$, $\{b,c\}$, $\{b,d\}$, $\{c,d\}$, soit $6$
  possibilités. Chacune de ces deux cases reçoit alors un $7$.

Cela fait $4 + 6 = 10$ possibilités pour les $7$.

**Le total.**

$$4 \times 10 = 40.$$

**Il y a $40$ quadruplets.**

## Going further

On peut vérifier le compte autrement, en listant les répartitions possibles des valeurs :

- $(98, 1, 1, 1)$ et ses réarrangements : $4$ quadruplets ;
- $(49, 2, 1, 1)$ et ses réarrangements : $12$ quadruplets ;
- $(14, 7, 1, 1)$ et ses réarrangements : $12$ quadruplets ;
- $(7, 7, 2, 1)$ et ses réarrangements : $12$ quadruplets.

Total : $4 + 12 + 12 + 12 = 40$. Les deux méthodes s'accordent, mais la première se généralise
beaucoup mieux.
