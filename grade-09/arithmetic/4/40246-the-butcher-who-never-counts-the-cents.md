---
id: "40246"
title: "Le boucher qui ne compte jamais les centimes"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [partie-entiere, encadrement, disjonction-de-cas, prix, contre-exemple]
adapted_from: null
see_also: []
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2008, mathématiques, série S"
  reference: "cg-2008-s-sujet.pdf, exercice III « Les comptes ronds », questions 1 et 2. La règle de calcul du boucher est explicitée. La question 2 du sujet n'est vraie que si les prix au kilo peuvent être des réels quelconques : cette hypothèse est ajoutée, et la question 3, ajoutée, montre qu'avec des prix en centimes entiers deux tickets peuvent suffire."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2008.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2008-s-sujet.pdf"
---

## Statement

Mon boucher ne compte jamais les centimes. Pour chaque article, il calcule le prix exact (le poids
multiplié par le prix du kilo), puis il supprime les centimes : il ne garde que le nombre entier
d'euros, sans arrondir au plus proche. Le total du ticket est la somme de ces montants.

Par exemple, j'ai pris 300 g de filet à 34,30 € le kilo, 240 g de viande hachée à 8,60 € le kilo
et 640 g de blanc de poulet à 12,99 € le kilo. Les prix exacts sont 10,29 €, 2,064 € et
8,3136 €. J'ai donc payé 10 € pour le filet, 2 € pour la viande hachée et 8 € pour le poulet,
soit 20 € en tout.

1. En ramassant deux tickets tombés par terre, le boucher lit :

   - 750 g de côtelettes, 250 g de rôti. Total : 18 euros ;
   - 250 g de côtelettes, 500 g de rôti. Total : 17 euros.

   Les prix au kilo sont des nombres entiers de centimes. Quels peuvent être le prix du kilo de
   côtelettes et le prix du kilo de rôti ? On donnera toutes les solutions.

2. Dans cette question, on suppose que les prix au kilo peuvent être des nombres réels positifs
   quelconques, pas forcément des nombres entiers de centimes. Expliquer pourquoi la donnée de tous
   les tickets de la journée ne peut en aucun cas permettre de déterminer le prix exact de chacun
   des produits vendus.

3. On revient à des prix au kilo en nombres entiers de centimes. Le boucher trouve deux tickets :
   « 1 kg de blanc de poulet. Total : 12 euros » et « 77 g de blanc de poulet. Total : 1 euro ».
   Montrer que l'on connaît alors le prix exact du kilo de blanc de poulet. Que penser de
   l'affirmation de la question 2 quand les prix sont des nombres entiers de centimes ?

## Hints

1. **Question 1.** Si l'on a payé 12 € pour un article, que peut-on dire de son prix exact ? Il
   est compris entre 12 € (compris) et 13 € (non compris).
2. **Question 1.** Appeler $c$ et $r$ les prix du kilo de côtelettes et de rôti. Appeler $p$ le
   montant payé pour 250 g de côtelettes. Quels montants peut-on payer pour 750 g, trois fois
   plus ? Il n'y a que trois possibilités.
3. **Question 1.** De même, si $q$ est le montant payé pour 250 g de rôti, on paie $2q$ ou $2q + 1$
   pour 500 g. Écrire alors les deux totaux et éliminer $q$.
4. **Question 2.** Supposons que des prix conviennent pour tous les tickets. Que se passe-t-il si
   l'on augmente tous les prix d'une toute petite quantité ?
5. **Question 2.** Pour chaque article, le prix exact est strictement inférieur à « montant payé + 1 ».
   Il reste donc un peu de marge. Il n'y a qu'un nombre fini d'articles dans la journée.
6. **Question 3.** Encadrer le prix du kilo à l'aide de chaque ticket.

## Solution

On note $\lfloor y \rfloor$ le nombre $y$ sans ses centimes, c'est-à-dire le plus grand entier
inférieur ou égal à $y$. Dire que $\lfloor y \rfloor = n$, c'est dire que $n \leqslant y < n + 1$.

