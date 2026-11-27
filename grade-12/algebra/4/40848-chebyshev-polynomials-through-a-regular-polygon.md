---
id: "40848"
title: "Les polynômes de Tchebychev passent par les sommets d'un polygone régulier"
grade: 12
theme: algebra
difficulty: 4
duration_min: 60
tags: [polygone-regulier, polynome, trigonometrie, formules-d-addition, recurrence, cosinus, degre, repere]
adapted_from: null
see_also: ["40845", "40846", "40847"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2023, mathématiques"
  reference: "cg-2023-s-sujet.pdf, exercice 3 « Polynômes et polygones réguliers », préambule et partie D « Où l'on prouve que tout entier d ≥ k − 1 convient », questions 7 et 8. La description des sommets par des angles est admise dans l'énoncé."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2023-s-sujet.pdf"
---

## Statement

Le plan est muni d'un repère orthonormé $\mathcal{R} = (O ; \vec{\imath}, \vec{\jmath})$. Soit $k \geqslant 3$ un entier. Des points $M_1, M_2, \ldots, M_k$ sont les sommets d'un *polygone régulier de centre $O$* s'ils sont deux à deux distincts, s'ils apparaissent dans cet ordre dans le sens trigonométrique sur un même cercle de centre $O$, et si $M_1M_2 = M_2M_3 = \cdots = M_kM_1$. On admet que c'est le cas si et seulement s'il existe des réels $R > 0$ et $\theta$ tels que, pour $j = 1, \ldots, k$,

$$M_j\left(R\cos\left(\theta + \frac{2(j-1)\pi}{k}\right),\ R\sin\left(\theta + \frac{2(j-1)\pi}{k}\right)\right).$$

Une fonction $P$ est un *polynôme de degré $d$* s'il existe des réels $a_0, \ldots, a_d$, avec $a_d \neq 0$, tels que $P(x) = a_d x^d + \cdots + a_1 x + a_0$ pour tout réel $x$.

Soit $M_1 M_2 \cdots M_k$ un polygone régulier de centre $O$, dont les sommets ont des abscisses deux à deux distinctes. On veut démontrer que, pour tout entier $d \geqslant k - 1$, il existe un polynôme de degré $d$ dont la courbe représentative contient les points $M_1, \ldots, M_k$.

1. Soit $a$ et $b$ deux réels. On considère les points
$$A(\cos a, \sin a), \qquad B(\cos(a + b), \sin(a + b)), \qquad C(-\sin a, \cos a).$$

   a) Démontrer que le repère $\mathcal{R}' = (O ; \overrightarrow{OA}, \overrightarrow{OC})$ est orthonormé.

   b) Quelles sont les coordonnées du point $B$ dans le repère $\mathcal{R}'$ ?

   c) En déduire que $\cos(a + b) = \cos a \cos b - \sin a \sin b$ et que $\cos(a - b) = \cos a \cos b + \sin a \sin b$.

2. On considère la suite de polynômes définie par $T_0(x) = 1$, $T_1(x) = x$ et, pour tout entier $n \geqslant 0$,
$$T_{n+2}(x) = 2x\,T_{n+1}(x) - T_n(x).$$

   a) Démontrer que $T_n(\cos t) = \cos(nt)$ pour tout entier $n \geqslant 0$ et tout réel $t$.

   b) Soit $t$ un réel, et soit $\ell \geqslant 1$ et $j \geqslant 0$ deux entiers. On pose $\varphi = t + \frac{2j\pi}{\ell}$. Démontrer que
$$T_{\ell-1}(\cos \varphi) - \cos(\ell t)\cos \varphi = \sin(\ell t)\sin \varphi.$$

   c) Démontrer que, pour tout entier $d \geqslant k - 1$, il existe un polynôme de degré $d$ dont la courbe contient les points $M_1, \ldots, M_k$.

## Hints

1. **Question 1 b).** Le repère $\mathcal{R}'$ est le repère $\mathcal{R}$ tourné de l'angle $a$ autour de $O$. Par rapport à l'axe dirigé par $\overrightarrow{OA}$, de quel angle a-t-on tourné pour atteindre $B$ ?
2. **Question 1 c).** Écrire $\overrightarrow{OB}$ à l'aide de $\overrightarrow{OA}$ et $\overrightarrow{OC}$, puis passer aux coordonnées dans $\mathcal{R}$.
3. **Question 2 a).** Récurrence « à deux pas » : supposer la formule vraie aux rangs $n$ et $n + 1$. Additionner les formules de 1 c) avec $a = (n+1)t$ et $b = t$.
4. **Question 2 b).** Que valent $\cos(\ell\varphi)$ et $\sin(\ell\varphi)$ ? Écrire $(\ell - 1)\varphi = \ell\varphi - \varphi$.
5. **Question 2 c).** Appliquer 2 b) avec $\ell = k$ : on obtient une relation entre $\cos$ et $\sin$ des angles des sommets. Pour diviser par $\sin(k\theta)$, il faut montrer qu'il n'est pas nul : que se passerait-il sinon pour les abscisses ?
6. **Question 2 c).** Pour passer du degré $k - 1$ à un degré $d \geqslant k$, ajouter un polynôme de degré $d$ qui s'annule en toutes les abscisses des sommets.

