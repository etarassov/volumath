---
id: "8666"
title: "Un nombre premier caché dans une factorisation"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [equation diophantienne, factorisation, nombres premiers, etude de cas]
adapted_from: null
see_also: ["8330"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, cours « Équations diophantiennes et factorisations » (Théo & Gaspard D.), exercice 11. Le corrigé imprimé ne traite pas le cas particulier p = 5, ajouté ici."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Déterminer tous les nombres premiers $p$ pour lesquels il existe des entiers strictement positifs $x$ et $y$ tels que

$$x\left(y^2 - p\right) + y\left(x^2 - p\right) = 5p .$$

## Hints

1. Développe le membre de gauche. Tu vas voir apparaître deux fois le facteur $x + y$.
2. Le membre de gauche se factorise en $(xy - p)(x + y)$. L'équation devient un produit de deux entiers égal à $5p$.
3. Comme $x$ et $y$ valent au moins $1$, on a $x + y \geqslant 2$. Quels diviseurs de $5p$ sont supérieurs ou égaux à $2$ ?
4. Distingue bien le cas $p = 5$, où $5p = 25$ n'a pas les mêmes diviseurs.
5. Dans le cas $x + y = p$, la condition $xy - p = 5$ se transforme joliment : écris $xy - x - y + 1$.
6. Dans le cas $x + y = 5p$, montre que $xy - p$ est beaucoup trop grand pour valoir $1$.

## Solution

### On factorise

Développons le membre de gauche :

$$x y^2 - px + y x^2 - py = xy(y + x) - p(x + y) = (xy - p)(x + y) .$$

L'équation devient donc

$$(xy - p)(x + y) = 5p .$$

Le membre de droite est strictement positif, et $x + y > 0$, donc $xy - p > 0$ aussi. Nous cherchons donc deux entiers strictement positifs dont le produit vaut $5p$, avec la contrainte

$$x + y \geqslant 1 + 1 = 2 .$$

### Le cas particulier $p = 5$

Si $p = 5$, alors $5p = 25$, dont les diviseurs sont $1$, $5$ et $25$. Comme $x + y \geqslant 2$, il reste deux possibilités.

- $x + y = 5$ et $xy - 5 = 5$, donc $xy = 10$. Deux entiers de somme $5$ et de produit $10$ : les couples de somme $5$ sont $(1,4), (2,3), (3,2), (4,1)$, de produits $4$ et $6$. Jamais $10$. Impossible.
- $x + y = 25$ et $xy - 5 = 1$, donc $xy = 6$. Si $xy = 6$ alors $x, y \leqslant 6$, donc $x + y \leqslant 12 < 25$. Impossible.

**Donc $p = 5$ ne convient pas.**

### Le cas général $p \ne 5$

Alors $5$ et $p$ sont deux nombres premiers distincts, et les diviseurs positifs de $5p$ sont exactement $1$, $5$, $p$ et $5p$. Comme $x+y \geqslant 2$, le facteur $x+y$ vaut $5$, $p$ ou $5p$ (il peut valoir $p$ seulement si $p \geqslant 2$, ce qui est toujours vrai). Trois cas.

**Cas A : $x + y = 5$ et $xy - p = p$, donc $xy = 2p$.**

Les couples d'entiers strictement positifs de somme $5$ sont $(1,4)$, $(2,3)$, $(3,2)$, $(4,1)$, de produits $4$ et $6$.

- Si $xy = 4$, alors $2p = 4$ et $p = 2$. C'est bien premier.
- Si $xy = 6$, alors $2p = 6$ et $p = 3$. C'est bien premier.

*Vérification.* Pour $p = 2$, $(x,y) = (1,4)$ : $1 \times (16 - 2) + 4 \times (1 - 2) = 14 - 4 = 10 = 5 \times 2$. 
Pour $p = 3$, $(x,y) = (2,3)$ : $2 \times (9-3) + 3 \times (4-3) = 12 + 3 = 15 = 5 \times 3$. 

**Cas B : $x + y = p$ et $xy - p = 5$, donc $xy = p + 5$.**

En remplaçant $p$ par $x+y$ : $xy = x + y + 5$, c'est-à-dire $xy - x - y = 5$. L'astuce est d'ajouter $1$ des deux côtés pour faire apparaître une factorisation :

$$xy - x - y + 1 = 6, \qquad \text{c'est-à-dire} \qquad (x-1)(y-1) = 6 .$$

Les factorisations de $6$ en deux entiers positifs sont $1 \times 6$, $2 \times 3$, $3 \times 2$, $6 \times 1$. Donc, à l'ordre près,

$$(x, y) = (2, 7) \quad \text{ou} \quad (x, y) = (3, 4) .$$

- $(2,7)$ donne $p = x+y = 9$, qui n'est pas premier. Rejeté.
- $(3,4)$ donne $p = 7$, qui est premier. Accepté.

*Vérification.* Pour $p = 7$, $(x,y) = (3,4)$ : $3 \times (16-7) + 4 \times (9-7) = 27 + 8 = 35 = 5 \times 7$. 

**Cas C : $x + y = 5p$ et $xy - p = 1$.**

Quitte à échanger $x$ et $y$, supposons $x \geqslant y \geqslant 1$. De $x + y = 5p$ on tire $2x \geqslant x + y = 5p$, donc $x \geqslant \frac{5p}{2}$. Alors

$$xy - p \geqslant x - p \geqslant \frac{5p}{2} - p = \frac{3p}{2} \geqslant 3 ,$$

puisque $p \geqslant 2$. Or on voudrait $xy - p = 1$. Impossible.

### Conclusion

$$\boxed{p = 2, \quad p = 3 \quad \text{et} \quad p = 7 \text{ sont les seuls nombres premiers qui conviennent.}}$$

## Going further

Deux techniques se combinent ici, et elles reviennent constamment.

**La factorisation d'abord.** Une équation où les inconnues apparaissent de façon désordonnée devient exploitable dès qu'on l'écrit « produit = nombre connu ». Ensuite, il suffit d'énumérer les diviseurs.

**L'astuce du $+1$.** L'égalité $xy - x - y = c$ ne se factorise pas telle quelle, mais $xy - x - y + 1 = (x-1)(y-1)$. Ajouter la bonne constante pour faire apparaître un produit est un réflexe à acquérir. On l'appelle parfois « factorisation de Simon ».

Et une leçon de méthode : le cas $p = 5$ n'est pas un détail de rédaction. Sans lui, la liste des diviseurs de $5p$ est fausse, et la démonstration ne tient plus. Chaque fois qu'on écrit « les diviseurs de $pq$ sont $1, p, q, pq$ », il faut s'assurer que $p \ne q$.
