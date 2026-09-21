---
id: "7055"
title: "Une fonction qui ne peut pas exister"
grade: 11
theme: functions-analysis
difficulty: 4
duration_min: 30
tags: [equation fonctionnelle, injectivite, raisonnement par l absurde]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Saint-Pierre-lès-Nemours 2009"
  reference: "stage_junior_2009.pdf, test final, exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2009.pdf"
---

## Statement

Existe-t-il une fonction $f$ définie sur $\mathbb N$ et à valeurs dans $\mathbb N$ telle que,
pour tout entier naturel $n$,
$$f(f(n) + 2) = n \ ?$$

*(Ici $\mathbb N = \{0, 1, 2, 3, \ldots\}$.)*

## Hints

1. Suppose qu'une telle fonction existe, et cherche à en tirer quelque chose d'impossible.
2. Montre d'abord que $f$ est **injective** : si $f(x) = f(y)$, alors $x = y$.
3. Pour cela, pars de $f(x) = f(y)$ et applique l'hypothèse à $x$ puis à $y$.
4. Ensuite, pose $a = f(0)$ et $b = f(a)$, et calcule $f(b+2)$ avec l'hypothèse.
5. Compare $f(b+2)$ à $f(0)$, puis utilise l'injectivité.

## Solution

**La réponse est non : une telle fonction n'existe pas.**

Raisonnons par l'absurde et supposons qu'une fonction $f : \mathbb N \to \mathbb N$ vérifie
$$f(f(n) + 2) = n \qquad \text{pour tout } n \in \mathbb N . \qquad (\star)$$

**Étape 1 : $f$ est injective.**

Soient $x$ et $y$ deux entiers naturels avec $f(x) = f(y)$. Alors $f(x) + 2 = f(y) + 2$, donc
$$x \overset{(\star)}{=} f(f(x) + 2) = f(f(y) + 2) \overset{(\star)}{=} y .$$

Donc $x = y$ : la fonction $f$ est injective.

**Étape 2 : la contradiction.**

Posons
$$a = f(0) \qquad \text{et} \qquad b = f(a) .$$

Ce sont deux entiers naturels, donc $a \geq 0$ et $b \geq 0$ ; on ne sait rien de plus sur
eux, et on n'en aura pas besoin.

Appliquons $(\star)$ avec $n = a$ :
$$f(f(a) + 2) = a, \qquad \text{c'est-à-dire} \qquad f(b + 2) = a .$$

Mais par ailleurs $f(0) = a$. Nous avons donc deux entiers, $b+2$ et $0$, qui ont la même
image par $f$ :
$$f(b+2) = f(0) .$$

Par injectivité, $b + 2 = 0$, donc $b = -2$.

C'est impossible : $b = f(a)$ est un entier **naturel**, donc $b \geq 0$.

**Conclusion.** L'hypothèse était absurde : il n'existe aucune fonction
$f : \mathbb N \to \mathbb N$ vérifiant $f(f(n) + 2) = n$ pour tout $n$. $\blacksquare$

## Going further

Le $2$ n'a rien de particulier : le même raisonnement montre qu'il n'existe aucune fonction
$f : \mathbb N \to \mathbb N$ vérifiant $f(f(n) + c) = n$, pour n'importe quelle constante
entière $c \geq 1$. On obtient à chaque fois $b = -c < 0$.

En revanche, pour $c = 0$ la question devient : existe-t-il $f : \mathbb N \to \mathbb N$
avec $f(f(n)) = n$ ? Cette fois oui, et même très facilement : la fonction identité convient,
et aussi la fonction qui échange $2k$ et $2k+1$ pour tout $k$.

Essaie maintenant la question voisine : existe-t-il $f : \mathbb N \to \mathbb N$ telle que
$f(f(n)) = n + 1$ pour tout $n$ ? La réponse est encore non, mais l'argument est différent :
regarde ce que devient $f(f(f(n)))$, calculé de deux façons.
