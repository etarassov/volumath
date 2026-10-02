---
id: "11258"
title: "Toujours quelqu'un sous son propre chapeau"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [chapeaux, cercle, divisibilite, restes, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 4 (combinatoire)"
  reference: "2019-01_envoi-4.pdf, Exercices communs, exercice 6 ; corrigé 2019-02_envoi-4-corr-def.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/01/envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2019-01_envoi-4.pdf"
---

## Statement

Lors d'une fête, $n$ personnes posent chacune leur chapeau par terre, et les $n$ chapeaux forment un
cercle. Chaque personne se place devant un chapeau, une personne par chapeau, et le met sur sa tête.
Puis tout le monde repose son chapeau et avance d'une place vers la droite, devant le chapeau
suivant, qu'il met à son tour. On recommence ainsi jusqu'à ce que chacun ait porté tous les
chapeaux.

Pour quels entiers $n \geqslant 1$ peut-on choisir la place de départ de chacun de sorte que, à
chaque instant, au moins une personne porte **son propre** chapeau ?

## Hints

1. Essaie $n = 2$, puis $n = 3$.
2. Combien y a-t-il d'instants en tout ? À combien d'instants une personne donnée porte-t-elle son
   propre chapeau ? Déduis-en que, si le placement convient, il y a **exactement** une personne sous
   son propre chapeau à chaque instant.
3. Numérote les places de $0$ à $n - 1$ dans le sens où l'on avance. Pour chaque personne, regarde la
   place où elle commence, la place de son chapeau, et l'instant où elle le porte. Additionne sur
   toutes les personnes.
4. Pour $n$ impair, essaie de faire partir les personnes dans « l'ordre inverse » de leurs chapeaux.

## Solution

**Réponse : c'est possible si et seulement si $n$ est impair.**

### On numérote tout

Numérotons les places des chapeaux de $0$ à $n - 1$, dans le sens où les personnes avancent : de la
place $0$ on passe à la place $1$, puis à la place $2$, et ainsi de suite, et de la place $n - 1$ on
revient à la place $0$. Numérotons aussi les personnes de $0$ à $n - 1$, de sorte que le chapeau de
la personne $i$ soit à la place $i$.

Numérotons enfin les instants de $0$ à $n - 1$ : l'instant $0$ est celui du départ, et à chaque
instant suivant tout le monde a avancé d'une place. Il y a $n$ instants, et pendant ces $n$ instants
chaque personne passe une fois devant chacun des $n$ chapeaux.

Notons $p_i$ la place de départ de la personne $i$. Comme il y a une personne par chapeau, les
nombres $p_0, p_1, \ldots, p_{n-1}$ sont les nombres $0, 1, \ldots, n - 1$, dans un certain ordre.

À l'instant $t$, la personne $i$ a avancé de $t$ places. Elle est donc devant son propre chapeau,
celui de la place $i$, quand $p_i + t$ et $i$ ont le même reste dans la division par $n$,
c'est-à-dire quand
$$p_i + t - i \ \text{ est un multiple de } n .$$
Cela arrive à un seul instant, car elle passe une seule fois devant son chapeau. Notons $d_i$ cet
instant.

### Si $n$ est pair, c'est impossible

Supposons qu'un placement convienne. Il y a $n$ instants, et à chacun d'eux au moins une personne
porte son propre chapeau. Mais chacune des $n$ personnes ne le porte qu'à un seul instant. Il y a donc
exactement une personne par instant, et les instants $d_0, d_1, \ldots, d_{n-1}$ sont les nombres
$0, 1, \ldots, n - 1$, dans un certain ordre.

Additionnons les nombres $p_i + d_i - i$ pour toutes les personnes. Chacun est un multiple de $n$,
donc la somme aussi. Or :

- les $p_i$ sont $0, 1, \ldots, n - 1$, donc leur somme vaut $0 + 1 + \cdots + (n - 1)$ ;
- les $i$ sont aussi $0, 1, \ldots, n - 1$, et leur somme est la même ;
- les $d_i$ sont encore $0, 1, \ldots, n - 1$.

Il reste
$$\text{somme} = 0 + 1 + \cdots + (n - 1) = \frac{n(n - 1)}{2} .$$

Si $n$ est pair, écrivons $n = 2m$. Alors
$$\frac{n(n - 1)}{2} = m(2m - 1) = 2m \times m - m = n\,m - m .$$
Comme $0 < m < n$, le nombre $n\,m - m$ est strictement compris entre les deux multiples de $n$
consécutifs $n(m-1)$ et $n\,m$ : ce n'est pas un multiple de $n$. C'est une contradiction. Aucun
placement ne convient quand $n$ est pair.

### Si $n$ est impair, voici un placement

Supposons $n$ impair. Faisons partir la personne $0$ à la place $0$, et, pour $i$ entre $1$ et
$n - 1$, la personne $i$ à la place $n - i$. Les places de départ $0, n - 1, n - 2, \ldots, 1$ sont
bien toutes différentes.

Avec ce placement, $p_i + i$ est égal à $0$ ou à $n$ : c'est un multiple de $n$. Pour que la
personne $i$ porte son chapeau à l'instant $t$, il faut que $p_i + t - i$ soit un multiple de $n$,
ce qui revient à demander que $t - 2i$ soit un multiple de $n$ (on a retiré $p_i + i$, qui en est
un). Prenons un instant $t$ entre $0$ et $n - 1$.

- **Si $t$ est pair**, la personne $i = \frac{t}{2}$ convient, car $t - 2i = 0$. Et $\frac{t}{2}$
  est bien compris entre $0$ et $n - 1$.
- **Si $t$ est impair**, alors $t + n$ est pair, car $n$ est impair. La personne
  $i = \frac{t + n}{2}$ convient, car $t - 2i = -n$. Et $\frac{t + n}{2}$ est compris entre $0$ et
  $n - 1$, car $t + n \leqslant 2n - 1$.

À chaque instant, quelqu'un porte donc son propre chapeau.

Par exemple, pour $n = 5$, les personnes $0, 1, 2, 3, 4$ partent des places $0, 4, 3, 2, 1$. Aux
instants $0, 1, 2, 3, 4$, ce sont respectivement les personnes $0, 3, 1, 4, 2$ qui portent leur
propre chapeau.

**Conclusion : on peut trouver un tel placement si et seulement si $n$ est impair.**

## Going further

- Pour $n$ pair, montre que, quel que soit le placement de départ, il y a un instant où au moins deux
  personnes portent leur propre chapeau.
