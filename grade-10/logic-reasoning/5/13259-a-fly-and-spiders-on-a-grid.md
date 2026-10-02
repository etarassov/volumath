---
id: "13259"
title: "Une mouche et des araignées sur un quadrillage"
grade: 10
theme: logic-reasoning
difficulty: 5
duration_min: 60
tags: [jeu, strategie, poursuite, quadrillage, invariant]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2018"
  reference: "2018-10_coupe_automne_2018_sujet.pdf, énoncés lycée, exercice 7 ; corrigé 2018-10_coupe_automne_2018_corrige.pdf. Les stratégies ci-dessous suivent l'idée du corrigé (d'abord l'ombre de la mouche, puis la diagonale dans un plan) avec des règles et des comptages plus précis."
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/10/coupe_automne_2018_sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2018-10_coupe_automne_2018_sujet.pdf"
---

## Statement

Sur un quadrillage de $2018 \times 2018$ cases se promènent une mouche et $k$ araignées. À chaque tour, la mouche se déplace sur une case voisine (une case qui touche la sienne par un côté) ou reste sur place ; ensuite, chaque araignée se déplace sur une case voisine ou reste sur place. Les animaux voient toujours où sont les autres. La mouche est attrapée dès qu'elle se trouve sur la même case qu'une araignée.

1. Pour quelles valeurs de $k$ les araignées sont-elles sûres d'attraper la mouche, quelles que soient les cases de départ des $k + 1$ animaux ?
2. Même question si l'on remplace le quadrillage par un pavé de $2018 \times 2018 \times 2018$ petits cubes, deux cubes étant voisins lorsqu'ils ont une face en commun.

## Hints

1. Avec une seule araignée, montre que la mouche peut toujours s'échapper. Que fait la mouche quand l'araignée est juste à côté d'elle ?
2. Avec deux araignées dans le plan : l'une essaie de se placer dans la même colonne que la mouche, l'autre dans la même ligne.
3. Une fois l'araignée dans la colonne de la mouche, elle peut y rester tout en montant vers la mouche quand celle-ci ne change pas de colonne. Pourquoi la mouche finit-elle coincée ?
4. Dans l'espace, regarde l'« ombre » de la mouche, la case $(x, y)$ quand la mouche est en $(x, y, z)$. Une araignée peut attraper l'ombre. Qu'est-ce que cela empêche la mouche de faire ensuite ?
5. Si la mouche est obligée de bouger à chaque tour dans un plan, regarde les diagonales du quadrillage : un pas change à la fois le numéro de la diagonale montante et celui de la diagonale descendante.

## Solution

On repère les cases par leurs coordonnées : $(x, y)$ avec $1 \leqslant x, y \leqslant N$ dans le plan, et $(x, y, z)$ dans l'espace, où $N = 2018$. Un pas change une seule coordonnée de $1$. **La réponse est $k \geqslant 2$ dans les deux cas.**

### Une seule araignée ne suffit pas

Colorions les cases comme un échiquier. Deux cases voisines sont de couleurs différentes. Faisons partir la mouche et l'araignée de cases éloignées, et donnons à la mouche la règle suivante.

- Si l'araignée n'est pas sur une case voisine de la mouche, la mouche reste sur place. L'araignée fait au plus un pas, elle ne peut pas l'atteindre.
- Si l'araignée est sur une case voisine, la mouche va sur une autre de ses cases voisines (il y en a toujours au moins deux, même dans un coin). Cette nouvelle case est de la même couleur que celle de l'araignée et elle est différente, donc elle n'en est pas voisine : l'araignée, en un pas, ne peut pas l'atteindre.

Ainsi la mouche n'est jamais attrapée. Le même argument marche dans l'espace. Il faut donc $k \geqslant 2$ dans les deux cas. Réciproquement, si deux araignées suffisent, $k$ araignées suffisent pour tout $k \geqslant 2$ : les autres restent sur place. Il reste à montrer que deux araignées suffisent.

### Deux araignées dans le plan