**1.** Notons $c$ le prix du kilo de côtelettes et $r$ celui du rôti, en euros. Posons
$$p = \lfloor \text{0,25}\,c \rfloor, \quad q = \lfloor \text{0,25}\,r \rfloor, \quad
a = \lfloor \text{0,75}\,c \rfloor, \quad d = \lfloor \text{0,5}\,r \rfloor .$$
Les tickets disent que $a + q = 18$ (premier ticket) et $p + d = 17$ (second ticket).

*Lien entre $a$ et $p$.* On a $p \leqslant \text{0,25}\,c < p + 1$. En multipliant par $3$ :
$3p \leqslant \text{0,75}\,c < 3p + 3$. Le nombre entier $a$ vaut donc $3p$, $3p + 1$ ou $3p + 2$.
On écrit $a = 3p + e$ avec $e$ égal à $0$, $1$ ou $2$.

*Lien entre $d$ et $q$.* De même $q \leqslant \text{0,25}\,r < q + 1$ donne
$2q \leqslant \text{0,5}\,r < 2q + 2$, donc $d = 2q + f$ avec $f$ égal à $0$ ou $1$.

*Les deux tickets.* On obtient $3p + e + q = 18$ et $p + 2q + f = 17$. La première égalité donne
$q = 18 - 3p - e$, et en reportant dans la seconde :
$$p + 36 - 6p - 2e + f = 17, \qquad \text{donc} \qquad 5p = 19 - 2e + f .$$

| $e$ | $f$ | $19 - 2e + f$ | multiple de 5 ? |
|---|---|---|---|
| 0 | 0 | 19 | non |
| 0 | 1 | 20 | oui : $p = 4$ |
| 1 | 0 | 17 | non |
| 1 | 1 | 18 | non |
| 2 | 0 | 15 | oui : $p = 3$ |
| 2 | 1 | 16 | non |

*Premier cas : $p = 4$, $e = 0$, $f = 1$.* Alors $q = 18 - 12 - 0 = 6$, $a = 12$ et $d = 13$.

- Pour les côtelettes : $\lfloor \text{0,25}\,c \rfloor = 4$ donne $16 \leqslant c < 20$, et
  $\lfloor \text{0,75}\,c \rfloor = 12$ donne $16 \leqslant c < \frac{52}{3}$. Comme
  $\frac{52}{3} = \text{17,333}\ldots$, on obtient $16 \leqslant c < \text{17,333}\ldots$
- Pour le rôti : $\lfloor \text{0,25}\,r \rfloor = 6$ donne $24 \leqslant r < 28$, et
  $\lfloor \text{0,5}\,r \rfloor = 13$ donne $26 \leqslant r < 28$. Donc $26 \leqslant r < 28$.

*Second cas : $p = 3$, $e = 2$, $f = 0$.* Alors $q = 18 - 9 - 2 = 7$, $a = 11$ et $d = 14$.

- Pour les côtelettes : $12 \leqslant c < 16$ et $\lfloor \text{0,75}\,c \rfloor = 11$, qui donne
  $\frac{44}{3} \leqslant c < 16$. Comme $\frac{44}{3} = \text{14,666}\ldots$, on obtient
  $\text{14,666}\ldots \leqslant c < 16$.
- Pour le rôti : $28 \leqslant r < 32$ et $\lfloor \text{0,5}\,r \rfloor = 14$, qui donne
  $28 \leqslant r < 30$.

*Réciproquement*, ces prix conviennent. Dans le premier cas, on paie $12 + 6 = 18$ € puis
$4 + 13 = 17$ €. Dans le second, $11 + 7 = 18$ € puis $3 + 14 = 17$ €.

**Conclusion :** avec des prix en centimes entiers, il y a deux familles de solutions :

- le kilo de côtelettes coûte entre 16,00 € et 17,33 €, **et** le kilo de rôti entre 26,00 € et
  27,99 € ;
