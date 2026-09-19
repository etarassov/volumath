---
id: "1820"
title: "Cinq entiers au tableau, un effacé"
grade: 11
theme: algebra
difficulty: 4
duration_min: 40
tags: [second-degre, somme-et-produit, divisibilite, enquete]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Functions and Quadratic Equations"
  reference: "Handout-1598-1504.pdf, exercice 4 (corrigé dans Handout-1632-1520.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1598-1504.pdf"
---

## Statement

Au tableau sont écrits cinq entiers : les trois coefficients $a$, $b$, $c$ d'une équation du second degré

$$ax^2 + bx + c = 0$$

et les deux racines de cette équation, le tout dans un ordre quelconque. Les racines sont donc, elles aussi, des entiers.

Quelqu'un efface l'un des cinq nombres. Il reste au tableau

$$2, \qquad 3, \qquad 4, \qquad -5.$$

Quel nombre a été effacé ?

## Hints

1. Note $x_1$ et $x_2$ les racines. Écris les relations entre les coefficients et les racines sous une forme sans fraction : $b = -a(x_1+x_2)$ et $c = a\,x_1x_2$.
2. Ces deux égalités donnent des **divisibilités** entre les cinq nombres du tableau. Lesquelles ?
3. Tu devrais trouver que $a$ divise $b$, que $a$ divise $c$, et aussi que $x_1$ et $x_2$ divisent $c$. Donc $c$ est divisible par trois des quatre autres nombres.
4. Regarde maintenant les quatre nombres restés visibles : $2$, $3$, $4$, $-5$. Lesquels divisent lesquels ? Il n'y a pas grand-chose.
5. Si le nombre effacé n'était pas $c$, alors $c$ serait visible et au moins deux des trois nombres qui le divisent le seraient aussi. Est-ce possible ?
6. Une fois établi que $c$ est le nombre effacé, il reste $\{a, b, x_1, x_2\} = \{2, 3, 4, -5\}$ et la contrainte $a \mid b$. Elle ne laisse qu'une possibilité.

## Solution

Notons $x_1$ et $x_2$ les deux racines, qui sont des entiers.

**Étape 1 : traduire les relations entre coefficients et racines.**

Pour $ax^2+bx+c=0$ avec $a \neq 0$ :

$$x_1 + x_2 = -\frac{b}{a}, \qquad x_1 x_2 = \frac{c}{a},$$

que l'on écrit sans fraction :

$$b = -a\,(x_1+x_2), \qquad c = a\,x_1\,x_2.$$

**Étape 2 : en déduire des divisibilités.**

Comme tous ces nombres sont entiers, la première égalité montre que

$$a \ \text{divise} \ b,$$

et la seconde que

$$a \ \text{divise} \ c, \qquad x_1 \ \text{divise} \ c, \qquad x_2 \ \text{divise} \ c.$$

Autrement dit : **$c$ est divisible par trois des quatre autres nombres du tableau**, à savoir $a$, $x_1$ et $x_2$.

**Étape 3 : le nombre effacé est $c$.**

Supposons que ce ne soit pas $c$ qui ait été effacé. Alors $c$ figure parmi $2$, $3$, $4$, $-5$. Le nombre effacé est l'un des quatre autres, donc **au moins deux** des trois nombres $a$, $x_1$, $x_2$ sont encore visibles, et tous deux divisent $c$.

Examinons alors les quatre nombres visibles, un par un dans le rôle de $c$ :

| $c$ | nombres visibles qui divisent $c$ | combien ? |
|---|---|---|
| $2$ | parmi $3$, $4$, $-5$ : aucun | $0$ |
| $3$ | parmi $2$, $4$, $-5$ : aucun | $0$ |
| $4$ | parmi $2$, $3$, $-5$ : seulement $2$ | $1$ |
| $-5$ | parmi $2$, $3$, $4$ : aucun | $0$ |

Dans aucun cas on n'atteint deux diviseurs. L'hypothèse est donc fausse :

$$\text{le nombre effacé est } c.$$

**Étape 4 : identifier $a$, $b$ et les racines.**

Les quatre nombres visibles sont donc $a$, $b$, $x_1$ et $x_2$, dans un certain ordre :

$$\{a,\ b,\ x_1,\ x_2\} = \{2,\ 3,\ 4,\ -5\}.$$

On sait que $a$ divise $b$. Cherchons, parmi ces quatre nombres, tous les couples $(a,b)$ distincts tels que $a$ divise $b$ :

- $2 \mid 4$ : possible ;
- aucun autre : $3$ ne divise ni $2$, ni $4$, ni $-5$ ; $4$ ne divise ni $2$, ni $3$, ni $-5$ ; $-5$ ne divise aucun des trois autres ; et $2$ ne divise ni $3$, ni $-5$.

Donc $a = 2$ et $b = 4$, et il reste $\{x_1, x_2\} = \{3, -5\}$.

**Vérification de la cohérence.**

$$-a(x_1+x_2) = -2 \times (3 + (-5)) = -2 \times (-2) = 4 = b. \quad \checkmark$$

**Étape 5 : calculer $c$.**

$$c = a\,x_1\,x_2 = 2 \times 3 \times (-5) = -30.$$

**Vérification complète.** L'équation est $2x^2 + 4x - 30 = 0$, c'est-à-dire $2(x^2+2x-15) = 0$, soit $2(x-3)(x+5) = 0$. Ses racines sont bien $3$ et $-5$. Les cinq nombres du tableau étaient donc

$$2, \quad 4, \quad -30, \quad 3, \quad -5,$$

et en effaçant $-30$ il reste bien $2$, $3$, $4$, $-5$.

**Conclusion.** Le nombre effacé est $\boxed{-30}$.

## Going further

1. Reprends le problème avec, cette fois, les nombres restants $-40$, $-8$, $1$, $5$. Il y a **deux** réponses possibles : trouve-les toutes les deux, et explique à quel endroit le raisonnement de l'exercice cesse de trancher.
2. Fabrique toi-même un énoncé du même genre : pars d'une équation à coefficients et racines entiers, efface un des cinq nombres, et vérifie que ton énoncé admet bien une seule réponse.
