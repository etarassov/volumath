---
id: "6106"
title: "Grenouilles et crapauds sur une bande"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [invariant, comptage, deplacement, strategie, jeu-de-taquin]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), MTCircular Summer 2013, rubrique « Problem Circle »"
  reference: "MTCircularSummer2013.pdf, page 17, « Problem Circle: Frogs and Toads » par Joshua Zucker. Le magazine pose la version sur un damier carré et ne publie aucune solution ; l'exercice ci-dessous traite la version sur une bande, celle des références « Toads & Frogs Puzzle » et « Frogs » citées par la rubrique."
  url: "https://mathteacherscircle.org/newsletter"
  original_language: "en"
  local_copy: "sources/originals/namc/MTCircularSummer2013.pdf"
---

## Statement

Sur une bande de $2n+1$ cases alignées, $n$ grenouilles occupent les $n$ cases de gauche et $n$ crapauds les $n$ cases de droite. La case du milieu est vide.

Les grenouilles ne se déplacent que vers la **droite**, les crapauds que vers la **gauche**. Un coup consiste, au choix :

- à faire **glisser** un animal d'une case, si la case voisine dans son sens de marche est vide ;
- à faire **sauter** un animal par-dessus exactement un animal de l'autre espèce, pour atterrir sur la case juste derrière, qui doit être vide.

Aucun autre coup n'est permis : on ne recule jamais, on ne saute jamais par-dessus deux animaux, et on ne saute jamais par-dessus un animal de sa propre espèce.

Le but est d'échanger les deux groupes : les $n$ crapauds à gauche, les $n$ grenouilles à droite, la case du milieu vide.

Pour $n = 3$, la position de départ est

$$G\,G\,G\;\square\;C\,C\,C$$

et la position d'arrivée est

$$C\,C\,C\;\square\;G\,G\,G .$$

Montrer que le but est toujours atteignable, et que **toute** solution utilise exactement $n^2 + 2n$ coups.

## Hints

1. Commence par jouer $n = 1$, puis $n = 2$, puis $n = 3$, et compte. Tu devrais trouver $3$, $8$ et $15$ coups.
2. Sépare les coups en deux sortes : les glissades et les sauts. Essaie de compter chaque sorte séparément.
3. Deux animaux ne changent jamais d'ordre lors d'une glissade. Quel est le seul coup qui échange l'ordre de deux animaux ? Et combien d'animaux à la fois cet échange concerne-t-il ?
4. Chaque grenouille doit finir à droite de chaque crapaud, alors qu'elle commence à gauche. Combien de couples (grenouille, crapaud) y a-t-il ?
5. Pour compter les glissades, regarde la distance totale parcourue. Deux grenouilles ne se dépassent jamais : de combien de cases chaque grenouille se déplace-t-elle en tout ? Une glissade fait avancer de $1$, un saut de $2$.

## Solution

Numérotons les cases de $1$ à $2n+1$ de gauche à droite. Au départ les grenouilles sont sur les cases $1$ à $n$ et les crapauds sur les cases $n+2$ à $2n+1$.

### Le nombre de coups est imposé

**Combien de sauts ?**

Une glissade déplace un animal vers une case vide : elle ne le fait donc passer par-dessus personne, et l'ordre de deux animaux quelconques sur la bande reste inchangé. Un saut, lui, fait passer un animal par-dessus exactement un animal de l'autre espèce : il inverse l'ordre d'exactement **un** couple formé d'une grenouille et d'un crapaud, et de personne d'autre.

Or au départ chaque grenouille est à gauche de chaque crapaud, et à l'arrivée chaque grenouille est à droite de chaque crapaud. Chacun des $n \times n = n^2$ couples (grenouille, crapaud) a donc changé d'ordre, et comme un couple ne peut pas changer d'ordre deux fois — une grenouille ne recule jamais, un crapaud non plus — chaque couple a changé d'ordre exactement une fois.

Il y a donc **exactement $n^2$ sauts**, dans n'importe quelle solution.

**Combien de glissades ?**

Deux grenouilles ne se dépassent jamais, puisqu'une grenouille ne saute que par-dessus un crapaud. Elles restent donc dans le même ordre du début à la fin. La grenouille la plus à gauche part de la case $1$ et arrive sur la case $n+2$, la suivante part de $2$ et arrive sur $n+3$, et ainsi de suite : **chaque grenouille avance de $n+1$ cases**. Au total, les grenouilles parcourent

$$n \times (n+1) \text{ cases.}$$

Par symétrie, les crapauds parcourent eux aussi $n(n+1)$ cases. La distance totale parcourue par tous les animaux vaut donc

