---
id: "2609"
title: "Jusqu'au deuxième joker"
grade: 12
theme: probability-statistics
difficulty: 4
duration_min: 40
tags: [esperance, symetrie, cartes, variable-aleatoire]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School Circle, Probability I (Anand Rajagopalan)"
  reference: "Handout-451-519.pdf, exercice 7"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-451-519.pdf"
---

## Statement

Un paquet de $n$ cartes contient exactement **trois jokers** ; les $n-3$ autres cartes sont ordinaires. On bat le paquet au hasard, toutes les dispositions étant également probables.

On retourne ensuite les cartes une par une, en partant du dessus, et on s'arrête dès que le **deuxième** joker apparaît.

Soit $X$ le nombre de cartes retournées. Montrer que
$$E(X) = \frac{n+1}{2}.$$

## Hints

1. Fais d'abord un petit cas à la main, par exemple $n = 5$. Tu devrais trouver $E(X) = 3$.
2. Ne cherche pas la loi de $X$ : elle est pénible. Cherche une **symétrie**.
3. Retourne le paquet de bout en bout. Un paquet battu au hasard, lu à l'envers, est encore un paquet battu au hasard.
4. Il y a trois jokers. Le deuxième joker en partant du dessus, c'est aussi le deuxième en partant du dessous. Où se trouve-t-il dans le paquet retourné ?

## Solution

**L'idée : lire le paquet à l'envers.**

Notons $X$ la position du deuxième joker en comptant depuis le dessus du paquet ($X$ est bien le nombre de cartes retournées, puisqu'on s'arrête juste après l'avoir vu).

Imaginons maintenant qu'on lise le même paquet **depuis le dessous**, et notons $Y$ la position du deuxième joker en comptant depuis le dessous.

**Premier point : $X$ et $Y$ ont la même loi.**

Retourner un paquet de bout en bout est une bijection de l'ensemble des dispositions sur lui-même. Comme toutes les dispositions sont également probables, le paquet retourné est encore un paquet battu au hasard, avec la même loi. Or $Y$ se lit sur le paquet retourné exactement comme $X$ se lit sur le paquet d'origine. Donc $X$ et $Y$ suivent la même loi, et en particulier
$$E(X) = E(Y).$$

**Deuxième point : $X + Y = n + 1$.**

C'est ici que le nombre $3$ intervient. Comme il y a exactement trois jokers, le deuxième joker en partant du haut est aussi le deuxième en partant du bas : c'est **le joker du milieu**, c'est la même carte dans les deux comptages.

Or pour une carte située à la position $k$ en partant du dessus d'un paquet de $n$ cartes, sa position en partant du dessous est $n + 1 - k$. Donc, pour **chaque** disposition du paquet,
$$Y = n + 1 - X, \qquad \text{c'est-à-dire} \qquad X + Y = n+1 .$$

**Conclusion.**

Par linéarité de l'espérance,
$$E(X) + E(Y) = E(X+Y) = E(n+1) = n+1 .$$

Comme $E(X) = E(Y)$, on obtient $2\,E(X) = n+1$, donc

$$\boxed{E(X) = \frac{n+1}{2}.}$$

**Vérification sur un petit cas.** Pour $n = 5$ (trois jokers, deux cartes ordinaires), on peut énumérer les $\binom{5}{3} = 10$ positions possibles des jokers et relever à chaque fois la position du joker du milieu :
$$\{1,2,3\} \to 2, \quad \{1,2,4\} \to 2, \quad \{1,2,5\} \to 2, \quad \{1,3,4\} \to 3, \quad \{1,3,5\} \to 3,$$
$$\{1,4,5\} \to 4, \quad \{2,3,4\} \to 3, \quad \{2,3,5\} \to 3, \quad \{2,4,5\} \to 4, \quad \{3,4,5\} \to 4 .$$
La moyenne vaut $\dfrac{2+2+2+3+3+4+3+3+4+4}{10} = \dfrac{30}{10} = 3 = \dfrac{5+1}{2}$. C'est bien cela.

## Going further

Une autre démonstration : les trois jokers découpent les $n-3$ cartes ordinaires en quatre paquets (avant le premier joker, entre le premier et le deuxième, entre le deuxième et le troisième, après le troisième). Par symétrie ces quatre paquets ont la même taille moyenne $\dfrac{n-3}{4}$. Le nombre de cartes retournées vaut $2$ (les deux jokers) plus les deux premiers paquets, d'où $E(X) = 2 + 2 \times \dfrac{n-3}{4} = \dfrac{n+1}{2}$. Cette méthode-là, contrairement à la première, s'adapte à un nombre quelconque de jokers.
