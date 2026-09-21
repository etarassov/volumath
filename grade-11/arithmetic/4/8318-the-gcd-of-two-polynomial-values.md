---
id: "8318"
title: "Le PGCD de deux expressions polynomiales"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [pgcd, algorithme-deuclide, factorisation, polynome]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, cours du Groupe A"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe A, « Divisibilité et PGCD » (Yohann), exercice 13"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Pour tout entier $n \geqslant 3$, calculer

$$\mathrm{PGCD}\left(n^3 - 6n^2 + 11n - 6, \; n^2 - 4n + 4\right) .$$

La réponse doit être une expression en fonction de $n$.

## Hints

1. Avant toute chose, essaie de factoriser les deux expressions. La seconde est une identité remarquable déguisée.
2. $n^2 - 4n + 4 = (n-2)^2$. Pour la première, cherche des racines évidentes : que vaut l'expression pour $n = 1$ ?
3. $n = 1$, $n = 2$ et $n = 3$ annulent la première expression. Elle se factorise donc complètement.
4. Une fois les deux factorisations écrites, mets en facteur ce qui est commun. Il restera à montrer que le reste n'apporte rien de plus.
5. Pour cela, calcule $(n-1)(n-3)$ modulo $n-2$ : que vaut $n$ modulo $n-2$ ?

## Solution

**On factorise les deux expressions.**

Pour la seconde, on reconnaît une identité remarquable :

$$n^2 - 4n + 4 = (n-2)^2 .$$

Pour la première, cherchons des valeurs qui l'annulent. Notons
$P(n) = n^3 - 6n^2 + 11n - 6$. On a

$$P(1) = 1 - 6 + 11 - 6 = 0 , \qquad P(2) = 8 - 24 + 22 - 6 = 0 , \qquad P(3) = 27 - 54 + 33 - 6 = 0 .$$

Le polynôme $P$ est de degré $3$ et a pour coefficient dominant $1$, donc

$$n^3 - 6n^2 + 11n - 6 = (n-1)(n-2)(n-3) .$$

On peut le vérifier en développant :
$(n-1)(n-3) = n^2 - 4n + 3$, puis $(n^2-4n+3)(n-2) = n^3 - 2n^2 - 4n^2 + 8n + 3n - 6 = n^3 - 6n^2 + 11n - 6$. C'est bien cela.

**On met en facteur le morceau commun.**

Les deux nombres sont donc

$$A = (n-1)(n-2)(n-3) \qquad \text{et} \qquad B = (n-2)(n-2) .$$

Comme $n \geqslant 3$, le facteur $n-2$ est strictement positif, et

$$\mathrm{PGCD}(A, B) = (n-2) \times \mathrm{PGCD}\big((n-1)(n-3),\; n-2\big) .$$

**Le morceau restant ne vaut que 1.**

Calculons $(n-1)(n-3)$ modulo $n-2$. Comme $n \equiv 2 \pmod{n-2}$ :

$$(n-1)(n-3) \equiv (2-1)(2-3) \equiv 1 \times (-1) \equiv -1 \pmod{n-2} .$$

Donc tout diviseur commun de $(n-1)(n-3)$ et de $n-2$ divise $-1$, c'est-à-dire vaut $1$ :

$$\mathrm{PGCD}\big((n-1)(n-3),\; n-2\big) = 1 .$$

**Conclusion.**

$$\mathrm{PGCD}\left(n^3 - 6n^2 + 11n - 6, \; n^2 - 4n + 4\right) = \boxed{\,n - 2\,} .$$

Vérifions sur un exemple : pour $n = 5$, on a $A = 4 \times 3 \times 2 = 24$ et
$B = 3^2 = 9$. Leur $\mathrm{PGCD}$ vaut $3 = 5 - 2$. C'est bien cela.

## Going further

On peut aussi appliquer directement l'algorithme d'Euclide aux deux expressions, sans les
factoriser :

$$n^3 - 6n^2 + 11n - 6 = n\,(n^2 - 4n + 4) + (-2n^2 + 7n - 6) ,$$
$$-2n^2 + 7n - 6 = -2\,(n^2 - 4n + 4) + (-n + 2) ,$$
$$n^2 - 4n + 4 = (n-2)(n-2) + 0 .$$

Le dernier reste non nul est $-n+2$, donc le $\mathrm{PGCD}$ vaut $n-2$ au signe près. Cette
méthode est plus rapide à écrire, mais il faut prendre garde : ici les « restes » sont des
expressions en $n$, et l'algorithme d'Euclide pour les polynômes ne donne pas toujours
directement le $\mathrm{PGCD}$ des **valeurs entières**. La démonstration par factorisation
ci-dessus est à l'abri de cette subtilité.
