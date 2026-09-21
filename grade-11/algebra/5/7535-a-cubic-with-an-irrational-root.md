---
id: "7535"
title: "Un polynôme de degré 3 qui a forcément une racine irrationnelle"
grade: 11
theme: algebra
difficulty: 5
duration_min: 45
tags: [racines-rationnelles, parite, relations-coefficients-racines, polynome, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 83 (solution p. 252, résolue par Lucas Flammant). La solution imprimée passe par une descente infinie sur un dénominateur commun ; celle donnée ici, plus courte, combine le théorème des racines rationnelles et les relations coefficients-racines."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

Soit $P(x) = ax^3 + bx^2 + cx + d$ un polynôme à coefficients entiers, avec $a \neq 0$.

On suppose que le produit $ad$ est **impair** et que le produit $bc$ est **pair**.

Montrer que $P$ possède au moins une racine qui n'est pas un nombre rationnel.

## Hints

1. Raisonne par l'absurde : suppose que les trois racines de $P$ sont rationnelles.
2. Rappelle-toi le théorème des racines rationnelles : si $\frac{p}{q}$, écrite sous forme irréductible, est racine de $ax^3+bx^2+cx+d$, alors $p$ divise $d$ et $q$ divise $a$. Que donne-t-il ici, sachant que $a$ et $d$ sont impairs ?
3. Tu obtiens que chaque racine s'écrit « impair sur impair ». Additionne trois fractions de cette forme : quelle est la parité du numérateur de la somme ?
4. Écris ensuite les relations entre coefficients et racines pour un polynôme de degré $3$, en développant $a(x-r_1)(x-r_2)(x-r_3)$.
5. Compare la parité obtenue à l'étape 3 avec celle imposée par $b$, puis avec celle imposée par $c$.

## Solution

Raisonnons par l'absurde : supposons que les trois racines $r_1, r_2, r_3$ de $P$ soient toutes rationnelles.

**Étape 1. Chaque racine s'écrit « impair sur impair ».**

Écrivons $r_i = \dfrac{p_i}{q_i}$ sous forme irréductible, avec $q_i > 0$.

Le théorème des racines rationnelles dit que $p_i$ divise $d$ et que $q_i$ divise $a$. Comme $ad$ est impair, $a$ et $d$ sont tous deux impairs. Un diviseur d'un nombre impair est impair, donc

$$p_i \text{ est impair} \qquad \text{et} \qquad q_i \text{ est impair}, \qquad \text{pour } i = 1, 2, 3.$$

**Étape 2. Une remarque sur les fractions impair/impair.**

Si un rationnel s'écrit $\dfrac{N}{Q}$ avec $N$ et $Q$ impairs, alors sa forme irréductible a encore un numérateur et un dénominateur impairs. En effet, on simplifie par $g = \mathrm{PGCD}(|N|, Q)$, qui divise $Q$ impair, donc est impair ; et diviser un entier impair par un entier impair donne un entier impair.

De même, si un rationnel s'écrit $\dfrac{N}{Q}$ avec $N$ pair et $Q$ impair, sa forme irréductible a un numérateur pair (diviser un entier pair par un entier impair laisse un entier pair) et un dénominateur impair.

Comme la forme irréductible d'un rationnel est unique, on peut donc lire la parité du numérateur sur n'importe quelle écriture à dénominateur impair.

**Étape 3. La somme des racines.**

Posons $Q = q_1q_2q_3$, qui est impair. Alors

$$r_1 + r_2 + r_3 = \frac{p_1q_2q_3 + p_2q_1q_3 + p_3q_1q_2}{Q}.$$

Chacun des trois termes du numérateur est un produit de trois entiers impairs, donc impair. La somme de trois entiers impairs est impaire. Le numérateur est donc **impair**, et le dénominateur $Q$ l'est aussi.

D'après l'étape 2, la somme $r_1+r_2+r_3$ a donc un numérateur **impair** sous forme irréductible.

**Étape 4. La somme des produits deux à deux.**

De même,

$$r_1r_2 + r_1r_3 + r_2r_3 = \frac{p_1p_2q_3 + p_1p_3q_2 + p_2p_3q_1}{Q},$$

et le numérateur est encore une somme de trois entiers impairs, donc impair.

D'après l'étape 2, ce nombre a lui aussi un numérateur **impair** sous forme irréductible.

**Étape 5. Les relations coefficients-racines.**

Puisque $r_1, r_2, r_3$ sont les racines de $P$, on a

$$ax^3+bx^2+cx+d = a\,(x-r_1)(x-r_2)(x-r_3).$$

En développant le membre de droite et en identifiant les coefficients :

$$b = -a\,(r_1+r_2+r_3), \qquad c = a\,(r_1r_2+r_1r_3+r_2r_3).$$

Donc

$$r_1+r_2+r_3 = -\frac{b}{a}, \qquad r_1r_2+r_1r_3+r_2r_3 = \frac{c}{a}.$$

Le dénominateur $a$ est impair. D'après l'étape 2, le numérateur de la forme irréductible de $-\dfrac{b}{a}$ a la même parité que $b$, et celui de $\dfrac{c}{a}$ a la même parité que $c$.

**Étape 6. La contradiction.**

L'étape 3 dit que le numérateur de $-\frac{b}{a}$ est impair, donc $b$ est impair.

L'étape 4 dit que le numérateur de $\frac{c}{a}$ est impair, donc $c$ est impair.

Le produit $bc$ est alors impair, ce qui contredit l'hypothèse.

**Conclusion.** Les trois racines ne peuvent pas être toutes rationnelles : $P$ a au moins une racine non rationnelle.

## Going further

On a démontré au passage la réciproque implicite : quand $a$ et $d$ sont impairs, un polynôme de degré $3$ dont les trois racines sont rationnelles a forcément $b$ et $c$ **tous les deux impairs**. Vérifie-le sur $P(x) = (x-1)(x+1)(x+3) = x^3 + 3x^2 - x - 3$ : ici $a = 1$, $b = 3$, $c = -1$, $d = -3$, et $ad = -3$ est bien impair, $bc = -3$ bien impair.

Le théorème des racines rationnelles est l'outil décisif. Il mérite d'être su par cœur : si $\frac{p}{q}$ irréductible annule $a_nx^n + \cdots + a_0$ à coefficients entiers, alors $p \mid a_0$ et $q \mid a_n$. En particulier, un polynôme **unitaire** à coefficients entiers n'a que des racines rationnelles entières. D'où, par exemple, l'irrationalité de $\sqrt2$, racine de $x^2-2$ qui n'a pas de racine entière.

Attention à ne pas transposer l'énoncé au degré $2$ sans réfléchir : $x^2 - 1$ a $a = 1$, $b = 0$, $c = -1$, donc $ac$ impair et $b$ pair, et pourtant ses deux racines $1$ et $-1$ sont rationnelles. Le bon analogue en degré $2$ est différent : **si $a$, $b$ et $c$ sont tous les trois impairs, alors $ax^2+bx+c$ n'a aucune racine rationnelle.** La démonstration tient en deux lignes : une racine $\frac{p}{q}$ irréductible aurait $p$ et $q$ impairs, et $ap^2 + bpq + cq^2$ serait alors une somme de trois nombres impairs, donc impair, donc non nul.
