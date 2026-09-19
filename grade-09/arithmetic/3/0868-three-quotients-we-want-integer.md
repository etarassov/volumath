---
id: "0868"
title: "Trois quotients qu'on voudrait entiers"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [divisibilite, division euclidienne, diviseurs, entiers naturels]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Calcul », niveau collège - débutants, 16 avril 2024"
  reference: "Nombres.Introduction.pdf, exercice 47, section « Fractions »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Nombres.Introduction.pdf"
---

## Statement

Détermine tous les entiers naturels $n$ tels que :

**a)** $\dfrac{n+11}{n+1}$ soit un entier naturel ;

**b)** $\dfrac{4n+9}{2n+1}$ soit un entier naturel ;

**c)** $\dfrac{6n+20}{n+3}$ soit un entier naturel.

## Hints

1. Essayer les valeurs une par une ne suffira pas : $n$ peut être aussi grand qu'on veut. Il faut transformer chaque fraction.
2. L'astuce est toujours la même : faire apparaître le dénominateur dans le numérateur. Par exemple $n + 11 = (n+1) + 10$.
3. La fraction devient alors une somme : un entier, plus un reste divisé par le dénominateur. Le quotient est entier exactement quand ce reste est divisible par le dénominateur.
4. Pour b), remarque que $4n + 9 = 2(2n+1) + 7$. Pour c), cherche combien de fois $n+3$ tient dans $6n+20$.
5. Question c) : une fois la transformation faite, compare la taille du reste avec celle du dénominateur. Un petit nombre non nul peut-il être divisible par un plus grand ?

## Solution

**L'idée commune : isoler le dénominateur dans le numérateur.**

### a) $\dfrac{n+11}{n+1}$

On écrit $n + 11 = (n+1) + 10$, donc

$$\frac{n+11}{n+1} = \frac{(n+1) + 10}{n+1} = 1 + \frac{10}{n+1}.$$

Le premier terme est entier. Le quotient est donc un entier exactement lorsque $n+1$ divise $10$.

Comme $n \geqslant 0$, on a $n + 1 \geqslant 1$, et les diviseurs positifs de $10$ sont
$1$, $2$, $5$ et $10$. D'où

$$n + 1 \in \{1,\ 2,\ 5,\ 10\}, \qquad \text{c'est-à-dire} \qquad n \in \{0,\ 1,\ 4,\ 9\}.$$

**Vérification :** $\frac{11}{1} = 11$, $\frac{12}{2} = 6$, $\frac{15}{5} = 3$,
$\frac{20}{10} = 2$. $\checkmark$

### b) $\dfrac{4n+9}{2n+1}$

On écrit $4n + 9 = 2(2n+1) + 7$, donc

$$\frac{4n+9}{2n+1} = 2 + \frac{7}{2n+1}.$$

Le quotient est entier exactement lorsque $2n+1$ divise $7$. Comme $7$ est premier, ses diviseurs
positifs sont $1$ et $7$, et $2n+1 \geqslant 1$ :

$$2n + 1 = 1 \ \Rightarrow\ n = 0, \qquad 2n + 1 = 7 \ \Rightarrow\ n = 3.$$

**Vérification :** $\frac{9}{1} = 9$ et $\frac{21}{7} = 3$. $\checkmark$

(On remarque au passage que $2n+1$ est toujours impair, ce qui est cohérent : les diviseurs de $7$
le sont aussi.)

### c) $\dfrac{6n+20}{n+3}$

On écrit $6n + 20 = 6(n+3) + 2$, donc

$$\frac{6n+20}{n+3} = 6 + \frac{2}{n+3}.$$

Il faudrait que $n+3$ divise $2$. Mais $n$ est un entier naturel, donc

$$n + 3 \geqslant 3 > 2.$$

Un entier strictement plus grand que $2$ ne peut pas diviser $2$. **Il n'existe donc aucune valeur
de $n$** qui convienne.

**Conclusion.**

- a) $n \in \{0,\ 1,\ 4,\ 9\}$ ;
- b) $n \in \{0,\ 3\}$ ;
- c) aucune solution.

## Going further

1. Reprends la question c) en autorisant $n$ à être un entier **relatif**. Combien de solutions trouves-tu ?
2. Même travail avec $\dfrac{15}{x+2}$ et $\dfrac{17}{2x-1}$ : pour quels entiers naturels $x$ ces quotients sont-ils entiers ?
3. Pour quels entiers naturels $n$ la fraction $\dfrac{n^2 + 1}{n + 1}$ est-elle un entier ? (Indication : $n^2 - 1 = (n-1)(n+1)$.)