## Solution

**1. a)** $OA^2 = \cos^2 a + \sin^2 a = 1$, $OC^2 = \sin^2 a + \cos^2 a = 1$, et $\overrightarrow{OA} \cdot \overrightarrow{OC} = -\cos a \sin a + \sin a \cos a = 0$. Les deux vecteurs sont unitaires et orthogonaux : $\mathcal{R}'$ est orthonormé. De plus, $C$ est l'image de $A$ par le quart de tour direct de centre $O$ (l'angle de $C$ est $a + \frac{\pi}{2}$, car $\cos(a + \frac{\pi}{2}) = -\sin a$ et $\sin(a + \frac{\pi}{2}) = \cos a$) : le repère $\mathcal{R}'$ est le repère $\mathcal{R}$ tourné de l'angle $a$ autour de $O$.

**b)** Le point $B$ est sur le cercle de centre $O$ et de rayon $1$, à l'angle $a + b$ compté à partir de $\vec{\imath}$. Comme les axes de $\mathcal{R}'$ sont ceux de $\mathcal{R}$ tournés de $a$, l'angle de $B$ compté à partir de $\overrightarrow{OA}$ est $b$. Ses coordonnées dans $\mathcal{R}'$ sont donc $(\cos b, \sin b)$.

Cette étape est un argument de figure, pas un calcul : on accepte qu'en faisant tourner toute la figure d'un angle $a$ autour de $O$, les angles mesurés à partir du premier axe tournent avec elle. Le sujet attendait exactement cet argument. Le justifier par un calcul demanderait la formule que l'on cherche à démontrer.

**c)** D'après b), $\overrightarrow{OB} = \cos b\,\overrightarrow{OA} + \sin b\,\overrightarrow{OC}$. En coordonnées dans $\mathcal{R}$ :
$$\begin{pmatrix} \cos(a+b) \\ \sin(a+b) \end{pmatrix} = \cos b \begin{pmatrix} \cos a \\ \sin a \end{pmatrix} + \sin b \begin{pmatrix} -\sin a \\ \cos a \end{pmatrix}.$$
La première ligne donne $\cos(a + b) = \cos a \cos b - \sin a \sin b$. En remplaçant $b$ par $-b$, et puisque $\cos(-b) = \cos b$ et $\sin(-b) = -\sin b$, on obtient $\cos(a - b) = \cos a \cos b + \sin a \sin b$.

**2. a)** On fixe $t$ et on démontre par récurrence que, pour tout $n \geqslant 0$, la propriété « $T_n(\cos t) = \cos(nt)$ et $T_{n+1}(\cos t) = \cos((n+1)t)$ » est vraie.

*Initialisation.* $T_0(\cos t) = 1 = \cos 0$ et $T_1(\cos t) = \cos t$.

*Hérédité.* Supposons la propriété vraie au rang $n$. Avec $a = (n+1)t$ et $b = t$, la question 1 c) donne
$$\cos((n+2)t) = \cos((n+1)t)\cos t - \sin((n+1)t)\sin t,$$
$$\cos(nt) = \cos((n+1)t)\cos t + \sin((n+1)t)\sin t.$$
En additionnant, $\cos((n+2)t) + \cos(nt) = 2\cos t\,\cos((n+1)t)$. Donc
$$\cos((n+2)t) = 2\cos t\;T_{n+1}(\cos t) - T_n(\cos t) = T_{n+2}(\cos t).$$
La propriété est vraie au rang $n + 1$. Ainsi $T_n(\cos t) = \cos(nt)$ pour tout $n \geqslant 0$.

**b)** On a $\ell\varphi = \ell t + 2j\pi$, donc $\cos(\ell\varphi) = \cos(\ell t)$ et $\sin(\ell\varphi) = \sin(\ell t)$. D'après a) puis 1 c) (avec $a = \ell\varphi$ et $b = \varphi$),
$$T_{\ell-1}(\cos\varphi) = \cos(\ell\varphi - \varphi) = \cos(\ell\varphi)\cos\varphi + \sin(\ell\varphi)\sin\varphi = \cos(\ell t)\cos\varphi + \sin(\ell t)\sin\varphi.$$
C'est l'égalité demandée.

