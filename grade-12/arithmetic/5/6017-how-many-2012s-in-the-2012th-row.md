---
id: "6017"
title: "Combien de 2012 dans la 2012ᵉ ligne ?"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 75
tags: [pgcd, premiers-entre-eux, algorithme-d-euclide, indicatrice-d-euler, denombrement]
adapted_from: null
see_also: ["1805", "6011"]
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), MTCircular, « Problem Circle : Number Sum Triangles » (Joshua Zucker)"
  reference: "MTCircularAutumn2012.pdf, p. 17 : problème venu de la 2012 Bay Area Math Olympiad for Teachers et d'une olympiade russe pour enseignants ; la revue annonce une solution dans le numéro suivant et ne la publie pas"
  url: "https://mathcircles.org/"
  original_language: "en"
  local_copy: "sources/originals/namc/MTCircularAutumn2012.pdf"
---

## Statement

On construit des lignes de nombres. La première est
$$L_1 : \quad 1, \ 1 .$$

Pour passer d'une ligne à la suivante, on **intercale entre deux voisins leur somme**, sans rien effacer :
$$L_2 : \quad 1, \ 2, \ 1$$
$$L_3 : \quad 1, \ 3, \ 2, \ 3, \ 1$$
$$L_4 : \quad 1, \ 4, \ 3, \ 5, \ 2, \ 5, \ 3, \ 4, \ 1$$
$$L_5 : \quad 1, \ 5, \ 4, \ 7, \ 3, \ 8, \ 5, \ 7, \ 2, \ 7, \ 5, \ 8, \ 3, \ 7, \ 4, \ 5, \ 1$$

Combien de fois le nombre $2012$ apparaît-il dans la ligne $L_{2012}$ ?

## Hints

1. Commence petit. Compte les $3$ dans $L_3$, les $4$ dans $L_4$, les $5$ dans $L_5$, les $6$ dans $L_6$. Tu obtiens $2$, $2$, $4$, $2$. Cette suite ne t'est pas inconnue.
2. Un nombre apparaît dans une ligne soit parce qu'il vient d'être intercalé, soit parce qu'il était déjà là. Un nombre une fois écrit ne disparaît plus jamais.
3. Chaque $n$ intercalé provient d'un couple de voisins $(a,b)$ avec $a+b = n$. Compter les $n$ revient donc à compter des couples de voisins.
4. On sait (ou on redémontre) que deux voisins sont toujours premiers entre eux. Combien y a-t-il de couples $(a,b)$ d'entiers strictement positifs, premiers entre eux, avec $a+b = 2012$ ?
5. Il reste le point délicat : tout couple $(a,b)$ premiers entre eux apparaît-il vraiment quelque part, et **assez tôt** ? Regarde comment remonter d'un couple de voisins à celui de la ligne précédente dont il provient.
6. Cette remontée, c'est l'algorithme d'Euclide par soustractions. Combien d'étapes au maximum si $a + b = n$ ?

## Solution

La réponse est $\boxed{1004}$.

### Ce qu'il faut compter

Chaque ligne contient tous les nombres de la précédente, plus les sommes intercalées : **un nombre écrit une fois reste écrit dans toutes les lignes suivantes**, à la même place relative.

Chaque nombre $n \geqslant 2$ de la ligne $L_k$ a donc été *créé* à une étape précise, en tant que somme $a+b$ d'un couple de voisins $(a,b)$ de la ligne précédente. Réciproquement, chaque couple de voisins $(a,b)$ crée, dans la ligne suivante, exactement un exemplaire du nombre $a+b$.

Compter les $2012$ de $L_{2012}$, c'est donc compter les couples de voisins $(a,b)$ avec $a+b = 2012$ qui apparaissent dans les lignes $L_1, \ldots, L_{2011}$.

Trois questions se posent : quels couples peuvent apparaître, apparaissent-ils tous, et apparaissent-ils assez tôt ?

### Premier point : les couples de voisins sont premiers entre eux

Quand on passe de $L_k$ à $L_{k+1}$, un couple de voisins $(a,b)$ devient
$$a, \ a+b, \ b ,$$
et fournit donc les deux nouveaux couples de voisins $(a, a+b)$ et $(a+b, b)$. Tout couple de voisins de $L_{k+1}$ est de cette forme, puisque chaque nombre intercalé sépare deux anciens voisins.

Or $\mathrm{PGCD}(a, a+b) = \mathrm{PGCD}(a,b)$ et $\mathrm{PGCD}(a+b, b) = \mathrm{PGCD}(a,b)$ : un diviseur commun à deux de ces trois nombres divise le troisième. Comme le seul couple de $L_1$ est $(1,1)$, dont le PGCD vaut $1$, tous les couples de voisins de toutes les lignes sont formés d'entiers **premiers entre eux**.

En particulier, un couple $(a,b)$ avec $a+b = 2012$ ne peut apparaître que si $\mathrm{PGCD}(a,b) = 1$.

### Deuxième point : remonter, c'est l'algorithme d'Euclide

