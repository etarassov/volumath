---
id: "8048"
title: "Une somme de parties entières qui vaut n"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [partie entiere, division euclidienne, somme telescopique, puissances de deux]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017, La muraille"
  reference: "stage_ete_2017.pdf, chapitre X « La muraille », exercice 88 (solution d'élève par Malo Hillairet)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Pour un réel $x$, on note $\lfloor x \rfloor$ sa **partie entière**, c'est-à-dire le plus grand
entier inférieur ou égal à $x$. Par exemple $\lfloor \text{3,7} \rfloor = 3$ et
$\lfloor 5 \rfloor = 5$.

Soit $n$ un entier naturel. Calculer

$$S(n) = \left\lfloor \frac{n+1}{2} \right\rfloor
       + \left\lfloor \frac{n+2}{4} \right\rfloor
       + \left\lfloor \frac{n+4}{8} \right\rfloor
       + \left\lfloor \frac{n+8}{16} \right\rfloor + \cdots$$

Le terme général est $\left\lfloor \dfrac{n + 2^{k-1}}{2^k} \right\rfloor$ pour
$k = 1, 2, 3, \ldots$ ; cette somme n'a qu'un nombre fini de termes non nuls, car dès que
$2^{k-1} > n$ on a $n + 2^{k-1} < 2^k$ et le terme vaut $0$.

## Hints

1. Calcule $S(n)$ à la main pour $n = 1$, $2$, $3$, $4$, $5$. La réponse se devine très vite.
2. Pour la démonstration, on cherche à faire **télescoper** la somme : on aimerait que chaque
   terme soit une différence de deux quantités qui s'annulent de proche en proche.
3. Les quantités naturelles ici sont les $\left\lfloor \dfrac{n}{2^k} \right\rfloor$. Compare
   $\left\lfloor \dfrac{n + 2^{k-1}}{2^k} \right\rfloor$ avec
   $\left\lfloor \dfrac{n}{2^{k-1}} \right\rfloor - \left\lfloor \dfrac{n}{2^k} \right\rfloor$
   sur quelques exemples.
4. Pour prouver cette égalité, écris la division euclidienne de $n$ par $2^{k-1}$ :
   $n = 2^{k-1} q + r$ avec $0 \leq r < 2^{k-1}$, puis sépare les cas $q$ pair et $q$ impair.

## Solution

La réponse est

$$\boxed{S(n) = n .}$$

### Ce qui se passe sur des exemples

Pour $n = 5$ :

$$\left\lfloor \frac{6}{2} \right\rfloor + \left\lfloor \frac{7}{4} \right\rfloor
+ \left\lfloor \frac{9}{8} \right\rfloor + \left\lfloor \frac{13}{16} \right\rfloor + \cdots
= 3 + 1 + 1 + 0 + \cdots = 5 .$$

Pour $n = 12$ :

$$\left\lfloor \frac{13}{2} \right\rfloor + \left\lfloor \frac{14}{4} \right\rfloor
+ \left\lfloor \frac{16}{8} \right\rfloor + \left\lfloor \frac{20}{16} \right\rfloor
+ \left\lfloor \frac{28}{32} \right\rfloor + \cdots = 6 + 3 + 2 + 1 + 0 + \cdots = 12 .$$

On conjecture donc $S(n) = n$.

### Le cœur de la démonstration

Montrons que, pour tout entier $k \geq 1$,

$$(\star) \qquad \left\lfloor \frac{n + 2^{k-1}}{2^k} \right\rfloor
= \left\lfloor \frac{n}{2^{k-1}} \right\rfloor - \left\lfloor \frac{n}{2^k} \right\rfloor .$$

Écrivons la division euclidienne de $n$ par $2^{k-1}$ :

$$n = 2^{k-1} q + r , \qquad 0 \leq r < 2^{k-1} .$$

Par définition de la division euclidienne, $\left\lfloor \dfrac{n}{2^{k-1}} \right\rfloor = q$.
En divisant l'égalité par $2^k$ :

$$\frac{n}{2^k} = \frac{q}{2} + \frac{r}{2^k}
\qquad \text{et} \qquad
\frac{n + 2^{k-1}}{2^k} = \frac{q+1}{2} + \frac{r}{2^k} ,$$

avec l'encadrement essentiel

$$0 \ \leq \ \frac{r}{2^k} \ < \ \frac{1}{2} .$$

Deux cas, selon la parité de $q$.

**Si $q = 2t$.** Alors $\dfrac{n}{2^k} = t + \dfrac{r}{2^k}$, qui est dans $[t\,;t+1[$, donc
$\left\lfloor \dfrac{n}{2^k} \right\rfloor = t$. Et
$\dfrac{n+2^{k-1}}{2^k} = t + \dfrac12 + \dfrac{r}{2^k}$, qui est aussi dans $[t\,;t+1[$
puisque $\dfrac12 + \dfrac{r}{2^k} < 1$ ; sa partie entière vaut donc $t$. Les deux membres de
$(\star)$ valent $t$, car $q - t = 2t - t = t$.

**Si $q = 2t+1$.** Alors $\dfrac{n}{2^k} = t + \dfrac12 + \dfrac{r}{2^k}$, encore dans
$[t\,;t+1[$, donc $\left\lfloor \dfrac{n}{2^k} \right\rfloor = t$. Et
$\dfrac{n+2^{k-1}}{2^k} = t + 1 + \dfrac{r}{2^k}$, qui est dans $[t+1\,;t+2[$, donc de partie
entière $t+1$. Les deux membres de $(\star)$ valent $t+1$, car $q - t = 2t+1-t = t+1$.

L'égalité $(\star)$ est donc vraie dans tous les cas.

### Le télescopage

Choisissons un entier $K$ assez grand pour que $2^K > n$. Tous les termes de rang $k > K$ sont
nuls, donc

$$S(n) = \sum_{k=1}^{K} \left\lfloor \frac{n + 2^{k-1}}{2^k} \right\rfloor
       = \sum_{k=1}^{K} \left( \left\lfloor \frac{n}{2^{k-1}} \right\rfloor
                              - \left\lfloor \frac{n}{2^{k}} \right\rfloor \right) .$$

Chaque terme négatif annule le terme positif suivant, et il ne reste que le premier et le
dernier :

$$S(n) = \left\lfloor \frac{n}{2^{0}} \right\rfloor
       - \left\lfloor \frac{n}{2^{K}} \right\rfloor = n - 0 = n ,$$

puisque $2^K > n$ entraîne $\left\lfloor \dfrac{n}{2^K} \right\rfloor = 0$.

Conclusion : $S(n) = n$ pour tout entier naturel $n$.

## Going further

L'égalité $(\star)$ dit que $\left\lfloor \dfrac{n + 2^{k-1}}{2^k} \right\rfloor$ est
**l'entier le plus proche** de $\dfrac{n}{2^k}$ (avec la règle « on arrondit $\text{0,5}$ vers
le haut »). La somme étudiée est donc celle des arrondis successifs de $n/2$, $n/4$, $n/8$,
etc. Le fait qu'elle redonne exactement $n$ est une jolie surprise : chaque arrondi perd un
peu, et les pertes se compensent exactement.