$$2n(n+1) .$$

Or une glissade fait parcourir $1$ case et un saut en fait parcourir $2$. Si $g$ est le nombre de glissades et $s$ le nombre de sauts,

$$g + 2s = 2n(n+1) .$$

Comme $s = n^2$, il vient

$$g = 2n(n+1) - 2n^2 = 2n^2 + 2n - 2n^2 = 2n .$$

Il y a donc **exactement $2n$ glissades**.

**Total.** Toute solution comporte

$$s + g = n^2 + 2n \text{ coups,}$$

ni plus ni moins. Ce n'est pas seulement un minimum : c'est le nombre de coups de n'importe quelle solution.

### Une solution existe

Il reste à montrer qu'on arrive bien au but. Voici la méthode, écrite pour $n = 3$ ; on lit chaque ligne de gauche à droite, la case vide est notée $\square$ :

| Coup | Position |
|---|---|
| départ | $G\,G\,G\,\square\,C\,C\,C$ |
| $1$ | $G\,G\,\square\,G\,C\,C\,C$ |
| $2$ | $G\,G\,C\,G\,\square\,C\,C$ |
| $3$ | $G\,G\,C\,G\,C\,\square\,C$ |
| $4$ | $G\,G\,C\,\square\,C\,G\,C$ |
| $5$ | $G\,\square\,C\,G\,C\,G\,C$ |
| $6$ | $\square\,G\,C\,G\,C\,G\,C$ |
| $7$ | $C\,G\,\square\,G\,C\,G\,C$ |
| $8$ | $C\,G\,C\,G\,\square\,G\,C$ |
| $9$ | $C\,G\,C\,G\,C\,G\,\square$ |
| $10$ | $C\,G\,C\,G\,C\,\square\,G$ |
| $11$ | $C\,G\,C\,\square\,C\,G\,G$ |
| $12$ | $C\,\square\,C\,G\,C\,G\,G$ |
| $13$ | $C\,C\,\square\,G\,C\,G\,G$ |
| $14$ | $C\,C\,C\,G\,\square\,G\,G$ |
| $15$ | $C\,C\,C\,\square\,G\,G\,G$ |

Quinze coups, et $3^2 + 2 \times 3 = 15$ : le compte y est.

La régularité saute aux yeux si l'on regarde **qui** bouge. Les coups se regroupent en paquets, chaque paquet ne faisant bouger qu'une seule espèce, et les paquets alternent : ici une grenouille, puis deux crapauds, puis trois grenouilles, puis trois crapauds, puis trois grenouilles, puis deux crapauds, puis une grenouille, soit

$$1,\; 2,\; 3,\; 3,\; 3,\; 2,\; 1 .$$

Pour $n$ quelconque, on joue de la même façon les paquets

$$1,\; 2,\; \ldots,\; n-1,\; n,\; n,\; n,\; n-1,\; \ldots,\; 2,\; 1 ,$$

en alternant les espèces et en commençant par une grenouille. À l'intérieur d'un paquet, il n'y a d'ailleurs jamais de choix : c'est toujours l'animal de l'espèce voulue le plus proche de la case vide qui joue. Le total des coups vaut

$$2\left(1 + 2 + \cdots + (n-1)\right) + 3n = n(n-1) + 3n = n^2 + 2n ,$$

ce qui est bien le compte trouvé plus haut. Pour $n = 1$, il n'y a que le paquet du milieu : $1, 1, 1$, soit $3$ coups.

**Conclusion.** Le but est toujours atteignable, et toute solution utilise exactement $n^2 + 2n$ coups : $n^2$ sauts et $2n$ glissades.

## Going further

Le magazine pose en réalité une version bien plus difficile, sur un damier : sur un damier $(2n+1) \times (2n+1)$, les grenouilles occupent une moitié des cases, les crapauds l'autre moitié, la case centrale est vide ; les grenouilles se déplacent vers la droite ou vers le bas, les crapauds vers la gauche ou vers le haut, et les sauts se font dans ces mêmes directions.

Le comptage ci-dessus ne s'y transporte pas tel quel : sur un damier, une grenouille n'a plus un trajet imposé, et deux animaux peuvent s'éviter au lieu de se croiser. Le nombre minimal de coups pour le damier $5 \times 5$ n'est pas donné par le magazine, et il est déjà pénible à obtenir à la main.

Une question plus abordable : sur la bande, que devient le compte si l'on met $p$ grenouilles à gauche et $q$ crapauds à droite, avec $p \neq q$ ? Le même raisonnement donne $pq$ sauts, et pour les glissades il faut refaire le calcul des distances.
