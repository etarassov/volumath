---
id: "2602"
title: "Une droite qui passe par un point donné et coupe l'aire en deux"
grade: 12
theme: geometry
difficulty: 4
duration_min: 35
tags: [aire, continuite, valeurs-intermediaires, rotation, polygone]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School II Circle, Fair Divisions (Prof. Igor Pak)"
  reference: "Handout-589-683.pdf, Introductory Problem 2"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-589-683.pdf"
---

## Statement

Soit $Q$ un polygone convexe du plan et soit $z$ un point du plan (à l'intérieur de $Q$ ou à l'extérieur, peu importe).

Montrer qu'il existe une droite $\ell$ **passant par $z$** qui partage $Q$ en deux morceaux de même aire.

*Attention : ce problème a l'air plus facile qu'il ne l'est. Il faut une vraie démonstration, pas seulement un dessin.*

## Hints

1. Les droites qui passent par $z$ forment une famille à un seul paramètre : leur direction. Repère chaque droite par l'angle $\theta$ qu'elle fait avec l'horizontale.
2. Une droite partage le plan en deux demi-plans. Pour pouvoir parler « du morceau de gauche », il faut orienter la droite : travaille plutôt avec l'angle $\theta \in [0, 2\pi]$ d'un vecteur directeur, et appelle $g(\theta)$ l'aire du morceau situé à gauche de ce vecteur.
3. Compare $g(\theta)$ et $g(\theta + \pi)$ : c'est la même droite, mais parcourue dans l'autre sens. Que vaut donc $g(\theta) + g(\theta + \pi)$ ?
4. Regarde la fonction $h(\theta) = g(\theta) - \mathcal{A}/2$. Tu viens de montrer que $h(\theta + \pi) = -h(\theta)$. Applique le théorème des valeurs intermédiaires à $h$ sur $[0, \pi]$.

## Solution

**Mise en place : repérer les droites par un angle.**

Notons $\mathcal{A}$ l'aire de $Q$.

Pour $\theta \in [0, 2\pi]$, notons $\vec{u}(\theta) = (\cos\theta, \sin\theta)$ et $\ell_\theta$ la droite passant par $z$ et dirigée par $\vec{u}(\theta)$. Cette droite orientée sépare le plan en deux demi-plans ; appelons **gauche** celui qui est à gauche quand on avance dans le sens de $\vec{u}(\theta)$, et posons
$$g(\theta) = \text{aire de la partie de } Q \text{ située à gauche de } \ell_\theta .$$

**Une symétrie très utile.**

Les droites $\ell_\theta$ et $\ell_{\theta + \pi}$ sont **la même droite** : $\vec{u}(\theta + \pi) = -\vec{u}(\theta)$, on la parcourt simplement en sens inverse. La gauche et la droite sont donc échangées, ce qui donne
$$g(\theta) + g(\theta + \pi) = \mathcal{A}. \qquad (\star)$$

(La droite elle-même est d'aire nulle, elle ne change rien au compte.)

**La fonction à étudier.**

Posons
$$h(\theta) = g(\theta) - \frac{\mathcal{A}}{2}.$$

Trouver une droite convenable, c'est trouver $\theta$ tel que $h(\theta) = 0$.

La relation $(\star)$ se réécrit
$$h(\theta + \pi) = g(\theta+\pi) - \frac{\mathcal{A}}{2} = \big(\mathcal{A} - g(\theta)\big) - \frac{\mathcal{A}}{2} = \frac{\mathcal{A}}{2} - g(\theta) = -h(\theta).$$

**$g$ est continue.**

Faisons tourner la droite d'un petit angle, de $\theta$ à $\theta'$. Les deux droites passent toutes les deux par $z$ ; la partie du plan comprise entre elles est formée de deux secteurs angulaires d'angle $|\theta' - \theta|$ et de sommet $z$. Le polygone $Q$ est borné, donc contenu dans un disque de centre $z$ et de rayon $R$ bien choisi. L'aire de $Q$ comprise entre les deux droites est donc au plus l'aire des deux secteurs du disque, soit $2 \times \tfrac{1}{2} R^2 |\theta' - \theta| = R^2\,|\theta' - \theta|$.

Or $g(\theta)$ et $g(\theta')$ ne diffèrent que par ce qui est coincé entre les deux droites :
$$|g(\theta') - g(\theta)| \leq R^2 \, |\theta' - \theta|.$$

Donc $g$ est continue, et $h$ aussi.

**Conclusion par le théorème des valeurs intermédiaires.**

$h$ est continue sur $[0, \pi]$ et $h(\pi) = -h(0)$.

- Si $h(0) = 0$, la droite $\ell_0$ convient et c'est fini.
- Sinon, $h(0)$ et $h(\pi) = -h(0)$ sont de signes contraires. D'après le théorème des valeurs intermédiaires, il existe $\theta_0 \in ]0, \pi[$ tel que $h(\theta_0) = 0$.

Dans les deux cas on obtient un angle $\theta_0$ avec $g(\theta_0) = \mathcal{A}/2$.

**La droite $\ell_{\theta_0}$ passe par $z$ et partage $Q$ en deux morceaux de même aire.**

## Going further

Le même raisonnement, appliqué au périmètre au lieu de l'aire, montre qu'il existe aussi une droite passant par $z$ qui partage le bord de $Q$ en deux morceaux de même longueur. Trouver une seule droite qui coupe **à la fois** l'aire et le périmètre en deux est plus dur, mais c'est encore le même théorème qui sert.
