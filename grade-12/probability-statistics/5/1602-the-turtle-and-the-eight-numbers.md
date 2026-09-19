---
id: "1602"
title: "La tortue et les huit nombres du cercle"
grade: 12
theme: probability-statistics
difficulty: 5
duration_min: 45
tags: [probabilites, marche-aleatoire, suites, symetrie, ruine-du-joueur]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2A, Group Competition"
  reference: "Handout-2698-2323.pdf, problème 12 (réponse dans Handout-2710-2323.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2698-2323.pdf"
---

## Statement

Les nombres $0, 1, 2, \ldots, 7$ sont écrits dans cet ordre sur un cercle, comme les heures
d'une horloge à huit chiffres. Une tortue part du nombre $0$. À chaque étape, elle se déplace
sur l'un des deux nombres voisins de celui où elle se trouve, chacun avec la probabilité
$\dfrac12$, indépendamment de tout ce qui a précédé.

Au bout d'un certain temps, la tortue a fini par passer sur les huit nombres. Pour chaque
$i$, on note $p_i$ la probabilité que $i$ soit **le dernier** des huit nombres visités.

Par exemple $p_0 = 0$, puisque $0$ est visité en premier.

Calculer $p_1, p_2, \ldots, p_7$.

## Hints

1. Avant de calculer quoi que ce soit, devine le résultat. Le nombre $4$, à l'opposé du départ, a-t-il vraiment plus de chances que le nombre $1$ d'être visité en dernier ?
2. Voici l'outil dont tu auras besoin. Sur une ligne de cases $0, 1, \ldots, N$, un promeneur part de la case $k$ et avance ou recule d'une case à chaque étape, avec la probabilité $\frac12$ à chaque fois. Il s'arrête en arrivant en $0$ ou en $N$. Note $u_k$ la probabilité qu'il s'arrête en $N$. Écris une relation entre $u_{k-1}$, $u_k$ et $u_{k+1}$.
3. Cette relation dit que $u_{k+1} - u_k = u_k - u_{k-1}$ : la suite $(u_k)$ est arithmétique. Avec $u_0 = 0$ et $u_N = 1$, tu obtiens $u_k = \dfrac{k}{N}$.
4. Fixe maintenant un nombre $i \ne 0$ et regarde le premier instant où la tortue arrive sur l'un des deux voisins de $i$. Pour que $i$ soit visité en dernier, que doit faire la tortue à partir de cet instant ?
5. Elle doit rejoindre l'autre voisin de $i$ sans passer par $i$, donc faire tout le tour. Coupe le cercle en $i$ : tu retrouves exactement la promenade sur une ligne de la question 2.

## Solution

**L'idée : une fois la tortue arrivée à côté de $i$, la question « $i$ sera-t-il le dernier ? »
devient toujours la même question, quel que soit $i$. Les sept probabilités sont donc égales.**

**Étape 1. La promenade sur une ligne (la « ruine du joueur »).**

Considérons d'abord une promenade aléatoire sur les cases $0, 1, 2, \ldots, N$ d'une ligne.
Le promeneur part de la case $k$ (avec $0 \le k \le N$) et, à chaque étape, va d'une case vers
la droite ou d'une case vers la gauche, chacune avec la probabilité $\frac12$. Il s'arrête
dès qu'il atteint $0$ ou $N$. (On admet qu'il s'arrête, avec la probabilité $1$.)

Notons $u_k$ la probabilité qu'il finisse en $N$ en étant parti de $k$. On a évidemment
$u_0 = 0$ et $u_N = 1$. Pour $1 \le k \le N-1$, en distinguant selon le premier pas :
$$u_k = \frac12\, u_{k-1} + \frac12\, u_{k+1} .$$

En multipliant par $2$ et en réarrangeant :
$$u_{k+1} - u_k = u_k - u_{k-1} .$$

Les écarts successifs de la suite $(u_k)$ sont donc tous égaux : la suite $(u_k)_{0 \le k \le N}$
est **arithmétique**. Comme $u_0 = 0$, elle s'écrit $u_k = k\,r$, et comme $u_N = 1$ on a
$r = \frac1N$. Finalement
$$\boxed{u_k = \frac{k}{N}} .$$

