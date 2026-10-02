---
id: "7829"
title: "Un polynôme qui prend quatre fois la valeur 2015"
grade: 12
theme: algebra
difficulty: 4
duration_min: 35
tags: [polynome, coefficients-entiers, factorisation, racines, encadrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, test de mi-parcours du vendredi 21 août, groupe C, exercice 2 (la solution imprimée écrit 2012 là où l'énoncé dit 2018)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Soit $P$ un polynôme à coefficients entiers. On suppose qu'il existe quatre entiers $a$, $b$,
$c$ et $d$, deux à deux distincts, tels que
$$P(a) = P(b) = P(c) = P(d) = 2015 .$$

Montrer qu'il n'existe aucun entier $x$ tel que $P(x) = 2018$.

## Hints

1. Quatre valeurs égales, cela ressemble à quatre racines : considère le polynôme
   $Q = P - 2015$.
2. Un polynôme à coefficients entiers qui admet l'entier $a$ pour racine se factorise par
   $X - a$, et le quotient est encore à coefficients entiers. Applique cela quatre fois.
3. Supposons maintenant $P(x) = 2018$ pour un entier $x$. Que vaut $Q(x)$ ? Tu obtiens un
   produit de cinq entiers qui vaut un nombre très petit.
4. Les entiers $x - a$, $x - b$, $x - c$, $x - d$ sont deux à deux distincts et non nuls.
   Combien d'entre eux peuvent valoir $1$ ou $-1$ ? Que vaut alors au minimum la valeur absolue
   de leur produit ?

## Solution

**Étape 1 : on se ramène à des racines.**

Posons $Q = P - 2015$. C'est encore un polynôme à coefficients entiers, et
$$Q(a) = Q(b) = Q(c) = Q(d) = 0 .$$

Les quatre entiers $a$, $b$, $c$, $d$ sont donc quatre racines distinctes de $Q$.

**Étape 2 : on factorise.**

Si un polynôme à coefficients entiers admet l'entier $a$ pour racine, la division euclidienne
par $X - a$ (qui est unitaire, donc la division reste dans les entiers) donne un quotient à
coefficients entiers et un reste nul.

En appliquant cela successivement aux quatre racines, on obtient un polynôme $R$ à coefficients
entiers tel que
$$Q(X) = (X - a)(X - b)(X - c)(X - d)\,R(X) .$$

**Étape 3 : on suppose l'existence de $x$.**

Supposons par l'absurde qu'il existe un entier $x$ avec $P(x) = 2018$. Alors
$$Q(x) = 2018 - 2015 = 3 ,$$
c'est-à-dire
$$(x - a)(x - b)(x - c)(x - d)\,R(x) = 3 . \qquad (\star)$$

Comme $x$, $a$, $b$, $c$, $d$ sont des entiers et $R$ est à coefficients entiers, les cinq
facteurs de $(\star)$ sont tous des entiers.

**Étape 4 : on minore la valeur absolue du produit.**

Le produit vaut $3$, qui n'est pas nul : donc aucun des cinq facteurs n'est nul. En
particulier $|R(x)| \geq 1$.

Les quatre entiers
$$x - a, \quad x - b, \quad x - c, \quad x - d$$
sont **deux à deux distincts** (car $a$, $b$, $c$, $d$ le sont) et **non nuls**.

Or il n'existe que deux entiers non nuls de valeur absolue $1$ : ce sont $1$ et $-1$. Comme nos
quatre entiers sont distincts, **au plus deux d'entre eux** valent $1$ ou $-1$. Les deux autres
ont donc une valeur absolue supérieure ou égale à $2$.

Par conséquent
$$|(x-a)(x-b)(x-c)(x-d)| \geq 1 \times 1 \times 2 \times 2 = 4 ,$$
et donc
$$|Q(x)| = |(x-a)(x-b)(x-c)(x-d)| \times |R(x)| \geq 4 \times 1 = 4 .$$

**Étape 5 : la contradiction.**

On aurait alors $|Q(x)| \geq 4$, alors que $Q(x) = 3$ donne $|Q(x)| = 3$. C'est absurde.

**Conclusion.** Il n'existe donc aucun entier $x$ tel que $P(x) = 2018$.

*Remarque : la borne $4$ est la bonne.* Le même raisonnement interdit $P(x) = 2015 + m$ pour
tout entier $m$ non nul tel que $|m| \leq 3$. Et pour $m = 4$, c'est possible : le polynôme
$$P(X) = \left(X^2 - 1\right)\left(X^2 - 4\right) + 2015$$
est à coefficients entiers, vaut $2015$ aux quatre entiers distincts $-2, -1, 1, 2$, et
$$P(0) = (-1) \times (-4) + 2015 = 2019 = 2015 + 4 .$$