Appelons-les Hervé et Valentine. Après chaque déplacement de la mouche :

- **Hervé** : s'il n'est pas dans la colonne de la mouche, il fait un pas horizontal vers cette colonne ; s'il y est, il fait un pas vertical vers la mouche.
- **Valentine** fait de même en échangeant lignes et colonnes : si elle n'est pas dans la ligne de la mouche, elle fait un pas vertical vers cette ligne ; sinon, un pas horizontal vers la mouche.

**Étape 1 : Hervé rejoint la colonne de la mouche.** Supposons Hervé à gauche de la mouche. La mouche change de colonne d'au plus $1$ par tour, donc elle ne peut pas passer à gauche d'Hervé sans d'abord entrer dans sa colonne. Tant qu'un tour ne se termine pas avec Hervé dans la colonne de la mouche, Hervé avance d'une colonne vers la droite. Comme il reste à gauche de la mouche, il ne peut pas avancer plus de $N - 1$ fois : au bout d'au plus $N - 1$ tours, un tour se termine avec Hervé dans la colonne de la mouche.

À partir de là, il y reste à la fin de chaque tour : si la mouche change de colonne, Hervé la suit par un pas horizontal ; sinon, il était déjà dans sa colonne et fait un pas vertical.

De même, au bout d'un nombre fini de tours, Valentine est dans la ligne de la mouche à la fin de chaque tour.

**Étape 2 : la mouche est coincée.** À partir de ce moment, Hervé est dans la colonne de la mouche, disons en dessous, et Valentine dans sa ligne, disons à sa gauche (les autres positions se traitent de la même façon). Regardons un tour.

- Si la mouche fait un pas vertical (vers le haut ou vers le bas) ou reste sur place, Hervé est encore dans sa colonne et fait un pas vers le haut, vers la mouche.
- Si la mouche fait un pas horizontal ou reste sur place, Valentine est encore dans sa ligne et fait un pas vers la droite, vers la mouche.

À chaque tour, au moins une des deux araignées se rapproche ainsi de la mouche : la somme « ordonnée d'Hervé $+$ abscisse de Valentine » augmente d'au moins $1$. Tant que la mouche n'est pas attrapée, Hervé reste en dessous d'elle (pour passer au-dessus, la mouche devrait marcher sur sa case) et Valentine reste à sa gauche, donc cette somme reste inférieure à $2N$. Elle ne peut pas augmenter indéfiniment : la mouche est attrapée.

### Deux araignées dans l'espace

Appelons **ombre** d'un animal en $(x, y, z)$ la case $(x, y)$ du plan.

**Étape 1 : une araignée attrape l'ombre.** Les deux araignées appliquent la stratégie du plan à leurs ombres, sans changer de hauteur $z$. Un pas de la mouche selon $z$ laisse son ombre sur place, donc l'ombre de la mouche se déplace comme une mouche du plan. D'après la partie précédente, au bout d'un nombre fini de tours, l'ombre d'une araignée arrive sur l'ombre de la mouche. Appelons cette araignée Hervé, et l'autre Valentine. (Si c'est la mouche qui amène son ombre sur celle d'Hervé, Hervé fait un pas selon $z$ vers elle.)

**Étape 2 : Hervé empêche la mouche de rester sur place ou de changer d'étage.** Désormais, après chaque déplacement de la mouche :

- si la mouche a fait un pas selon $x$ ou $y$, Hervé fait le même pas, et son ombre reste sur celle de la mouche ;
- si la mouche a fait un pas selon $z$ ou est restée sur place, les ombres sont toujours confondues et Hervé fait un pas selon $z$ vers la mouche.

Disons qu'Hervé est en dessous de la mouche. Il ne redescend jamais, et la mouche ne peut pas passer en dessous de lui sans tomber sur sa case. Chaque fois que la mouche change d'étage ou reste sur place, Hervé monte d'un étage, ce qui ne peut arriver qu'au plus $N - 1$ fois. Donc, après un certain tour, la mouche ne change plus jamais d'étage et ne reste plus jamais sur place : elle se promène dans un plan fixe, l'étage $z_0$, et elle **doit bouger à chaque tour**.

