---
id: "0560"
title: "Dix lancers contre onze"
grade: 10
theme: probability-statistics
difficulty: 5
duration_min: 40
tags: [probabilite, symetrie, evenement-contraire, bijection, denombrement]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок, 8 классы, пособие для преподавателей"
  reference: "Kan2018.pdf, листок 14 «Вероятность-2», задача 4"
  url: "https://mmmf.msu.ru/for_schools/Kan2018.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2018.pdf"
---

## Statement

Pierre lance une pièce de monnaie équilibrée $10$ fois de suite. Julie lance la même pièce $11$ fois de suite.

Quelle est la probabilité que Julie obtienne **strictement plus** de « pile » que Pierre ?

*(On ne demande pas de calculer une somme de coefficients binomiaux : la réponse s'obtient par une idée, en quelques lignes.)*

## Hints

1. Noter $x$ le nombre de « pile » obtenus par Pierre et $y$ celui obtenu par Julie. On cherche $P(y > x)$. Quel est l'événement contraire de $\{y > x\}$ ?
2. La pièce est équilibrée : échanger partout les rôles de « pile » et de « face » ne change aucune probabilité. Un résultat des $21$ lancers a autant de chances de se produire que le résultat obtenu en remplaçant chaque pile par un face et chaque face par un pile.
3. Par cet échange, l'événement « Julie fait strictement plus de pile que Pierre » devient « Julie fait strictement plus de **face** que Pierre ». Écrire ce second événement avec $x$ et $y$ : combien de face fait Pierre ? et Julie ?
4. Simplifier l'inégalité obtenue, en se rappelant que $x$ et $y$ sont des nombres **entiers**.

## Solution

Notons :

- $x$ le nombre de « pile » obtenus par Pierre sur ses $10$ lancers ;
- $y$ le nombre de « pile » obtenus par Julie sur ses $11$ lancers.

On cherche $P(y > x)$.

Comme Pierre lance $10$ fois, son nombre de « face » vaut $10 - x$. De même, Julie obtient $11 - y$ « face ».

**L'idée : échanger pile et face.**

Le résultat de l'expérience complète est une suite de $21$ lettres, chacune valant P ou F : les $10$ premières pour Pierre, les $11$ suivantes pour Julie. La pièce étant équilibrée et les lancers indépendants, ces $2^{21}$ suites ont toutes la même probabilité.

Associons maintenant à chaque suite celle obtenue en remplaçant **toutes** ses lettres P par des F et toutes ses F par des P. Cette transformation envoie l'ensemble des suites sur lui-même, et deux suites différentes donnent deux résultats différents : c'est donc un appariement parfait des $2^{21}$ suites entre elles. En particulier, un ensemble de suites et son image par cet échange ont **le même nombre d'éléments**, donc la même probabilité.

Appliquons cela à l'événement qui nous intéresse :

$$A : \; \text{« Julie obtient strictement plus de pile que Pierre »}, \quad \text{c'est-à-dire } y > x.$$

Par l'échange, une suite de $A$ devient une suite où Julie obtient strictement plus de **face** que Pierre. Autrement dit, l'image de $A$ est l'événement

$$B : \; 11 - y > 10 - x.$$

Ces deux événements ont donc la même probabilité :

$$P(y > x) = P(11 - y > 10 - x).$$

**Simplifier la seconde inégalité.**

$$11 - y > 10 - x \iff 1 - y + x > 0 \iff x - y > -1.$$

Or $x$ et $y$ sont des entiers, donc $x - y$ est un entier. Un entier strictement supérieur à $-1$ est supérieur ou égal à $0$. Donc

$$11 - y > 10 - x \iff x - y \geqslant 0 \iff x \geqslant y.$$

On obtient ainsi l'égalité remarquable

$$P(y > x) = P(x \geqslant y).$$

**La conclusion.**

Les deux événements $\{y > x\}$ et $\{x \geqslant y\}$ sont contraires l'un de l'autre : pour tout résultat de l'expérience, ou bien $y > x$, ou bien $x \geqslant y$, et jamais les deux à la fois. Donc

$$P(y > x) + P(x \geqslant y) = 1.$$

Comme ces deux probabilités sont égales, chacune vaut la moitié de $1$ :

$$P(y > x) = \frac{1}{2}.$$

**Conclusion.** La probabilité que Julie obtienne strictement plus de « pile » que Pierre est exactement $\dfrac{1}{2}$.

**L'idée à retenir.** Le lancer supplémentaire de Julie compense exactement le fait qu'il faille une inégalité **stricte** pour qu'elle gagne. On l'a vu sans rien calculer, en combinant deux symétries : l'échange pile/face, et le passage à l'événement contraire.

## Going further

1. Reprendre le raisonnement avec $n$ lancers pour Pierre et $n + 1$ pour Julie. La réponse change-t-elle ?
2. Pierre et Julie lancent maintenant la pièce $10$ fois chacun. La probabilité que Julie obtienne strictement plus de « pile » que Pierre vaut-elle encore $\dfrac{1}{2}$ ? Montrer qu'elle est strictement inférieure à $\dfrac{1}{2}$, sans la calculer.
3. Pierre lance $10$ fois, Julie $12$ fois. Peut-on encore conclure aussi vite ? Qu'est-ce qui bloque dans le raisonnement ?
