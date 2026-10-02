---
id: "12881"
title: "n élèves, n courses et des scores"
grade: 12
theme: combinatorics
difficulty: 4
duration_min: 60
tags: [classement, majoration, construction, optimisation, double-comptage, poids]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 19 et 20 février 2025"
  reference: "2025-10_Sujet-Test-3-2024-2025.pdf, test senior, exercice 5 ; corrigé 2025-10_Corrige-Test-3-2024-2025.pdf (on suit la solution alternative n° 3, par des poids ; la solution alternative n° 2 passe dans Pour aller plus loin)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-3-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-3-2024-2025.pdf"
---

## Statement

Soit $n \geq 1$ un entier. Une classe de $n$ élèves participe à $n$ courses. À chaque course, les élèves sont classés selon leur rang d'arrivée, de $1$ à $n$, et deux élèves n'ont jamais le même rang.

Soit $a$ et $b$ deux entiers strictement positifs. On dit qu'un élève est **éligible à la note $(a, b)$** s'il a obtenu un rang inférieur ou égal à $b$ à au moins $a$ courses. Le **score** d'un élève est la plus grande des valeurs $a - b$, parmi tous les couples $(a, b)$ auxquels il est éligible.

Déterminer, en fonction de $n$, la plus grande valeur possible de la somme des scores des $n$ élèves.

## Hints

1. Faites les cas $n = 2$ et $n = 3$. Que se passe-t-il si chaque élève finit toujours à la même place ?
2. Pour majorer la somme des scores, distribuez des points : à chaque course, l'élève classé $k$-ième reçoit $1 - k/n$ point. Combien de points sont distribués en tout ?
3. Si un élève est éligible à la note $(a, b)$, montrez qu'il a reçu au moins $a(1 - b/n)$ point. Pourquoi ce nombre est-il supérieur ou égal à $a - b$ ?

## Solution

La réponse : **la plus grande somme possible est $n(n - 1)/2$.**

Il y a deux choses à montrer : la somme des scores ne dépasse jamais $n(n - 1)/2$, et il existe une classe où elle vaut exactement $n(n - 1)/2$.

### Deux remarques

- Tout élève est éligible à la note $(n, n)$, puisqu'à chacune des $n$ courses son rang est inférieur ou égal à $n$. Son score est donc au moins $n - n = 0$.
- Si un élève est éligible à la note $(a, b)$, alors $a \leq n$, puisqu'il n'y a que $n$ courses.

### Une majoration avec des points

À chaque course, on donne à l'élève classé $k$-ième le nombre de points

$$p_k = 1 - \frac{k}{n}.$$

Comme $1 \leq k \leq n$, chaque $p_k$ est positif ou nul, et $p_k$ diminue quand $k$ augmente.

**Le score d'un élève est inférieur ou égal à son total de points.** Soit $s$ le score d'un élève, et $(a, b)$ une note à laquelle il est éligible avec $s = a - b$. Il a fini parmi les $b$ premiers à au moins $a$ courses. À chacune de ces courses, son rang $k$ vérifie $k \leq b$, donc il a reçu $p_k \geq 1 - b/n$ point. Aux autres courses, il a reçu un nombre positif ou nul. Son total $P$ vérifie donc

$$P \geq a\left(1 - \frac{b}{n}\right) = a - \frac{a}{n}\,b \geq a - b = s,$$

où la dernière inégalité vient de $a/n \leq 1$.

**Le total des points distribués.** À une course, on distribue

$$\sum_{k=1}^{n} \left(1 - \frac{k}{n}\right) = n - \frac{1}{n} \times \frac{n(n + 1)}{2} = n - \frac{n + 1}{2} = \frac{n - 1}{2}$$

point. Sur les $n$ courses, on distribue donc $n(n - 1)/2$ points en tout.

En additionnant l'inégalité $s \leq P$ pour les $n$ élèves, on obtient que **la somme des scores est inférieure ou égale à $n(n - 1)/2$.**

### Une classe où la somme vaut n(n − 1)/2

On numérote les élèves de $1$ à $n$, et on suppose que l'élève numéro $i$ finit $i$-ième à toutes les courses.

- L'élève $i$ est éligible à la note $(n, i)$, donc son score est au moins $n - i$.
- Soit $(a, b)$ une note à laquelle il est éligible. Il a fini parmi les $b$ premiers à au moins une course, puisque $a \geq 1$. Or il finit toujours $i$-ième, donc $b \geq i$. Comme $a \leq n$, on a $a - b \leq n - i$.

Le score de l'élève $i$ vaut donc exactement $n - i$, et la somme des scores vaut

$$(n - 1) + (n - 2) + \cdots + 1 + 0 = \frac{n(n - 1)}{2}.$$

### Conclusion

**La plus grande valeur possible de la somme des scores est $n(n - 1)/2$.**

## Going further

1. Voici une autre façon d'obtenir la majoration, en suivant les scores course après course. On définit le score d'un élève après les $k$ premières courses de la même façon, en acceptant aussi $a = 0$ et $b = 0$ (avant la première course, tous les scores valent $0$). Montrez que la $k$-ième course augmente chaque score d'au plus $1$, et qu'elle augmente le score d'au plus $k - 1$ élèves. (Un élève dont le score augmente devient éligible à une note $(a, b)$ avec $a - b > 0$ et $a \leq k$ : où a-t-il fini lors de la $k$-ième course ?) Retrouvez la majoration $0 + 1 + \cdots + (n - 1)$.
2. Dans la preuve, on a choisi une note $(a, b)$ qui réalise le score. Montrez que l'élève a alors fini exactement $b$-ième à au moins une course. (Sinon, à quelle note $(a, b - 1)$ serait-il éligible ?)
