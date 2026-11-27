---
id: "40847"
title: "Un polygone régulier à k sommets exige un degré au moins k − 1"
grade: 12
theme: geometry
difficulty: 4
duration_min: 60
tags: [polygone-regulier, polynome, trigonometrie, cercle-unite, valeurs-intermediaires, changement-de-signe, racines, degre]
adapted_from: null
see_also: ["40845", "40846", "40848"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2023, mathématiques"
  reference: "cg-2023-s-sujet.pdf, exercice 3 « Polynômes et polygones réguliers », préambule et partie C « Où l'on prouve que d ≥ k − 1 », question 6 (a à f). La description des sommets par des angles est admise dans l'énoncé."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2023-s-sujet.pdf"
---

## Statement

Le plan est muni d'un repère orthonormé d'origine $O$. Soit $k \geqslant 3$ un entier. Des points $M_1, M_2, \ldots, M_k$ sont les sommets d'un *polygone régulier de centre $O$* s'ils sont deux à deux distincts, s'ils apparaissent dans cet ordre dans le sens trigonométrique (sens inverse des aiguilles d'une montre) sur un même cercle de centre $O$, et si $M_1M_2 = M_2M_3 = \cdots = M_{k-1}M_k = M_kM_1$.

On admet la description suivante : des points $M_1, \ldots, M_k$ sont les sommets d'un polygone régulier de centre $O$ si et seulement s'il existe des réels $R > 0$ et $t$ tels que, pour $j = 1, \ldots, k$,

$$M_j(R\cos(\varphi_j),\ R\sin(\varphi_j)) \qquad \text{avec} \qquad \varphi_j = t + \frac{2(j-1)\pi}{k}.$$

Autrement dit, on passe de chaque sommet au suivant en tournant de $\frac{2\pi}{k}$ autour de $O$.

Une fonction $P$ est un *polynôme de degré $d$* s'il existe des réels $a_0, \ldots, a_d$, avec $a_d \neq 0$, tels que $P(x) = a_d x^d + \cdots + a_1 x + a_0$ pour tout réel $x$. On admet que, pour un tel polynôme, l'équation $P(x) = 0$ a au plus $d$ solutions réelles.

Soit $M_1 M_2 \cdots M_k$ un polygone régulier de centre $O$. On suppose qu'il existe un polynôme $P$ de degré $d$ dont la courbe représentative contient les points $M_1, \ldots, M_k$. Le but est de démontrer que $d \geqslant k - 1$. On note $(x_i, y_i)$ les coordonnées de $M_i$.

1. Pourquoi peut-on supposer que $x_1 \leqslant x_i$ pour tout $i$, et que $y_1 \leqslant 0$ ?
2. Démontrer que les abscisses $x_i$ sont deux à deux distinctes et que les ordonnées $y_i$ sont non nulles.
3. Démontrer qu'il existe un réel $\theta$ de l'intervalle $]0, \frac{\pi}{k}[$ tel que $x_1 = -R\cos(\theta)$ et $y_1 = -R\sin(\theta)$.
4. Démontrer que $x_1 < x_k < x_2 < x_{k-1} < x_3 < x_{k-2} < \cdots$ (on range les sommets en prenant alternativement le premier et le dernier de ceux qui restent).
5. Démontrer que $P$ s'annule sur chacun des $k - 1$ intervalles $]x_1, x_k[$, $]x_k, x_2[$, $]x_2, x_{k-1}[$, $]x_{k-1}, x_3[$, $\ldots$
6. En conclure que $d \geqslant k - 1$.

## Hints

1. **Question 1.** On peut changer la numérotation en partant d'un autre sommet. Et si $y_1 > 0$, quel polynôme a pour courbe la symétrique de $\mathcal{C}_P$ par rapport à l'axe des abscisses ?
2. **Question 2.** Si $y_i = 0$, le sommet $M_i$ est sur l'axe des abscisses : son angle est un multiple de $\pi$. Regarder alors les sommets voisins de $M_i$, de part et d'autre.
3. **Question 3.** Écrire l'angle de $M_1$ sous la forme $\pi + \theta$. L'angle de $M_k$ est alors $\pi + \theta - \frac{2\pi}{k}$. Comparer $x_1$ et $x_k$.
4. **Question 4.** Montrer que $x_{1+m} = -R\cos\left(\theta + \frac{2m\pi}{k}\right)$ et $x_{k+1-m} = -R\cos\left(\frac{2m\pi}{k} - \theta\right)$, puis ranger les angles $\theta < \frac{2\pi}{k} - \theta < \frac{2\pi}{k} + \theta < \frac{4\pi}{k} - \theta < \cdots$
5. **Question 5.** Quel est le signe de l'ordonnée de chaque sommet, dans l'ordre de la question 4 ? Penser au théorème des valeurs intermédiaires.

## Solution

**1.** *Le plus à gauche en premier.* Si l'on renumérote les sommets en partant de $M_s$, c'est-à-dire si l'on pose $M'_j = M_{s+j-1}$ (les indices étant comptés en revenant à $1$ après $k$), on obtient encore un polygone régulier de centre $O$, décrit par $t' = t + \frac{2(s-1)\pi}{k}$. En choisissant pour $M_s$ un sommet d'abscisse minimale, on peut supposer $x_1 \leqslant x_i$ pour tout $i$.

*Le premier sommet en bas.* Si $y_1 > 0$, on remplace chaque sommet par son symétrique par rapport à l'axe des abscisses, et $P$ par $-P$. Le polynôme $-P$ a le même degré $d$, et sa courbe, symétrique de celle de $P$, contient les points $(x_i, -y_i)$. Ces points sont décrits par les angles $-\varphi_j$ : ils tournent dans le sens des aiguilles d'une montre. On les numérote donc à l'envers, en gardant le premier : $M'_1 = (x_1, -y_1)$, $M'_2 = (x_k, -y_k)$, $M'_3 = (x_{k-1}, -y_{k-1})$, etc. L'angle de $M'_j$ est $-\varphi_{k+2-j}$ (avec la convention $\varphi_{k+1} = t + 2\pi$, qui décrit aussi $M_1$), c'est-à-dire $-t - 2\pi + \frac{2(j-1)\pi}{k}$, ce qui décrit bien un polygone régulier de centre $O$ (avec $t' = -t - 2\pi$). Le premier sommet a toujours l'abscisse minimale $x_1$, et maintenant une ordonnée $-y_1 < 0$.