**Étape 2. Traduire « $i$ est visité en dernier ».**

Fixons $i \in \{1, \ldots, 7\}$ et notons $j$ et $\ell$ ses deux voisins sur le cercle.

Pour atteindre $i$, la tortue doit d'abord passer par $j$ ou par $\ell$ : partie de $0 \ne i$,
elle ne peut entrer en $i$ que depuis un voisin. Appelons $T$ le premier instant où elle se
trouve en $j$ ou en $\ell$. Quitte à échanger les noms, supposons qu'à l'instant $T$ elle est
en $j$. À cet instant, ni $i$ ni $\ell$ n'ont encore été visités.

*Affirmation :* $i$ est le dernier nombre visité **si et seulement si**, à partir de
l'instant $T$, la tortue atteint $\ell$ avant $i$.

- Si elle atteint $\ell$ avant $i$ : pour aller de $j$ à $\ell$ sans passer par $i$, elle doit
  faire le tour du cercle par l'autre côté, donc passer par **tous** les nombres sauf $i$.
  Comme elle finit par visiter $i$ aussi, $i$ est bien le dernier.
- Réciproquement, si $i$ est le dernier visité, alors $\ell$ est visité avant $i$, et comme
  $\ell$ n'a pas été visité avant $T$, la tortue atteint bien $\ell$ après $T$ et avant $i$.

**Étape 3. Couper le cercle en $i$.**

Repartons de l'instant $T$ et suivons la tortue tant qu'elle ne touche pas $i$. Déroulons le
cercle en le coupant au nombre $i$ : on obtient une ligne de neuf positions
$$\underbrace{i}_{0} \; - \; \underbrace{j}_{1} \; - \; \underbrace{\ \ }_{2} \; - \; \cdots \; - \; \underbrace{\ \ }_{6} \; - \; \underbrace{\ell}_{7} \; - \; \underbrace{i}_{8},$$
où le nombre $i$ apparaît aux deux extrémités (positions $0$ et $8$), et où les positions $1$
à $7$ sont les sept autres nombres du cercle rangés dans l'ordre, en partant de $j$.

Tant que la tortue ne touche pas $i$, ses déplacements sur le cercle sont exactement ceux
d'un promeneur sur cette ligne : un pas à droite ou un pas à gauche, avec la probabilité
$\frac12$ chacun. Elle part de la position $1$, et « toucher $i$ » signifie « atteindre la
position $0$ ou la position $8$ ».

Or, pour atteindre la position $8$ en partant de la position $1$, il faut d'abord passer par
la position $7$. Donc atteindre $\ell$ (position $7$) avant $i$ revient simplement à
atteindre la position $7$ avant la position $0$. C'est exactement la situation de l'étape 1
avec $N = 7$ et $k = 1$ :
$$P(\text{atteindre } \ell \text{ avant } i) = u_1 = \frac{1}{7} .$$

Le raisonnement est identique si, à l'instant $T$, la tortue se trouve en $\ell$ plutôt qu'en
$j$ : on obtient encore $\frac17$. Donc, dans tous les cas,
$$p_i = \frac17 .$$

**Conclusion.**

$$p_0 = 0 \qquad\text{et}\qquad p_1 = p_2 = \cdots = p_7 = \frac17 .$$

Le nombre $4$, diamétralement opposé au départ, n'a pas plus de chances d'être visité en
dernier que le voisin immédiat $1$. On peut vérifier la cohérence du résultat : la somme des
huit probabilités vaut $7 \times \frac17 = 1$, comme il se doit, puisqu'il y a forcément un
dernier nombre visité.

## Going further

On peut simuler la promenade sur ordinateur : sur $80\,000$ tirages, chacune des sept
fréquences observées est proche de $\text{0,143}$, c'est-à-dire de $\frac17 \approx \text{0,1429}$.

Rien dans la démonstration n'utilise le nombre $8$ : sur un cercle de $n$ nombres, chacun des
$n-1$ nombres autres que le départ a la probabilité $\dfrac{1}{n-1}$ d'être visité en dernier.
