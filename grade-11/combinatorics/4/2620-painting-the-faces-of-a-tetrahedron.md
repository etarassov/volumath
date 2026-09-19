---
id: "2620"
title: "Peindre les quatre faces d'un tétraèdre"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [denombrement, rotation, tetraedre, disjonction-de-cas, solides]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School Circle, AMC Problem Session"
  reference: "Handout-456-552.pdf, exercice 11 (AMC 12B 2007, problème 16 ; réponse donnée dans le même fichier)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-456-552.pdf"
---

## Statement

On peint chacune des quatre faces d'un tétraèdre régulier en rouge, en blanc ou en bleu. Une face reçoit une seule couleur, et les trois couleurs n'ont pas besoin d'être toutes utilisées.

Deux façons de peindre sont considérées comme **identiques** si l'on peut passer de l'une à l'autre en faisant tourner le tétraèdre.

Combien y a-t-il de façons différentes de le peindre ?

## Hints

1. Il y a $3^4 = 81$ façons de peindre les faces si on les numérote et qu'on s'interdit de tourner le solide. Le vrai travail est de savoir lesquelles se ramènent les unes aux autres.
2. Commence par deux rotations concrètes. Prends un sommet $V$ et l'axe qui passe par $V$ et par le centre de la face opposée. Que fait la rotation d'un tiers de tour autour de cet axe sur les quatre faces ?
3. Cette rotation laisse **une** face en place et fait tourner les trois autres. Déduis-en que l'on peut amener n'importe quelle face à la place de n'importe quelle autre.
4. Classe les façons de peindre selon le nombre de faces de chaque couleur : $4$, ou $3{+}1$, ou $2{+}2$, ou $2{+}1{+}1$. Traite chaque cas avec les rotations de la question 2.

## Solution

**Étape préliminaire : deux choses que les rotations permettent de faire.**

Numérotons les quatre faces $1$, $2$, $3$, $4$. Chaque face est opposée à un sommet : notons $V_1$ le sommet opposé à la face $1$, et ainsi de suite.

Considérons l'axe qui passe par le sommet $V_1$ et par le centre de la face $1$. La rotation d'un tiers de tour autour de cet axe :

- **laisse la face $1$ en place** (elle est perpendiculaire à l'axe, la rotation la fait tourner sur elle-même) ;
- **fait tourner circulairement les trois autres faces** $2 \to 3 \to 4 \to 2$, car ce sont exactement les trois faces qui contiennent le sommet $V_1$.

On en tire deux outils.

**Outil 1 : on peut faire tourner trois faces en laissant la quatrième fixe.** C'est exactement la rotation ci-dessus.

**Outil 2 : on peut amener n'importe quelle face à la place de n'importe quelle autre.** Soient en effet deux faces distinctes $F$ et $G$. Elles se coupent le long d'une arête ; soit $V$ l'un des deux sommets de cette arête. Alors $F$ et $G$ sont deux des trois faces qui contiennent $V$, et la rotation d'un tiers de tour (ou de deux tiers de tour) autour de l'axe de $V$ envoie $F$ sur $G$.

**Étape 1 : classer selon le nombre de faces de chaque couleur.**

Comme il y a quatre faces et trois couleurs, au moins une couleur est utilisée deux fois au moins. Les répartitions possibles sont :
$$4, \qquad 3+1, \qquad 2+2, \qquad 2+1+1 .$$

**Cas $4$ : les quatre faces de la même couleur.**

Il suffit de choisir la couleur : **$3$ façons**, et deux tétraèdres de couleurs différentes ne se ressemblent évidemment pas.

**Cas $3+1$ : trois faces d'une couleur, une d'une autre.**

Choisissons la couleur des trois faces ($3$ possibilités) puis celle de la face isolée ($2$ possibilités restantes) : cela fait $3 \times 2 = 6$ répartitions de couleurs.

Pour une répartition donnée, toutes les façons de peindre se ramènent l'une à l'autre : d'après l'outil 2, on peut amener la face isolée à la place de n'importe quelle autre. Il n'y a donc **qu'une seule** façon par répartition.

**Total : $6$ façons.**

**Cas $2+2$ : deux faces d'une couleur, deux d'une autre.**

Il y a $\binom{3}{2} = 3$ façons de choisir les deux couleurs utilisées.

Pour une paire de couleurs donnée, disons rouge et blanc, montrons qu'il n'y a qu'une seule façon. D'après l'outil 2, amenons une des deux faces rouges à la place de la face $1$. La seconde face rouge est alors l'une des faces $2$, $3$, $4$ ; d'après l'outil 1, on peut faire tourner ces trois faces sans bouger la face $1$, donc l'amener à la place de la face $2$. Les faces $3$ et $4$ sont alors blanches. Toute façon de peindre se ramène donc à celle-ci : **une seule** façon.

**Total : $3$ façons.**

**Cas $2+1+1$ : deux faces d'une couleur et les deux autres des deux couleurs restantes.**

Il suffit de choisir la couleur doublée : $3$ possibilités. Les deux autres couleurs occupent alors les deux faces restantes.

Là encore il n'y a qu'une façon par répartition. Disons que le rouge est doublé, et que les deux autres faces sont blanche et bleue. D'après l'outil 2, amenons la face blanche à la place de la face $1$. D'après l'outil 1, faisons tourner les faces $2$, $3$, $4$ pour amener la face bleue à la place de la face $2$. Les faces $3$ et $4$ sont alors rouges toutes les deux : **une seule** façon.

**Total : $3$ façons.**

**Conclusion.**

$$3 \ + \ 6 \ + \ 3 \ + \ 3 \ = \ 15 .$$

$$\boxed{\text{Il y a } 15 \text{ façons différentes de peindre le tétraèdre.}}$$

**Contrôle.** En faisant énumérer par une machine les $81$ colorations des faces numérotées et en regroupant celles qui se déduisent l'une de l'autre par une des douze rotations du tétraèdre, on obtient bien $15$ groupes.

## Going further

On vient en fait de démontrer que, avec trois couleurs, deux façons de peindre le tétraèdre sont identiques **si et seulement si** elles utilisent chaque couleur le même nombre de fois. Le compte revient donc à choisir trois entiers positifs ou nuls $n_{\text{rouge}} + n_{\text{blanc}} + n_{\text{bleu}} = 4$, ce qui fait $\binom{6}{2} = 15$ possibilités. Avec **quatre** couleurs la propriété tombe : on peut alors peindre les quatre faces de quatre couleurs différentes, et les deux figures obtenues sont images l'une de l'autre dans un miroir sans qu'aucune rotation ne permette de passer de l'une à l'autre.