Dans les deux cas, on se ramène à $x_1 \leqslant x_i$ pour tout $i$ et $y_1 \leqslant 0$, sans changer le degré.

**2.** *Abscisses.* Deux points de la courbe de $P$ qui ont la même abscisse $u$ sont tous deux égaux à $(u, P(u))$. Les sommets étant distincts, leurs abscisses sont deux à deux distinctes.

*Ordonnées.* Supposons $y_i = 0$. Alors $\sin(\varphi_i) = 0$, donc $\varphi_i = s\pi$ pour un entier $s$. Les deux voisins de $M_i$ ont pour angles $s\pi + \frac{2\pi}{k}$ et $s\pi - \frac{2\pi}{k}$ ; ce sont deux sommets différents, car $k \geqslant 3$. Leurs abscisses sont
$$R\cos\left(s\pi + \frac{2\pi}{k}\right) = (-1)^s R\cos\left(\frac{2\pi}{k}\right) \qquad \text{et} \qquad R\cos\left(s\pi - \frac{2\pi}{k}\right) = (-1)^s R\cos\left(\frac{2\pi}{k}\right).$$
Deux sommets différents auraient la même abscisse, ce qui contredit le premier point. Donc tous les $y_i$ sont non nuls.

**3.** D'après les questions 1 et 2, $y_1 < 0$, donc l'angle de $M_1$ peut s'écrire $\pi + \theta$ avec $0 < \theta < \pi$ (on ajoute un multiple de $2\pi$ si besoin, ce qui ne change pas le point). Alors
$$x_1 = R\cos(\pi + \theta) = -R\cos(\theta) \qquad \text{et} \qquad y_1 = R\sin(\pi + \theta) = -R\sin(\theta).$$
Le sommet $M_k$ précède $M_1$ : son angle est $\pi + \theta - \frac{2\pi}{k}$, donc $x_k = -R\cos\left(\theta - \frac{2\pi}{k}\right) = -R\cos(\delta)$ en posant $\delta = \left|\theta - \frac{2\pi}{k}\right|$ (le cosinus est pair).

Comme $x_1$ est minimale et que les abscisses sont distinctes, $x_1 < x_k$, soit $\cos(\theta) > \cos(\delta)$. Les nombres $\theta$ et $\delta$ sont dans $[0, \pi]$ (car $\theta < \pi$ et $\frac{2\pi}{k} < \pi$), où le cosinus est strictement décroissant. Donc $\theta < \delta$.

- Si $\theta \geqslant \frac{2\pi}{k}$, alors $\delta = \theta - \frac{2\pi}{k} < \theta$ : impossible.
- Donc $\theta < \frac{2\pi}{k}$, $\delta = \frac{2\pi}{k} - \theta$, et $\theta < \frac{2\pi}{k} - \theta$ donne $\theta < \frac{\pi}{k}$.

