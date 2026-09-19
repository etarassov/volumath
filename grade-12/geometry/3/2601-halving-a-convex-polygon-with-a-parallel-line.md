---
id: "2601"
title: "Couper un polygone en deux aires égales dans une direction imposée"
grade: 12
theme: geometry
difficulty: 3
duration_min: 25
tags: [aire, continuite, valeurs-intermediaires, polygone]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School II Circle, Fair Divisions (Prof. Igor Pak)"
  reference: "Handout-589-683.pdf, Introductory Problem 1"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-589-683.pdf"
---

## Statement

Soit $Q$ un polygone convexe du plan, et soit $D$ une droite du plan.

Montrer qu'il existe une droite $\ell$ **parallèle à $D$** qui partage $Q$ en deux morceaux de même aire.

*Attention : ce problème a l'air plus facile qu'il ne l'est. Un dessin ne suffit pas, il faut une vraie démonstration.*

## Hints

1. Choisis un repère dans lequel $D$ est verticale. Une droite parallèle à $D$ s'écrit alors $x = t$, et il n'y a plus qu'un seul nombre à régler : $t$.
2. Pose $f(t) = $ aire de la partie de $Q$ située à gauche de la droite $x = t$. Que valent $f(t)$ quand $t$ est très petit, puis quand $t$ est très grand ?
3. Tu cherches un $t$ tel que $f(t) = \mathcal{A}/2$, où $\mathcal{A}$ est l'aire de $Q$. Quel théorème de Terminale donne l'existence d'une telle valeur ?
4. Il reste à justifier que $f$ est continue. Compare $f(t)$ et $f(s)$ : leur différence est l'aire d'un morceau de $Q$ coincé entre deux droites verticales. Majore cette aire.

## Solution

**Mise en place.**

Choisissons un repère orthonormé dans lequel la droite $D$ est verticale. Les droites parallèles à $D$ sont alors exactement les droites d'équation $x = t$, pour $t$ réel.

Notons $\mathcal{A}$ l'aire de $Q$, et pour tout réel $t$ posons
$$f(t) = \text{aire de } \{M \in Q \ : \ x_M \leq t\},$$
c'est-à-dire l'aire de la partie de $Q$ située à gauche de la droite $x = t$.

**Les valeurs aux extrémités.**

Le polygone $Q$ est borné : toutes ses abscisses sont comprises entre deux nombres $a$ et $b$.

- Si $t \leq a$, aucun point de $Q$ n'est à gauche de la droite, donc $f(t) = 0$.
- Si $t \geq b$, tout $Q$ est à gauche de la droite, donc $f(t) = \mathcal{A}$.

**$f$ est continue.**

C'est le point qu'il ne faut pas sauter. Prenons deux réels $s < t$. La partie de $Q$ à gauche de $x = t$ contient la partie de $Q$ à gauche de $x = s$, et la différence est exactement la partie de $Q$ comprise dans la bande verticale $s \leq x \leq t$. Donc
$$f(t) - f(s) = \text{aire de } \{M \in Q \ : \ s \leq x_M \leq t\}.$$

Notons $h$ la hauteur de $Q$, c'est-à-dire la différence entre la plus grande et la plus petite ordonnée d'un point de $Q$. La partie de $Q$ dans la bande est contenue dans un rectangle de largeur $t - s$ et de hauteur $h$, donc
$$0 \leq f(t) - f(s) \leq h \, (t - s).$$

Cette inégalité vaut pour tous $s < t$, donc $|f(t) - f(s)| \leq h\,|t - s|$ pour tous réels $s$ et $t$ : la fonction $f$ est continue sur $\mathbb{R}$.

**Conclusion par le théorème des valeurs intermédiaires.**

La fonction $f$ est continue sur l'intervalle $[a, b]$, avec $f(a) = 0$ et $f(b) = \mathcal{A}$. Le nombre $\mathcal{A}/2$ est compris entre $0$ et $\mathcal{A}$.

D'après le théorème des valeurs intermédiaires, il existe $t_0 \in [a, b]$ tel que
$$f(t_0) = \frac{\mathcal{A}}{2}.$$

La droite $\ell$ d'équation $x = t_0$ est parallèle à $D$ et laisse à sa gauche une aire $\mathcal{A}/2$, donc à sa droite une aire $\mathcal{A} - \mathcal{A}/2 = \mathcal{A}/2$.

**Elle partage bien $Q$ en deux morceaux de même aire.**

## Going further

La convexité de $Q$ n'a servi nulle part : la démonstration marche pour n'importe quelle figure bornée dont on sait mesurer l'aire. La convexité devient utile dès qu'on veut en plus que chaque morceau soit d'un seul tenant.
