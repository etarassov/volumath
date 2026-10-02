---
id: "11259"
title: "Rassembler des points en prenant des milieux"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [invariant, milieu, puissances de 2, recurrence, coordonnees]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 4 (combinatoire)"
  reference: "2019-01_envoi-4.pdf, Exercices du groupe Senior, exercice 7 ; corrigé 2019-02_envoi-4-corr-def.pdf (le contre-exemple du corrigé, un point d'abscisse 2 et les autres aux abscisses 2^i pour 2 ⩽ i ⩽ n, ne marche pas toujours : pour n = 6, la moyenne des abscisses vaut 126/6 = 21, un entier ; la solution ici utilise un autre point de départ)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/01/envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2019-01_envoi-4.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. On dispose d'une liste de $n$ points du plan (certains peuvent être
confondus). On s'autorise l'opération suivante : choisir deux points de la liste et les remplacer
**tous les deux** par leur milieu. La liste compte donc toujours $n$ points.

On dit que l'entier $n$ est **grégaire** si, quelle que soit la liste de $n$ points du départ, on peut,
en un nombre fini d'opérations, arriver à une liste de $n$ points tous confondus.

Montrer que $n$ est grégaire si et seulement si $n$ est une puissance de $2$, c'est-à-dire de la
forme $2^k$ avec $k$ entier positif ou nul.

## Hints

1. Vérifie que $1$, $2$ et $4$ sont grégaires. Avec $4$ points, rassemble d'abord deux points, puis
   les deux autres.
2. Si tu sais rassembler $2^k$ points, comment rassembler $2^{k+1}$ points ?
3. Pour l'autre sens, choisis un repère, et regarde ce que devient la somme des abscisses lors d'une
   opération.
4. Prends $n - 1$ points d'abscisse $0$ et un seul point d'abscisse $1$. Quelles abscisses peut-on
   obtenir ? Quelle serait l'abscisse commune à la fin ?

## Solution

### Les puissances de $2$ sont grégaires

Montrons par récurrence que, pour tout entier $k \geqslant 0$, l'entier $2^k$ est grégaire.

- **Pour $k = 0$**, la liste compte un seul point : il n'y a rien à faire.
- **Passage de $2^k$ à $2^{k+1}$.** Supposons que $2^k$ soit grégaire, et prenons une liste de
  $2^{k+1}$ points. Partageons-la en deux moitiés de $2^k$ points chacune.
  - Comme $2^k$ est grégaire, on peut rassembler les points de la première moitié en un même point
    $A$, en n'utilisant que des opérations entre points de cette moitié. La seconde moitié n'a pas
    bougé.
  - De même, on rassemble ensuite les points de la seconde moitié en un même point $B$.
  - On a maintenant $2^k$ copies de $A$ et $2^k$ copies de $B$. On forme $2^k$ couples, chacun formé
    d'une copie de $A$ et d'une copie de $B$, et on fait l'opération sur chaque couple. Après ces
    $2^k$ opérations, tous les points sont au milieu de $[AB]$.

Donc $2^{k+1}$ est grégaire. Par récurrence, toutes les puissances de $2$ sont grégaires.

### Les autres entiers ne sont pas grégaires

Soit $n$ un entier qui n'est pas une puissance de $2$. On a $n \geqslant 3$. Choisissons un repère, et
prenons la liste de départ suivante : $n - 1$ points à l'origine, d'abscisse $0$, et un point
d'abscisse $1$. Seules les abscisses vont nous servir.

Lors d'une opération, deux points d'abscisses $x$ et $y$ sont remplacés par deux points d'abscisse
$\frac{x + y}{2}$, l'abscisse de leur milieu. On fait deux remarques.

**La somme des abscisses ne change pas.** En effet, $\frac{x + y}{2} + \frac{x + y}{2} = x + y$.
Au départ, cette somme vaut $1$. Elle vaut donc $1$ après n'importe quel nombre d'opérations.

**Les abscisses restent des fractions dont le dénominateur est une puissance de $2$.** Appelons
**fraction dyadique** un nombre de la forme $\frac{a}{2^m}$, avec $a$ entier et $m$ entier positif ou
nul. Au départ, $0 = \frac{0}{1}$ et $1 = \frac{1}{1}$ en sont. Si $x = \frac{a}{2^m}$ et
$y = \frac{b}{2^\ell}$ en sont, avec par exemple $m \geqslant \ell$, alors
$$\frac{x + y}{2} = \frac{a + 2^{m - \ell}\, b}{2^{m+1}}$$
en est aussi. Donc, après n'importe quel nombre d'opérations, toutes les abscisses sont des
fractions dyadiques.

**Conclusion.** Supposons qu'au bout d'un certain nombre d'opérations, les $n$ points soient
confondus, d'abscisse commune $x$. La somme des abscisses vaut alors $n\,x$, et elle vaut $1$, donc
$x = \frac{1}{n}$. Mais $x$ est une fraction dyadique : $\frac{1}{n} = \frac{a}{2^m}$, et donc
$$a \times n = 2^m .$$
Ainsi $n$ divise $2^m$. Or la décomposition de $2^m$ en facteurs premiers ne contient que le
facteur $2$, donc celle de $n$ aussi : $n$ serait une puissance de $2$. C'est une contradiction.

Pour cette liste de départ, on ne peut donc jamais rassembler les $n$ points : $n$ n'est pas grégaire.

**Conclusion : $n$ est grégaire si et seulement si $n$ est une puissance de $2$.**

## Going further

- Pour $n = 2^k$, combien d'opérations la méthode de la solution utilise-t-elle ? (Tu peux trouver
  une formule en fonction de $k$.)
- On change l'opération : on choisit **trois** points, et on les remplace tous les trois par leur
  centre de gravité. Montre que l'on peut alors toujours rassembler $n$ points si et seulement si $n$
  est une puissance de $3$.
