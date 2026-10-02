---
id: "11827"
title: "Un collier de 2021 perles et un nombre impair de coloriages"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [denombrement, parite, suite recurrente, collier, periodicite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 5 (pot-pourri)"
  reference: "2021-02_sujet-envoi-5.pdf, Exercices Seniors, exercice 16 ; corrigé 2021-04_corrige-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/02/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-02_sujet-envoi-5.pdf"
---

## Statement

Un collier circulaire porte $2021$ perles. On colorie chaque perle en blanc ou en vert. Un coloriage est dit **chic** si, parmi $21$ perles consécutives du collier, il y a toujours au moins une perle verte.

Montrer que le nombre de coloriages chics est impair.

(Les perles sont numérotées : deux coloriages qui se déduisent l'un de l'autre en tournant le collier sont comptés comme différents.)

## Hints

1. Commencer par une **ligne** de $N$ perles au lieu d'un collier. Soit $a_N$ le nombre de coloriages de la ligne sans $21$ perles blanches consécutives. Trouver une relation de récurrence en regardant la dernière perle verte.
2. Étudier la parité de $a_N$. Soustraire deux relations de récurrence consécutives : on obtient $a_N \equiv a_{N-22}$ modulo $2$.
3. Pour le collier, numéroter les perles de $1$ à $2021$, et regarder la première et la dernière perle verte. Ce qui reste entre elles est une ligne.

## Solution

**Étape 1 : les lignes.** Pour $N \geqslant 0$, une **ligne chic** de longueur $N$ est un coloriage de $N$ perles alignées sans $21$ perles blanches consécutives. On note $a_N$ leur nombre. Pour $N \leqslant 20$, il n'y a aucune contrainte, donc $a_N = 2^N$ (et $a_0 = 1$, la ligne vide).

Soit $N \geqslant 21$. Dans une ligne chic de longueur $N$, les $21$ dernières perles contiennent une perle verte. Appelons $t$ le nombre de perles blanches après la dernière perle verte : $0 \leqslant t \leqslant 20$. Les $N - t - 1$ perles situées avant cette perle verte forment une ligne chic. Réciproquement, une ligne chic de longueur $N - t - 1$, suivie d'une perle verte puis de $t \leqslant 20$ perles blanches, est une ligne chic de longueur $N$. Donc

$$a_N = a_{N-1} + a_{N-2} + \cdots + a_{N-21} \qquad \text{pour } N \geqslant 21.$$

**Étape 2 : la parité de $a_N$.** Pour $N \geqslant 22$, en soustrayant la relation écrite pour $N - 1$ de celle écrite pour $N$ :

$$a_N - a_{N-1} = a_{N-1} - a_{N-22}, \qquad \text{donc} \qquad a_N = 2a_{N-1} - a_{N-22}.$$

Ainsi $a_N$ et $a_{N-22}$ ont la même parité : la parité de $a_N$ se répète avec une période de $22$. Il suffit de la connaître pour $0 \leqslant N \leqslant 21$ :

- $a_0 = 1$ est impair ;
- $a_1, \ldots, a_{20}$ sont des puissances de $2$ non triviales, donc pairs ;
- $a_{21} = a_0 + a_1 + \cdots + a_{20} = 1 + 2 + \cdots + 2^{20} = 2^{21} - 1$ est impair.

Conclusion : **$a_N$ est impair exactement lorsque le reste de $N$ dans la division par $22$ vaut $0$ ou $21$.**

**Étape 3 : casser le collier.** On numérote les perles de $1$ à $2021$ dans l'ordre. Soit un coloriage chic. On note $k$ le plus petit numéro d'une perle verte et $\ell$ le plus grand.

- Les perles $1$ à $21$ contiennent une perle verte, donc $1 \leqslant k \leqslant 21$.
- Les perles $\ell + 1, \ldots, 2021$ puis $1, \ldots, k - 1$ sont consécutives sur le collier et toutes blanches. Il y en a $(2021 - \ell) + (k - 1)$, donc au plus $20$, d'où $\ell \geqslant 2000 + k$.
- Les perles $k + 1, \ldots, \ell - 1$ forment une ligne chic, de longueur $\ell - k - 1$.

Réciproquement, choisissons $k$ et $\ell$ avec $1 \leqslant k \leqslant 21$ et $2000 + k \leqslant \ell \leqslant 2021$, colorions en vert les perles $k$ et $\ell$, en blanc les perles $\ell + 1, \ldots, 2021, 1, \ldots, k - 1$, et choisissons une ligne chic pour les perles $k + 1, \ldots, \ell - 1$. Le coloriage obtenu est chic : $21$ perles consécutives qui ne contiennent ni la perle $k$ ni la perle $\ell$ sont toutes d'un même côté. Elles ne peuvent pas être parmi les au plus $20$ perles blanches de l'arc qui va de $\ell$ à $k$, donc elles sont dans la ligne chic, et l'une d'elles est verte. Ses perles vertes extrêmes sont bien $k$ et $\ell$.

On a donc une correspondance exacte, et le nombre $C$ de coloriages chics du collier vaut

$$C = \sum_{k=1}^{21} \ \sum_{\ell = 2000 + k}^{2021} a_{\ell - k - 1}.$$

**Étape 4 : regrouper selon la longueur de la ligne.** Posons $N = \ell - k - 1$. Pour un $k$ fixé, $N$ va de $1999$ à $2020 - k$. Inversement, pour $N$ entre $1999$ et $2019$, les valeurs de $k$ qui conviennent sont $k = 1, 2, \ldots, 2020 - N$ (il y en a au plus $21$). Donc

$$C = \sum_{N=1999}^{2019} (2020 - N)\, a_N.$$

**Étape 5 : la parité de $C$.** Un terme $(2020 - N)\, a_N$ est impair seulement si $2020 - N$ est impair, c'est-à-dire $N$ impair, et si $a_N$ est impair. Or $2002 = 22 \times 91$. Entre $1999$ et $2019$, les nombres dont le reste modulo $22$ vaut $0$ ou $21$ sont donc $2002$ et $2001$. Seul $2001$ est impair. Le seul terme impair de la somme est donc $(2020 - 2001)\, a_{2001} = 19\, a_{2001}$, tous les autres sont pairs.

**Conclusion.** $C$ est la somme d'un nombre impair et de nombres pairs : **le nombre de coloriages chics est impair.**

## Going further

- Le nombre $2021$ n'a rien de spécial. Montrer, avec la même méthode, que pour tout entier $L \geqslant 22$, le nombre de coloriages chics d'un collier de $L$ perles est impair. (Un calcul par ordinateur le confirme jusqu'à $L = 249$.)
