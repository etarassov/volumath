---
id: "0180"
title: "Une démonstration qui prouve que 2 + 2 = 5"
grade: 8
theme: logic-reasoning
difficulty: 2
duration_min: 20
tags: [trouver-lerreur, division-par-zero, factorisation, raisonnement]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок, 7 класс, II полугодие, пособие для преподавателей"
  reference: "Ast2017b.pdf, листок 21, задача 1"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

Voici une « démonstration » des égalités $2 + 2 = 5$, puis $2 \times 2 = 5$. Elles sont bien sûr fausses. À toi de trouver l'erreur.

**La « démonstration ».**

Il est clair que $0 = 0$. Il est tout aussi clair que

$$2 \times (5+5) - 2 \times (5+5) = 0 \qquad \text{et} \qquad 5 \times 5 - 5 \times 5 = 0$$

Ces deux expressions valent toutes les deux $0$, donc elles sont égales :

$$2 \times (5+5) - 2 \times (5+5) = 5 \times 5 - 5 \times 5$$

Développons le membre de gauche et regroupons ses termes autrement :

$$2 \times (5-5) + 2 \times (5-5) = 5 \times (5-5)$$

c'est-à-dire

$$(2+2) \times (5-5) = 5 \times (5-5)$$

Les deux membres ont le facteur commun $5-5$. Simplifions par ce facteur :

$$2 + 2 = 5$$

Enfin, comme $2 + 2 = 2 \times 2$, on obtient au passage $2 \times 2 = 5$.

**Questions.**

1. À partir de quelle ligne le raisonnement cesse-t-il d'être correct ?
2. Expliquer précisément quelle règle a été appliquée à tort.
3. Que penser de la toute dernière phrase, celle qui conclut $2 \times 2 = 5$ ?

## Hints

1. Reprends le calcul ligne après ligne et vérifie chaque égalité toute seule, en calculant les deux membres. Quelle est la première qui est fausse ?
2. Tu vas constater que toutes les lignes sont vraies jusqu'à $(2+2) \times (5-5) = 5 \times (5-5)$ incluse. Calcule les deux membres de cette égalité : que valent-ils ?
3. L'erreur est donc dans le tout dernier passage. Combien vaut le nombre $5-5$ par lequel on a simplifié ?
4. Si $a \times c = b \times c$, a-t-on toujours le droit d'en déduire $a = b$ ?

## Solution

**1. Où le raisonnement dérape.**

Vérifions chaque ligne séparément.

- $2 \times (5+5) - 2 \times (5+5) = 20 - 20 = 0$. Vrai.
- $5 \times 5 - 5 \times 5 = 25 - 25 = 0$. Vrai.
- Les deux valent $0$, donc ils sont égaux. Vrai.
- Le regroupement : $2 \times 5 + 2 \times 5 - 2 \times 5 - 2 \times 5 = (2 \times 5 - 2 \times 5) + (2 \times 5 - 2 \times 5) = 2 \times (5-5) + 2 \times (5-5)$. Vrai, c'est un simple regroupement de termes.
- $2 \times (5-5) + 2 \times (5-5) = (2+2) \times (5-5)$. Vrai, c'est une factorisation.

Jusqu'ici, tout est juste. D'ailleurs l'avant-dernière ligne dit simplement

$$(2+2) \times 0 = 5 \times 0 \qquad \text{c'est-à-dire} \qquad 0 = 0$$

**Tout se gâte à la dernière ligne**, celle où l'on « simplifie par le facteur commun $5-5$ ».

**2. La règle utilisée à tort.**

La règle correcte est la suivante :

> si $a \times c = b \times c$ **et si $c \neq 0$**, alors $a = b$.

La condition $c \neq 0$ est indispensable. Or ici

$$c = 5 - 5 = 0$$

Simplifier par $5-5$, c'est diviser les deux membres par $0$, et **on ne divise jamais par zéro**.

Et on voit bien pourquoi la règle tombe : dès qu'on multiplie par $0$, tout devient $0$. L'égalité $(2+2) \times 0 = 5 \times 0$ est vraie, mais elle ne dit strictement rien sur $2+2$ et sur $5$. Avec le même calcul on « prouverait » aussi bien que $2+2 = 1000$.

**3. La dernière phrase.**

Le passage « comme $2+2 = 2 \times 2$, on obtient $2 \times 2 = 5$ » est, lui, logiquement correct : $2+2$ et $2 \times 2$ valent tous les deux $4$, donc si l'un était égal à $5$, l'autre le serait aussi.

Mais il part de $2+2=5$, qui est faux. Un raisonnement juste appliqué à un résultat faux donne un résultat faux. C'est d'ailleurs la raison pour laquelle une seule erreur, tout au début, suffit à ruiner la suite entière d'un devoir.

**Conclusion.** L'erreur est la simplification par $5-5$, c'est-à-dire une division par zéro. On ne peut simplifier une égalité par un facteur que si ce facteur n'est pas nul.

## Going further

1. Trouver l'erreur dans la « démonstration » suivante de $2 = 1$. Soient $a$ et $b$ deux nombres égaux. Alors $a^2 = ab$, donc $a^2 - b^2 = ab - b^2$, donc $(a-b)(a+b) = b(a-b)$, donc $a+b = b$. Comme $a = b$, cela donne $2b = b$, puis $2 = 1$.
2. Pour quelles valeurs de $c$ l'égalité $a \times c = b \times c$ permet-elle de conclure que $a = b$ ?
3. Fabriquer soi-même, sur le même modèle, une fausse démonstration de l'égalité $3 = 7$.
