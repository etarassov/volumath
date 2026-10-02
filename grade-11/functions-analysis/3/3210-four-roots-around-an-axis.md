---
id: "3210"
title: "Quatre racines autour d'un axe de symétrie"
grade: 11
theme: functions-analysis
difficulty: 3
duration_min: 20
tags: [fonctions, symetrie, racines, courbe-representative]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Math Competitions Training, Functions review"
  reference: "Handout-4800-4981.pdf, section 2.2, exercice 5, d'après AHSME 1984, problème 16 (réponse dans Handout-4805-4981.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4800-4981.pdf"
---

## Statement

Une fonction $f$, définie sur $\mathbb{R}$, vérifie

$$f(2 + x) = f(2 - x) \qquad \text{pour tout réel } x .$$

On sait de plus que l'équation $f(x) = 0$ a exactement quatre solutions réelles, toutes différentes.

Combien vaut la somme de ces quatre solutions ?

## Hints

1. Que dit géométriquement l'égalité $f(2+x) = f(2-x)$ sur la courbe de $f$ ?
2. Si $r$ est une solution de $f(x)=0$, trouve, à partir de $r$, une autre valeur qui est forcément solution elle aussi. (Écris $r = 2 + x$ et dis qui est $x$.)
3. Tu obtiens : si $r$ est racine, alors $4 - r$ est racine. Combien vaut $r + (4-r)$ ?
4. Attention au cas où $r$ et $4-r$ sont le même nombre. Quelle valeur de $r$ cela donne-t-il ? Montre que cette valeur ne peut pas être une des quatre racines.

## Solution

**Ce que dit l'hypothèse.**

L'égalité $f(2+x) = f(2-x)$ signifie que deux points situés à la même distance de $2$, l'un à droite l'autre à gauche, ont la même image. Autrement dit, la courbe de $f$ est **symétrique par rapport à la droite verticale d'équation $x = 2$**.

**Les racines vont par paires.**

Soit $r$ une solution de $f(x) = 0$. Posons $x = r - 2$, de sorte que $r = 2 + x$. L'hypothèse donne

$$f(2 - x) = f(2 + x) = f(r) = 0 .$$

Or $2 - x = 2 - (r-2) = 4 - r$. Donc

$$\text{si } r \text{ est racine, alors } 4 - r \text{ est racine aussi,}$$

et ces deux racines ont pour somme

$$r + (4 - r) = 4 .$$

**Le cas gênant : une racine qui serait sa propre partenaire.**

Si $r = 4 - r$, alors $2r = 4$, donc $r = 2$. Montrons que $2$ n'est pas l'une des quatre racines.

Supposons le contraire. La racine $2$ serait sa propre partenaire. Les trois autres racines devraient alors se regrouper deux par deux par l'association $r \leftrightarrow 4-r$, puisque la partenaire d'une racine différente de $2$ est une racine différente d'elle-même. Mais on ne peut pas regrouper **trois** objets en paires : il en resterait un tout seul, donc égal à sa propre partenaire, donc égal à $2$. Cela contredirait le fait que les quatre racines sont toutes différentes.

Donc $2$ n'est pas racine.

**On conclut.**

Les quatre racines se répartissent donc en **deux paires** $\{r_1, 4-r_1\}$ et $\{r_3, 4-r_3\}$, chacune de somme $4$. La somme totale vaut

$$4 + 4 = 8 .$$

**Conclusion.** La somme des quatre solutions vaut $8$.

Un exemple concret : $f(x) = \left( (x-2)^2 - 1 \right)\left( (x-2)^2 - 4 \right)$ vérifie bien $f(2+x)=f(2-x)$, ses racines sont $1, 3, 0, 4$ et leur somme est $8$.

## Going further

1. Vérifier sur l'exemple $f(x) = \left( (x-2)^2 - 1 \right)\left( (x-2)^2 - 4 \right)$ que $f(2+x) = f(2-x)$.
2. Même question si l'équation $f(x)=0$ a exactement **trois** racines distinctes : que vaut alors leur somme ?
3. Une fonction vérifie $f(5+x) = f(5-x)$ et $f(x)=0$ a exactement six racines distinctes. Que vaut leur somme ?