**c)** *Le degré de $T_n$.* Pour $n \geqslant 1$, $T_n$ est de degré $n$ et de coefficient dominant $2^{n-1}$. C'est vrai pour $n = 1$ et $n = 2$ ($T_2(x) = 2x^2 - 1$), et si c'est vrai pour $n$ et $n + 1$, alors dans $2x\,T_{n+1}(x) - T_n(x)$, le terme $2x\,T_{n+1}(x)$ est de degré $n + 2$ et de coefficient dominant $2 \times 2^n = 2^{n+1}$, tandis que $T_n$ est de degré plus petit.

*Les angles des sommets.* Notons $\varphi_j = \theta + \frac{2(j-1)\pi}{k}$, de sorte que $M_j(R\cos\varphi_j, R\sin\varphi_j)$.

*$\sin(k\theta)$ n'est pas nul.* Supposons $\sin(k\theta) = 0$, c'est-à-dire $\theta = \frac{s\pi}{k}$ pour un entier $s$. Alors chaque angle $\varphi_j$ est de la forme $\frac{(s + 2m)\pi}{k}$ avec $m$ entier, et l'ensemble des sommets est symétrique par rapport à l'axe des abscisses : le symétrique du point d'angle $\frac{(s+2m)\pi}{k}$ est le point d'angle $-\frac{(s+2m)\pi}{k} = \frac{(s + 2(k - s - m))\pi}{k} - 2\pi$, qui est encore un sommet (c'est le sommet $M_{j'}$ avec $j' - 1$ égal au reste de $k - s - m$ dans la division par $k$). Le cercle ne coupe l'axe des abscisses qu'en deux points et $k \geqslant 3$, donc un sommet a une ordonnée non nulle ; son symétrique est un autre sommet qui a la même abscisse. Cela contredit l'hypothèse. Donc $\sin(k\theta) \neq 0$.

*Un polynôme de degré $k - 1$.* La question 2 b), avec $t = \theta$, $\ell = k$ et $j - 1$ à la place de $j$, donne pour chaque sommet
$$T_{k-1}(\cos\varphi_j) - \cos(k\theta)\cos\varphi_j = \sin(k\theta)\sin\varphi_j.$$
Posons
$$P(x) = \frac{R}{\sin(k\theta)}\left(T_{k-1}\left(\frac{x}{R}\right) - \cos(k\theta)\,\frac{x}{R}\right).$$
Alors $P(R\cos\varphi_j) = \frac{R}{\sin(k\theta)} \times \sin(k\theta)\sin\varphi_j = R\sin\varphi_j$ : la courbe de $P$ passe par tous les sommets. Comme $k - 1 \geqslant 2$, le terme de plus haut degré de $P$ vient de $T_{k-1}$ : c'est $\frac{R}{\sin(k\theta)} \times \frac{2^{k-2}}{R^{k-1}}\,x^{k-1}$, de coefficient non nul. Donc $P$ est de degré $k - 1$.

*Tout degré $d \geqslant k$.* Notons $x_1, \ldots, x_k$ les abscisses des sommets et posons
$$P_d(x) = P(x) + x^{d-k}(x - x_1)(x - x_2)\cdots(x - x_k).$$
Le second terme est de degré $d$ et de coefficient dominant $1$, et $P$ est de degré $k - 1 < d$, donc $P_d$ est de degré $d$. Le second terme s'annule en chaque $x_j$, donc $P_d(x_j) = P(x_j)$ et la courbe de $P_d$ passe aussi par tous les sommets.

Ainsi, pour tout $d \geqslant k - 1$, il existe un polynôme de degré $d$ dont la courbe contient $M_1, \ldots, M_k$.

**Bilan.** On a démontré la formule d'addition du cosinus, puis la propriété $T_n(\cos t) = \cos(nt)$ des polynômes de Tchebychev. Avec $T_{k-1}$, on a construit un polynôme de degré $k - 1$ dont la courbe passe par les $k$ sommets d'un polygone régulier de centre $O$ dont les abscisses sont distinctes, puis un polynôme de chaque degré $d \geqslant k - 1$.

## Going further

- Avec l'exercice 40847, qui montre qu'un tel polynôme est toujours de degré au moins $k - 1$, on obtient : le plus petit degré possible est exactement $k - 1$.
- Pour le triangle équilatéral de l'exercice 40845, avec $A(1, \frac{\sqrt{3}}{3})$, on a $R = \frac{2}{\sqrt{3}}$. Calculer le polynôme $P$ de la question 2 c) et vérifier qu'on retrouve $Q(x) = \frac{\sqrt{3}}{3}(3x^2 - 2)$.
