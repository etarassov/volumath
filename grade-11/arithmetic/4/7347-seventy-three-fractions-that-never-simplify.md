---
id: "7347"
title: "Soixante-treize fractions qui ne se simplifient jamais"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [pgcd, fraction-irreductible, nombres-premiers, algorithme-deuclide]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Saint-Malo 2007"
  reference: "stage_ete_2007.pdf, « Les exercices du groupe C », en TD, exercice 40"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2007.pdf"
---

## Statement

Trouver le plus petit entier $n > 0$ pour lequel les $73$ fractions
$$\frac{19}{n+21}, \quad \frac{20}{n+22}, \quad \frac{21}{n+23}, \quad \ldots, \quad \frac{91}{n+93}$$
sont **toutes irréductibles**.

## Hints

1. Une fraction $\frac{a}{b}$ est irréductible quand $\mathrm{PGCD}(a, b) = 1$. Il y a $73$ conditions à satisfaire en même temps.
2. Regarde la fraction générale : au numérateur $k$, au dénominateur $n + k + 2$. Que vaut la différence entre les deux ?
3. Un diviseur commun de deux nombres divise leur différence. Que devient alors $\mathrm{PGCD}(k, \, n+k+2)$ ?
4. Les $73$ conditions se ramènent donc à une seule condition sur $n+2$ : laquelle ?
5. Quels nombres premiers doivent être évités ? Pour un premier $p \leqslant 91$, y a-t-il toujours un multiple de $p$ entre $19$ et $91$ ?

## Solution

### On simplifie les 73 conditions en une seule

La fraction générale de la liste s'écrit
$$\frac{k}{n + k + 2} \qquad \text{pour } k = 19, 20, \ldots, 91 .$$

(Vérification : pour $k = 19$ le dénominateur vaut $n+21$, pour $k = 91$ il vaut $n+93$. $\checkmark$)

La différence entre le dénominateur et le numérateur est
$$(n + k + 2) - k = n + 2 ,$$
la **même pour toutes les fractions**. C'est le point de départ.

Tout diviseur commun de $k$ et de $n+k+2$ divise leur différence $n+2$ ; et réciproquement, tout diviseur commun de $k$ et de $n+2$ divise leur somme $n+k+2$. Donc
$$\mathrm{PGCD}(k, \; n+k+2) = \mathrm{PGCD}(k, \; n+2) .$$

Les $73$ fractions sont donc toutes irréductibles si et seulement si

$$\mathrm{PGCD}(k, \, n+2) = 1 \qquad \text{pour tout } k \in \{19, 20, \ldots, 91\} .$$

Autrement dit : **$n+2$ doit être premier avec chacun des entiers de $19$ à $91$.**

### Quels nombres premiers sont interdits

Posons $N = n + 2$. Si un nombre premier $p$ divise $N$ et divise aussi l'un des entiers de $19$ à $91$, la condition est violée.

Montrons que **tout nombre premier $p \leqslant 91$ possède un multiple entre $19$ et $91$** :

- si $19 \leqslant p \leqslant 91$, le multiple $p$ lui-même convient ;
- si $p < 19$, c'est-à-dire $p \in \{2, 3, 5, 7, 11, 13, 17\}$, voici un multiple à chaque fois :
$$20 = 2 \times 10, \quad 21 = 3 \times 7, \quad 20 = 5 \times 4, \quad 21 = 7 \times 3, \quad 22 = 11 \times 2, \quad 26 = 13 \times 2, \quad 34 = 17 \times 2 .$$

Donc **aucun nombre premier inférieur ou égal à $91$ ne peut diviser $N$.** Tous les facteurs premiers de $N$ doivent être strictement supérieurs à $91$.

Réciproquement, si tous les facteurs premiers de $N$ dépassent $91$, alors $N$ n'a aucun facteur premier commun avec un entier $k \leqslant 91$, donc $\mathrm{PGCD}(k, N) = 1$ pour tout $k$ de $19$ à $91$. La condition est donc **exactement** : tous les facteurs premiers de $N$ sont $> 91$.

### Le plus petit N

Comme $n > 0$, on a $N = n + 2 \geqslant 3$, donc $N$ a au moins un facteur premier, et ce facteur dépasse $91$. Ainsi $N$ est au moins égal au plus petit nombre premier supérieur à $91$.

Les entiers $92, 93, \ldots, 96$ ne sont pas premiers ($92 = 4 \times 23$, $93 = 3 \times 31$, $94 = 2 \times 47$, $95 = 5 \times 19$, $96 = 2^5 \times 3$), et $97$ est premier. Le plus petit $N$ possible est donc
$$N = 97 ,$$
et il convient bien, puisque $97$ est premier et $97 > 91$.

$$\boxed{n = 95 .}$$

**Vérification sur un cas.** Pour $n = 95$, la première fraction est $\frac{19}{116}$. Or $116 = 4 \times 29$, sans facteur $19$ : elle est bien irréductible. Et la dernière est $\frac{91}{188}$, avec $91 = 7 \times 13$ et $188 = 4 \times 47$ : irréductible aussi.

## Going further

1. Vérifie que $n = 95$ marche vraiment, en te convainquant que $\mathrm{PGCD}(k, 97) = 1$ pour tout $k$ de $19$ à $91$ sans aucun calcul.
2. Quel est le **deuxième** plus petit $n$ qui convient ?
3. Reprends la question en remplaçant la liste par $\frac{2}{n+4}, \frac{3}{n+5}, \ldots, \frac{100}{n+102}$. Quelle est la réponse ?
4. Pourquoi le raisonnement serait-il différent si les numérateurs allaient de $92$ à $96$ ? Essaie.
