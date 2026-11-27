---
id: "40961"
title: "Produits continués : convergence et premiers calculs de limites"
grade: 12
theme: functions-analysis
difficulty: 2
duration_min: 45
tags: [suites, produit, telescopage, suite-monotone, limite, recurrence, puissances-de-deux]
adapted_from: null
see_also: ["40962", "40963"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2026, mathématiques"
  reference: "cg-2026-s-sujet.pdf, exercice 1 « Produits continués », partie 1 « Préliminaires », questions 1 à 5"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2026-s-sujet.pdf"
---

## Statement

Soit $(a_k)_{k \in \mathbb{N}}$ une suite d'entiers tous supérieurs ou égaux à $2$. On appelle
*suite des produits continués* associée à $(a_k)$ la suite $(u_n)_{n \in \mathbb{N}}$ définie par
$u_0 = 1$ et, pour tout $n \geqslant 0$,

$$u_{n+1} = u_n \times \left(1 - \frac{1}{a_n}\right).$$

Ainsi, pour tout entier $n \geqslant 1$,

$$u_n = \left(1 - \frac{1}{a_0}\right)\left(1 - \frac{1}{a_1}\right) \cdots \left(1 - \frac{1}{a_{n-1}}\right) = \prod_{k=0}^{n-1} \left(1 - \frac{1}{a_k}\right).$$

1. Démontrer que la suite $(u_n)$ converge vers un réel de $[0\,;\,1[$.

Dans la suite, on note $P_\infty((a_k))$ la limite de la suite des produits continués
associée à $(a_k)$.

2. Démontrer que $P_\infty((k+2)_{k \in \mathbb{N}}) = 0$, c'est-à-dire que

$$\lim_{n \to +\infty} \left(1 - \frac{1}{2}\right)\left(1 - \frac{1}{3}\right) \cdots \left(1 - \frac{1}{n+1}\right) = 0.$$

3. Déterminer la valeur de $P_\infty(((k+2)^2)_{k \in \mathbb{N}})$.

4. Soit $x \neq 1$ un réel. On considère la suite $(v_n)$ définie par $v_0 = 1$ et, pour tout
   $n \geqslant 0$, $v_{n+1} = v_n \times \left(1 + x^{(2^n)}\right)$. Ainsi, pour $n \geqslant 1$,
$$v_n = (1 + x)(1 + x^2)(1 + x^4)(1 + x^8) \cdots \left(1 + x^{(2^{n-1})}\right).$$
   Démontrer que, pour tout entier $n \geqslant 0$,
$$v_n = \frac{1 - x^{(2^n)}}{1 - x}.$$

5. Soit $q \geqslant 1$ un entier. À l'aide de la question 4, déterminer la valeur de
   $P_\infty((q^{(2^k)} + 1)_{k \in \mathbb{N}})$.

## Hints

1. **Question 1.** Chaque facteur $1 - \frac{1}{a_k}$ est compris entre $\frac{1}{2}$ et $1$. Que
   peut-on dire du sens de variation de $(u_n)$, et de son signe ?
2. **Question 1.** Pour montrer que la limite est strictement inférieure à $1$, comparer chaque
   $u_n$ avec $u_1$.
3. **Question 2.** Écrire chaque facteur comme une seule fraction : beaucoup de termes se
   simplifient.
4. **Question 3.** Factoriser $1 - \frac{1}{m^2}$ en un produit de deux fractions, puis faire
   deux produits séparés.
5. **Question 4.** Raisonner par récurrence, en multipliant par $1 - x$. Que vaut
   $(1 - y)(1 + y)$ ?
6. **Question 5.** Écrire $1 - \frac{1}{q^{(2^k)} + 1}$ sous la forme $\frac{1}{1 + y}$ avec un
   $y$ bien choisi. Traiter à part le cas $q = 1$.

## Solution

**1.** Pour tout $k$, on a $a_k \geqslant 2$, donc $0 < \frac{1}{a_k} \leqslant \frac{1}{2}$ et

$$\frac{1}{2} \leqslant 1 - \frac{1}{a_k} < 1.$$

Par récurrence, $u_n > 0$ pour tout $n$ : c'est vrai pour $u_0 = 1$, et si $u_n > 0$ alors
$u_{n+1}$ est le produit de deux nombres strictement positifs. Ensuite
$u_{n+1} = u_n\left(1 - \frac{1}{a_n}\right) < u_n$, donc la suite est strictement décroissante.

Elle est décroissante et minorée par $0$, donc elle converge vers une limite $L \geqslant 0$.
Comme elle est décroissante, $u_n \leqslant u_1$ pour tout $n \geqslant 1$, et par passage à la
limite $L \leqslant u_1 = 1 - \frac{1}{a_0} \leqslant \frac{1}{2}$.

**Conclusion :** $(u_n)$ converge vers un réel $L$ de $[0\,;\,\frac{1}{2}]$, donc de
$[0\,;\,1[$.

**2.** Ici $a_k = k + 2$, et $1 - \frac{1}{k+2} = \frac{k+1}{k+2}$. Donc

$$u_n = \frac{1}{2} \times \frac{2}{3} \times \frac{3}{4} \times \cdots \times \frac{n}{n+1} = \frac{1}{n+1},$$

car chaque numérateur, à partir du deuxième, se simplifie avec le dénominateur précédent. Comme
$\frac{1}{n+1}$ tend vers $0$, on a bien $P_\infty((k+2)) = 0$.

**3.** Ici $a_k = (k+2)^2$. En posant $m = k + 2$, on a

$$1 - \frac{1}{m^2} = \frac{(m-1)(m+1)}{m^2} = \frac{m-1}{m} \times \frac{m+1}{m}.$$

Quand $k$ va de $0$ à $n - 1$, l'entier $m$ va de $2$ à $n + 1$. Donc

$$u_n = \left(\frac{1}{2} \times \frac{2}{3} \times \cdots \times \frac{n}{n+1}\right) \times \left(\frac{3}{2} \times \frac{4}{3} \times \cdots \times \frac{n+2}{n+1}\right) = \frac{1}{n+1} \times \frac{n+2}{2}.$$

Ainsi $u_n = \frac{n+2}{2(n+1)} = \frac{1}{2} + \frac{1}{2(n+1)}$, qui tend vers $\frac{1}{2}$.

**Conclusion :** $P_\infty(((k+2)^2)) = \frac{1}{2}$.

**4.** Comme $x \neq 1$, il suffit de montrer que $(1 - x)\,v_n = 1 - x^{(2^n)}$ pour tout
$n \geqslant 0$. On le fait par récurrence.

*Initialisation.* $(1 - x)\,v_0 = 1 - x = 1 - x^{(2^0)}$.

*Hérédité.* Supposons $(1 - x)\,v_n = 1 - x^{(2^n)}$. Posons $y = x^{(2^n)}$ ; alors
$y^2 = x^{(2 \times 2^n)} = x^{(2^{n+1})}$. Donc

$$(1 - x)\,v_{n+1} = (1 - x)\,v_n\,(1 + y) = (1 - y)(1 + y) = 1 - y^2 = 1 - x^{(2^{n+1})}.$$

**Conclusion :** pour tout $n \geqslant 0$, $v_n = \frac{1 - x^{(2^n)}}{1 - x}$.

**5.** *Cas $q = 1$.* Alors $a_k = 1 + 1 = 2$ pour tout $k$, donc $u_n = \left(\frac{1}{2}\right)^n$,
qui tend vers $0$.

*Cas $q \geqslant 2$.* Posons $x = \frac{1}{q}$, qui vérifie $0 < x < 1$. Alors
$\frac{1}{q^{(2^k)}} = x^{(2^k)}$, et

$$1 - \frac{1}{q^{(2^k)} + 1} = \frac{q^{(2^k)}}{q^{(2^k)} + 1} = \frac{1}{1 + x^{(2^k)}}.$$

Donc $u_n$ est l'inverse du produit $v_n$ de la question 4 :

$$u_n = \frac{1}{v_n} = \frac{1 - x}{1 - x^{(2^n)}}.$$

Comme $0 < x < 1$, la suite $x^{(2^n)}$ tend vers $0$ (c'est une suite extraite de la suite
géométrique $x^m$ : on a $0 < x^{(2^n)} \leqslant x^n$). Donc $u_n$ tend vers $1 - x = 1 - \frac{1}{q}$.

**Conclusion :** $P_\infty((q^{(2^k)} + 1)) = 1 - \frac{1}{q} = \frac{q - 1}{q}$, et cette
formule reste juste pour $q = 1$, où elle donne $0$.

**Bilan.** Un produit continué $\prod \left(1 - \frac{1}{a_k}\right)$ avec des $a_k \geqslant 2$
a toujours une limite dans $[0\,;\,1[$. On a calculé trois de ces limites :
$0$ pour $a_k = k + 2$, $\frac{1}{2}$ pour $a_k = (k+2)^2$, et $\frac{q-1}{q}$ pour
$a_k = q^{(2^k)} + 1$.

## Going further

- Dans la suite du sujet, on montrait que **tout** réel $\ell$ de $[0\,;\,1[$ est la limite d'un
  produit continué, en choisissant les $a_k$ un par un avec un algorithme glouton : voir
  l'exercice 40962. Pouvez-vous trouver une suite $(a_k)$ dont le produit continué tend vers
  $\frac{2}{3}$ ?
- Le produit de la question 3 converge vers $\frac{1}{2}$ alors que les $a_k$ grandissent
  « seulement » comme $k^2$. Pourquoi le produit de la question 2 tend-il vers $0$ ? On peut
  montrer qu'un produit continué a une limite non nulle exactement quand la somme des
  $\frac{1}{a_k}$ reste bornée.