Soit $(x,y)$ un couple de voisins d'une ligne $L_{k+1}$ avec $k \geqslant 1$. D'où vient-il ?

D'après ce qui précède, il est de la forme $(a, a+b)$ ou $(a+b, b)$ avec $a, b \geqslant 1$. Dans le premier cas $x < y$, dans le second $x > y$. Le cas $x = y$ est impossible : deux voisins égaux et premiers entre eux valent tous deux $1$, et le couple $(1,1)$ n'existe que dans $L_1$.

Le couple parent est donc **entièrement déterminé** :
$$\text{si } x < y, \quad \text{le parent est } (x,\ y-x) ; \qquad \text{si } x > y, \quad \text{le parent est } (x-y,\ y) .$$

C'est exactement une étape de l'algorithme d'Euclide par soustractions. En remontant de ligne en ligne, on applique cet algorithme au couple $(x,y)$, et comme $x$ et $y$ sont premiers entre eux, il aboutit à $(1,1)$, c'est-à-dire à la ligne $L_1$.

Deux conséquences.

- **Chaque couple d'entiers premiers entre eux apparaît.** Partant de $(a,b)$ avec $\mathrm{PGCD}(a,b) = 1$, l'algorithme d'Euclide par soustractions le ramène à $(1,1)$ en un certain nombre $t$ d'étapes. En parcourant ce chemin à l'envers depuis $L_1$, on construit $(a,b)$ comme couple de voisins de la ligne $L_{1+t}$.
- **Il n'apparaît qu'une fois.** Chaque couple a un unique parent, donc un unique chemin de remontée, donc une unique ligne d'apparition et une unique position dans cette ligne.

### Troisième point : ils apparaissent assez tôt

Soit $(a,b)$ premiers entre eux avec $a + b = n$. À chaque étape de l'algorithme d'Euclide par soustractions, la somme des deux nombres diminue de $\min(a,b) \geqslant 1$, donc d'au moins $1$. Elle part de $n$ et finit à $1 + 1 = 2$ : il y a donc au plus $n - 2$ étapes.

Le couple $(a,b)$ apparaît donc dans une ligne $L_{1+t}$ avec $1 + t \leqslant n - 1$, et le nombre $n$ qu'il engendre apparaît dans la ligne suivante, d'indice au plus $n$.

Autrement dit : **dans la ligne $L_n$, tous les couples de somme $n$ ont déjà joué leur rôle.** Chacun y a déposé son exemplaire de $n$.

### Le compte

Le nombre d'apparitions de $2012$ dans $L_{2012}$ est donc le nombre de couples ordonnés $(a,b)$ d'entiers strictement positifs tels que
$$a + b = 2012 \qquad \text{et} \qquad \mathrm{PGCD}(a,b) = 1 .$$

Comme $b = 2012 - a$, tout diviseur commun de $a$ et $b$ divise $2012$, et réciproquement un diviseur commun de $a$ et $2012$ divise $b$. La condition s'écrit donc simplement
$$\mathrm{PGCD}(a,\ 2012) = 1, \qquad 1 \leqslant a \leqslant 2011 .$$

C'est la définition de l'indicatrice d'Euler : le nombre cherché vaut $\varphi(2012)$.

Décomposons :
$$2012 = 4 \times 503 = 2^2 \times 503 ,$$
et $503$ est premier (il n'est divisible par aucun des nombres premiers $2, 3, 5, 7, 11, 13, 17, 19$, et $23^2 = 529 > 503$). Donc
$$\varphi(2012) = \varphi(2^2) \times \varphi(503) = (4 - 2) \times (503 - 1) = 2 \times 502 = 1004 .$$

**Le nombre $2012$ apparaît exactement $1004$ fois dans la ligne $L_{2012}$.**

### Vérification sur les petits cas

| $n$ | apparitions de $n$ dans $L_n$ | $\varphi(n)$ |
|---|---|---|
| $2$ | $1$ | $1$ |
| $3$ | $2$ | $2$ |
| $4$ | $2$ | $2$ |
| $5$ | $4$ | $4$ |
| $6$ | $2$ | $2$ |
| $7$ | $6$ | $6$ |

Sur $L_5$, écrite dans l'énoncé, on lit bien quatre $5$.

## Going further

1. Combien de fois $2012$ apparaît-il dans la ligne $L_{2013}$ ? Et dans $L_{3000}$ ? La réponse ne bouge plus : pourquoi ?
2. À partir de quelle ligne le nombre $n$ apparaît-il pour la première fois ? (Indication : c'est le couple $(1, n-1)$, le plus lent à remonter, qui est le dernier arrivé ; mais quel est le premier ?)
3. Quel est le plus grand nombre de la ligne $L_k$ ? Pourquoi la suite de Fibonacci apparaît-elle ici ?
4. Former les fractions $\frac{1}{1}, \frac{1}{2}, \frac{2}{1}, \frac{1}{3}, \frac{3}{2}, \ldots$ en prenant les couples de voisins successifs. On obtient chaque fraction irréductible exactement une fois : c'est une énumération explicite des rationnels positifs, due à Calkin et Wilf.