- le kilo de côtelettes coûte entre 14,67 € et 15,99 €, **et** le kilo de rôti entre 28,00 € et
  29,99 €.

On peut combiner n'importe quel prix de côtelettes et n'importe quel prix de rôti d'une même
famille, mais pas d'une famille avec l'autre. Par exemple $\text{0,75} \times \text{17,33} = \text{12,9975}$
donne bien 12 €, alors que 17,34 € donnerait 13 €.

**2.** Supposons que des prix au kilo $x_1, x_2, \ldots, x_k$ des produits vendus soient compatibles
avec tous les tickets de la journée. Chaque ligne d'un ticket porte sur un poids $m$ (en kg) d'un
produit de prix $x$, et le montant payé est un entier $n$ tel que
$$n \leqslant m\,x < n + 1 .$$
Il reste donc une marge strictement positive, $n + 1 - m\,x$, avant d'atteindre l'euro suivant.

Il n'y a qu'un nombre fini de lignes dans les tickets de la journée. On peut donc choisir un
nombre $\varepsilon > 0$ assez petit pour que, sur chaque ligne, $m\,\varepsilon$ soit plus petit
que la marge $n + 1 - m\,x$ : par exemple la moitié de la plus petite des quantités
$\frac{n + 1 - m\,x}{m}$. Augmentons alors tous les prix de $\varepsilon$. Sur chaque ligne,
$$n \leqslant m\,x < m\,(x + \varepsilon) < n + 1,$$
donc le montant payé est toujours $n$. Tous les tickets restent exactement les mêmes.

Les prix $x_1 + \varepsilon, \ldots, x_k + \varepsilon$ sont donc eux aussi compatibles avec tous
les tickets, et ils sont différents des premiers. Les tickets ne permettent pas de distinguer ces
deux listes de prix : ils ne peuvent pas déterminer les prix exacts.

On augmente les prix, on ne les diminue pas : si un prix exact tombe juste sur un nombre entier
d'euros, le diminuer un tout petit peu ferait perdre un euro.

**3.** Le premier ticket dit que $12 \leqslant 1 \times x < 13$, où $x$ est le prix du kilo de
blanc de poulet. Le second dit que $1 \leqslant \text{0,077}\,x < 2$, donc
$x \geqslant \frac{1}{\text{0,077}} = \text{12,987}\ldots$ Ainsi
$$\text{12,987}\ldots \leqslant x < 13 .$$
Le seul nombre entier de centimes dans cet intervalle est 12,99 €. On vérifie :
$\text{0,077} \times \text{12,99} = \text{1,00023}$, donc on paie bien 1 €, et 1 kg coûte 12,99 €,
donc 12 €.

L'argument de la question 2 consistait à augmenter les prix d'une quantité aussi petite qu'on
veut. Avec des prix en centimes entiers, on ne peut pas augmenter un prix de moins d'un centime, et
l'argument tombe. Ici deux tickets suffisent à connaître le prix exact. L'affirmation « en aucun
cas » n'est donc vraie que si les prix au kilo peuvent être des nombres réels quelconques.

**Bilan.** Supprimer les centimes, c'est remplacer un nombre par le plus grand entier qui lui est
inférieur ou égal. Les tickets ne donnent alors que des encadrements des prix : deux tickets
laissent ici deux rectangles entiers de prix possibles. Avec des prix réels quelconques, une petite
hausse de tous les prix ne change aucun ticket, et les prix ne sont jamais déterminés. Avec des
prix en centimes entiers, des tickets bien choisis peuvent suffire.

## Going further

- Le boucher arrondit maintenant chaque montant à l'euro le plus proche (2,50 € devient 3 €).
  Reprendre la question 1. L'argument de la question 2 marche-t-il encore ?
- Trouver deux autres tickets, chacun pour un seul produit et de moins de 1 kg, qui permettent de
  savoir que le filet coûte exactement 34,30 € le kilo. (Il en existe, par exemple avec 379 g et
  554 g.)