Ainsi $\theta \in ]0, \frac{\pi}{k}[$.

**4.** Les angles des sommets sont ceux de $M_1$ augmentés de multiples de $\frac{2\pi}{k}$. Pour $0 \leqslant m \leqslant k - 1$, l'angle de $M_{1+m}$ est $\pi + \theta + \frac{2m\pi}{k}$. Pour $1 \leqslant m \leqslant k-1$, l'angle de $M_{k+1-m}$ est $\pi + \theta + \frac{2(k-m)\pi}{k} = \pi + \theta - \frac{2m\pi}{k} + 2\pi$. Donc, en posant
$$c_m = \theta + \frac{2m\pi}{k} \qquad \text{et} \qquad c'_m = \frac{2m\pi}{k} - \theta,$$
on a
$$x_{1+m} = -R\cos(c_m), \quad y_{1+m} = -R\sin(c_m), \qquad x_{k+1-m} = -R\cos(c'_m), \quad y_{k+1-m} = R\sin(c'_m).$$

*Rangement des angles.* Comme $0 < \theta < \frac{\pi}{k}$, on a $c'_m - c_{m-1} = \frac{2\pi}{k} - 2\theta > 0$ et $c_m - c'_m = 2\theta > 0$. Donc
$$0 < c_0 < c'_1 < c_1 < c'_2 < c_2 < \cdots$$
La liste alternée $M_1, M_k, M_2, M_{k-1}, M_3, \ldots$ correspond à ces angles dans cet ordre, et elle s'arrête quand les $k$ sommets ont été pris.

*Tous ces angles sont dans $]0, \pi[$.* Si $k = 2q + 1$ est impair, la liste utilise $c_0, \ldots, c_q$ (pour $M_1, \ldots, M_{q+1}$) et $c'_1, \ldots, c'_q$ (pour $M_k, \ldots, M_{q+2}$), et le plus grand angle est $c_q = \theta + \frac{2q\pi}{k} < \frac{(2q+1)\pi}{k} = \pi$. Si $k = 2q$ est pair, elle utilise $c_0, \ldots, c_{q-1}$ (pour $M_1, \ldots, M_q$) et $c'_1, \ldots, c'_q$ (pour $M_k, \ldots, M_{q+1}$), et le plus grand est $c'_q = \pi - \theta < \pi$.

Le cosinus est strictement décroissant sur $[0, \pi]$, donc $-R\cos$ y est strictement croissant. En lisant les abscisses dans l'ordre des angles :
$$x_1 < x_k < x_2 < x_{k-1} < x_3 < x_{k-2} < \cdots$$

**5.** Les angles $c_m$ et $c'_m$ sont dans $]0, \pi[$, où le sinus est strictement positif. Donc $y_{1+m} = -R\sin(c_m) < 0$ et $y_{k+1-m} = R\sin(c'_m) > 0$ : dans l'ordre de la question 4, les ordonnées sont alternativement strictement négatives et strictement positives.

Soit $u < w$ deux abscisses consécutives dans cette liste. Alors $P(u)$ et $P(w)$ sont les ordonnées de deux sommets, de signes contraires. La fonction $P$ est continue sur $[u, w]$, donc d'après le théorème des valeurs intermédiaires elle s'annule en un point de $]u, w[$. Cela donne une racine dans chacun des $k - 1$ intervalles de l'énoncé.

**6.** Ces $k - 1$ intervalles ouverts sont deux à deux disjoints, donc $P$ a au moins $k - 1$ racines distinctes. D'autre part $P$ n'est pas le polynôme nul, car $P(x_1) = y_1 \neq 0$. Un polynôme de degré $d$ a au plus $d$ racines, donc $d \geqslant k - 1$.

**Bilan.** Si les $k$ sommets d'un polygone régulier de centre $O$ sont sur la courbe d'un polynôme $P$ de degré $d$, alors, rangés de gauche à droite, ces sommets sont alternativement au-dessous et au-dessus de l'axe des abscisses. La courbe traverse donc l'axe au moins $k - 1$ fois, et $d \geqslant k - 1$.

## Going further

- Pour un carré ($k = 4$), on retrouve qu'il faut un degré au moins $3$ ; pour un triangle équilatéral, un degré au moins $2$. Les exercices 40845 et 40846 donnent des exemples où ces bornes sont atteintes.
- Dans la dernière partie du sujet (exercice 40848), on montrait que la borne est atteinte pour tout polygone régulier de centre $O$ dont les sommets ont des abscisses distinctes : il existe toujours un polynôme de degré $k - 1$, et même de tout degré $d \geqslant k - 1$, dont la courbe passe par les $k$ sommets.
