---
id: "5806"
title: "Un code par multiplication"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [chiffres, divisibilite, cryptographie, code-secret]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Codes, Ciphers, and Secrets (Matthias Beck)"
  reference: "beck.codes_.pdf, exercices 4 et 5 (handout sans solutions)"
  url: "https://mathcircles.org/activity/codes-ciphers-and-secrets/"
  original_language: "en"
  local_copy: "sources/originals/namc/beck.codes_.pdf"
---

## Statement

Alice et Bob s'envoient des messages écrits uniquement avec les chiffres $0, 1, 2, \ldots, 9$.
Pour que personne d'autre ne puisse les lire, ils conviennent en secret d'un nombre $a$ compris
entre $1$ et $9$, et ils chiffrent le message ainsi :

> chaque chiffre $d$ du message est remplacé par le **chiffre des unités** du produit
> $a \times d$.

1. Alice choisit $a = 3$. Chiffrer le message $7\ 2\ 0\ 5$. Montrer ensuite que Bob peut toujours
   retrouver le message d'origine, et donner sa règle de déchiffrement.
2. Que se passe-t-il si Alice choisit $a = 2$ ? Et si elle choisit $a = 6$ ?
3. Pour quelles valeurs de $a$ le code est-il utilisable, c'est-à-dire : deux chiffres différents
   ne sont jamais chiffrés de la même façon ?

## Hints

1. Pour la première question, commence simplement : calcule $3 \times 0$, $3 \times 1$, …,
   $3 \times 9$, et note à chaque fois le chiffre des unités. Que remarques-tu sur cette liste de
   dix chiffres ?
2. Pour déchiffrer, Bob cherche un nombre $b$ tel que multiplier par $a$ puis par $b$ ne change
   rien au chiffre des unités. Quel produit $a \times b$ cherche-t-il ?
3. Pour $a = 2$ : quels chiffres peut-on obtenir comme chiffre des unités d'un nombre pair ?
   Combien y en a-t-il, et combien de chiffres faut-il coder ?
4. Regarde $0$ et $5$. Que deviennent-ils quand $a$ est pair ?

## Solution

**1. Le cas $a = 3$.**

On calcule les chiffres des unités des produits $3 \times d$ :

| $d$ | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 |
|---|---|---|---|---|---|---|---|---|---|---|
| chiffré | 0 | 3 | 6 | 9 | 2 | 5 | 8 | 1 | 4 | 7 |

Le message $7\ 2\ 0\ 5$ devient donc $1\ 6\ 0\ 5$.

Sur cette ligne, les dix chiffres $0$ à $9$ apparaissent tous, et chacun une seule fois. Deux
chiffres différents ne sont donc jamais codés pareil, et Bob peut remonter sans ambiguïté.

Mieux : il n'a pas besoin de lire le tableau à l'envers. Comme
$$3 \times 7 = 21,$$
multiplier par $3$ puis par $7$ revient à multiplier par $21$, et $21 \times d$ se termine par le
même chiffre que $d$ (en effet $21d - d = 20d$ est un multiple de $10$). La règle de Bob est
donc :

> multiplier chaque chiffre reçu par $7$ et garder le chiffre des unités.

Vérification sur $1\ 6\ 0\ 5$ : $7 \times 1 = 7$, $7 \times 6 = 42$, $7 \times 0 = 0$,
$7 \times 5 = 35$. On retrouve bien $7\ 2\ 0\ 5$.

**2. Les cas $a = 2$ et $a = 6$.**

Si $a = 2$, tous les produits $2 \times d$ sont pairs : le message chiffré ne contient que les
chiffres $0$, $2$, $4$, $6$, $8$. Il n'y a que **cinq** chiffres codés possibles pour **dix**
chiffres à coder : il y a forcément des collisions. Par exemple $0$ et $5$ sont tous les deux
codés par $0$, puisque $2 \times 0 = 0$ et $2 \times 5 = 10$. En recevant un $0$, Bob ne saurait
pas s'il doit lire $0$ ou $5$.

Si $a = 6$, c'est pareil : $6 \times 0 = 0$ et $6 \times 5 = 30$, donc $0$ et $5$ sont tous les
deux codés par $0$.

**3. Les valeurs de $a$ qui conviennent.**

Éliminons d'abord les mauvaises.

- Si $a$ est **pair**, alors $a \times 0 = 0$ et $a \times 5 = 5a$ est un multiple de $10$ (car
  $a$ pair et $5$ donnent un facteur $10$). Les deux se terminent par $0$ : les chiffres $0$ et
  $5$ sont codés pareil. Le code est inutilisable.
- Si $a = 5$, alors $5 \times 2 = 10$ et $5 \times 4 = 20$ se terminent toutes les deux par $0$ :
  les chiffres $2$ et $4$ sont codés pareil. Inutilisable aussi.

Il reste $a = 1$, $a = 3$, $a = 7$ et $a = 9$. Pour chacune de ces valeurs, exhibons le nombre
qui défait la multiplication :
$$1 \times 1 = 1, \qquad 3 \times 7 = 21, \qquad 7 \times 3 = 21, \qquad 9 \times 9 = 81.$$

Tous ces produits se terminent par $1$. Par le même argument qu'à la question 1, multiplier par
$a$ puis par son partenaire ne change pas le chiffre des unités. Donc pour $a = 1, 3, 7, 9$, le
déchiffrement existe : deux chiffres différents ne peuvent pas être codés pareil, sinon en
appliquant le déchiffrement on les retrouverait égaux.

**Conclusion.** Le code fonctionne exactement pour $a = 1$, $3$, $7$ et $9$, c'est-à-dire pour
les valeurs de $a$ qui n'ont aucun diviseur commun avec $10$ à part $1$. Le déchiffrement se fait
en multipliant par $1$, $7$, $3$ et $9$ respectivement.

## Going further

$a = 1$ ne chiffre rien du tout, et il ne reste donc que trois codes réellement utilisables sur
les neuf essayés. Autant dire qu'un curieux les essaie tous en quelques secondes : ce code n'est
pas sûr. Il reste que le mécanisme qu'on vient d'étudier, multiplier puis ne garder qu'un reste,
est exactement celui des codes modernes, avec des nombres bien plus grands.

Reprends toute l'étude avec des messages écrits avec les sept chiffres $0, 1, \ldots, 6$, en
remplaçant « chiffre des unités » par « reste dans la division par $7$ ». Combien de valeurs de
$a$ conviennent cette fois ? Compare avec le cas de $10$, et explique la différence.
