---
id: "1410"
title: "La fourmi perdue sur les arêtes du cube"
grade: 12
theme: probability-statistics
difficulty: 5
duration_min: 45
tags: [probabilites-totales, marche-aleatoire, symetrie, systeme-lineaire]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 1, Electrical Circuits and Random Walks"
  reference: "Handout-3918-3551.pdf, problème 3 (réponse dans Handout-3919-3551.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3918-3551.pdf"
---

## Statement

Une fourmi se promène sur les sommets d'un cube en suivant les arêtes. À chaque minute, elle choisit au hasard l'une des **trois** arêtes qui partent du sommet où elle se trouve, chacune avec la probabilité $\tfrac13$, et elle la parcourt. Les choix successifs sont indépendants.

Deux sommets **diagonalement opposés** du cube sont marqués : le sommet $M$ est la fourmilière, le sommet $T$ est un trou. Dès que la fourmi arrive en $M$ ou en $T$, elle s'arrête.

On admet que la fourmi finit par atteindre $M$ ou $T$ avec une probabilité égale à $1$.

1. Question d'échauffement. On remplace le cube par un carré, $M$ et $T$ étant deux sommets opposés du carré. La fourmi part de l'un des deux autres sommets. Quelle est la probabilité qu'elle finisse à la fourmilière ?
2. Sur le cube, la fourmi part d'un sommet **voisin de $M$**. Quelle est la probabilité qu'elle finisse à la fourmilière ?
3. Et si elle part d'un sommet voisin de $T$ ?

## Hints

1. Pour chaque sommet $x$, noter $p(x)$ la probabilité de finir en $M$ en partant de $x$. Que valent $p(M)$ et $p(T)$ ?
2. La fourmi fait un premier pas. Utiliser la formule des probabilités totales en distinguant selon le sommet où elle arrive après ce premier pas : $p(x)$ est la moyenne des $p$ de ses voisins.
3. Sur le cube, les sommets se rangent en quatre familles selon leur distance à $M$ : $M$ lui-même, les $3$ voisins de $M$, les $3$ voisins de $T$, puis $T$. Quels sont les voisins d'un sommet de la deuxième famille ?
4. Les sommets d'une même famille jouent exactement le même rôle : leur probabilité est la même. On n'a donc que deux inconnues.
5. Écrire les deux équations et résoudre le système.

## Solution

Pour chaque sommet $x$, notons $p(x)$ la probabilité que la fourmi finisse à la fourmilière sachant qu'elle est partie de $x$. On a évidemment

$$p(M) = 1 \qquad \text{et} \qquad p(T) = 0 .$$

**L'outil : un pas, puis la formule des probabilités totales.**

Partons d'un sommet $x$ différent de $M$ et de $T$, de voisins $y_1, y_2, y_3$. Le premier pas mène en $y_1$, $y_2$ ou $y_3$, chacun avec probabilité $\tfrac13$, et ces trois événements forment une partition. Après ce pas, tout se passe comme si la promenade recommençait depuis le sommet atteint. Donc

$$p(x) = \frac13\,p(y_1) + \frac13\,p(y_2) + \frac13\,p(y_3) .$$

Autrement dit : **la probabilité en un sommet est la moyenne des probabilités de ses voisins.**

**1. Le carré.**

Notons $M$, $u$, $T$, $v$ les quatre sommets du carré dans l'ordre, de sorte que $M$ et $T$ soient opposés. Les deux voisins de $u$ sont $M$ et $T$, donc

$$p(u) = \frac12\,p(M) + \frac12\,p(T) = \frac12 \times 1 + \frac12 \times 0 = \frac12 .$$

De même $p(v) = \frac12$. Sur le carré, la fourmi a **une chance sur deux** de rentrer.

**2. et 3. Le cube.**

Rangeons les huit sommets selon leur distance à $M$ le long des arêtes :

- distance $0$ : le sommet $M$ ;
- distance $1$ : les $3$ voisins de $M$, que nous appellerons **sommets proches** ;
- distance $2$ : les $3$ voisins de $T$, que nous appellerons **sommets lointains** ;
- distance $3$ : le sommet $T$, qui est bien le sommet diagonalement opposé à $M$.

Repérons les voisins de chaque type. Plaçons le cube avec $M = (0,0,0)$ et $T = (1,1,1)$, les sommets étant les triplets de $0$ et de $1$, deux sommets étant voisins lorsqu'ils diffèrent d'une seule coordonnée.

- Un sommet proche, par exemple $(1,0,0)$, a pour voisins $(0,0,0) = M$, puis $(1,1,0)$ et $(1,0,1)$, qui sont deux sommets lointains. **Un sommet proche a donc pour voisins : $M$ et deux sommets lointains.**
- Un sommet lointain, par exemple $(1,1,0)$, a pour voisins $(1,1,1) = T$, puis $(0,1,0)$ et $(1,0,0)$, qui sont deux sommets proches. **Un sommet lointain a donc pour voisins : $T$ et deux sommets proches.**

Les trois sommets proches jouent exactement le même rôle les uns que les autres (on passe de l'un à l'autre en faisant tourner le cube autour de la diagonale $MT$, ce qui échange les coordonnées sans déplacer ni $M$ ni $T$). Leur probabilité est donc la même ; notons-la $a$. De même, les trois sommets lointains ont tous la même probabilité, notée $b$.

La règle de la moyenne donne alors deux équations :

$$a = \frac13 \times \underbrace{1}_{p(M)} + \frac13\,b + \frac13\,b = \frac13 + \frac{2b}{3},$$

$$b = \frac13 \times \underbrace{0}_{p(T)} + \frac13\,a + \frac13\,a = \frac{2a}{3}.$$

On remplace $b$ par $\tfrac{2a}{3}$ dans la première équation :

$$a = \frac13 + \frac23 \times \frac{2a}{3} = \frac13 + \frac{4a}{9}.$$

Donc $9a = 3 + 4a$, puis $5a = 3$ et

$$a = \frac35, \qquad b = \frac23 \times \frac35 = \frac25 .$$

**Conclusion.** En partant d'un sommet voisin de la fourmilière, la fourmi rentre avec la probabilité $\boxed{\dfrac35}$. En partant d'un sommet voisin du trou, elle rentre avec la probabilité $\dfrac25$.

**Un contrôle.** On s'attendait à $a + b = 1$ : échanger les rôles de $M$ et de $T$ transforme un sommet proche en un sommet lointain, et l'événement « finir en $M$ » en l'événement contraire. C'est bien le cas, $\tfrac35 + \tfrac25 = 1$. On s'attendait aussi à $a > \tfrac12 > b$, ce qui est également vérifié.

## Going further

1. Reprendre le calcul sur un tétraèdre régulier, $M$ et $T$ étant deux sommets quelconques : quelle est la probabilité de rentrer en partant de l'un des deux autres sommets ?
2. Sur le cube, la fourmi part cette fois de $M$ et doit faire au moins un pas avant que la règle d'arrêt s'applique. Quelle est la probabilité qu'elle revienne en $M$ plutôt que de tomber dans le trou ?
3. Montrer que, sur le cube, la fourmi finit bien par s'arrêter : majorer la probabilité qu'elle soit encore en promenade au bout de $3k$ minutes.