**Étape 3 : Valentine dans l'étage de la mouche.** La règle de Valentine est la suivante : si elle n'est pas au même étage que la mouche, elle fait un pas selon $z$ vers elle ; sinon elle applique la règle des diagonales décrite ci-dessous. Une fois que la mouche reste à l'étage $z_0$, Valentine y arrive en au plus $N - 1$ tours et n'en bouge plus. Il reste à voir qu'une araignée attrape, dans un plan, une mouche obligée de bouger à chaque tour.

**Les diagonales.** Pour une case $(x, y)$, posons $u = x + y$ et $w = x - y$. Un pas de la mouche ou de l'araignée change $u$ de $1$ et $w$ de $1$ (par exemple, un pas vers la droite ajoute $1$ aux deux, un pas vers le haut ajoute $1$ à $u$ et retire $1$ à $w$). Les quatre pas donnent les quatre combinaisons de signes. Notons, après chaque déplacement,

$$a = u_{\text{araignée}} - u_{\text{mouche}}, \qquad b = w_{\text{araignée}} - w_{\text{mouche}}.$$

L'araignée est sur la mouche exactement quand $a = b = 0$. Les nombres $a$ et $b$ ont toujours la même parité, puisque $a + b$ est le double de la différence des abscisses.

**Règle de Valentine dans le plan**, après le pas de la mouche : si $b = 0$, elle reste sur place ; sinon, elle fait le pas qui rapproche $b$ de $0$ et qui rapproche aussi $a$ de $0$ quand $a$ n'est pas nul (quand $a = 0$, elle prend l'un des deux pas qui rapprochent $b$ de $0$). Ce pas reste dans le quadrillage. Par exemple, si $a < 0$ et $b < 0$, le pas qui augmente $u$ et $w$ est un pas vers la droite ; or $a + b < 0$ signifie que Valentine est strictement à gauche de la mouche, donc ce pas est possible. Les autres cas sont pareils.

*Phase A : on amène $b$ à $0$.* Disons $b > 0$. La mouche change $b$ de $1$. Si $b$ devient nul, Valentine reste et le tour se termine avec $b = 0$. Sinon $b$ est encore positif et Valentine diminue son propre $w$ de $1$. Ainsi, tant qu'un tour ne se termine pas avec $b = 0$, le nombre $w$ de Valentine diminue de $1$ ; comme il reste plus grand que celui de la mouche, qui est au moins $1 - N$, cela ne peut pas durer. Ensuite, $b = 0$ à la fin de chaque tour : la mouche bouge et met $b$ à $\pm 1$, et Valentine le ramène à $0$.

*Phase B : on amène $a$ à $0$.* À la fin de chaque tour $b = 0$, donc $a$ est pair. Si $a = 0$, la mouche est attrapée. Disons $a > 0$, donc $a \geqslant 2$. La mouche, qui doit bouger, change $a$ de $1$ : il devient impair, donc non nul et toujours positif. Valentine diminue alors son $u$ de $1$. À la fin du tour, $a$ a diminué de $2$ ou n'a pas changé ; il reste positif ou nul. Le nombre $u$ de Valentine diminue de $1$ à chaque tour, et il reste au moins égal à celui de la mouche, qui vaut au moins $2$. Cela ne peut pas durer indéfiniment, donc un tour se termine avec $a = 0$ et $b = 0$ : Valentine est sur la mouche.

**Conclusion.** Dans le plan comme dans l'espace, les araignées sont sûres d'attraper la mouche exactement quand $k \geqslant 2$.

## Going further

Dans l'espace, pourquoi Valentine a-t-elle besoin que la mouche bouge à chaque tour ? Montre que, dans un plan, une araignée seule ne peut pas attraper une mouche qui a le droit de rester sur place : c'est exactement l'argument de la première partie.
