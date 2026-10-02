---
id: "13207"
title: "Le parallélogramme logé dans le coin A"
grade: 9
theme: geometry
difficulty: 3
duration_min: 20
tags: [aire, thales, parallelogramme, proportionnalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2016 (test de rentrée OFM), éliminatoires"
  reference: "2017-09_coupe_automne_2016_elim.pdf, exercices collégiens, exercice 7 ; corrigé 2017-09_coupe_automne_2016_elim_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2016_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2016_elim.pdf"
---

## Statement

Soit $ABC$ un triangle et $P$ un point à l'intérieur de ce triangle. On sait que l'aire du triangle $ABC$ vaut $10$ fois l'aire du triangle $PAB$, et aussi $10$ fois l'aire du triangle $PAC$.

On note $M$ le point de $[AB]$ tel que $(PM)$ soit parallèle à $(AC)$, et $N$ le point de $[AC]$ tel que $(PN)$ soit parallèle à $(AB)$.

Combien de fois l'aire du triangle $ABC$ est-elle plus grande que l'aire du quadrilatère $PMAN$ ?

## Hints

1. Les triangles $PAB$ et $CAB$ ont la même base $[AB]$. Que peux-tu dire de leurs hauteurs ?
2. Le point $N$ est sur la parallèle à $(AB)$ qui passe par $P$. À quelle distance de $(AB)$ est-il ? Déduis-en $\frac{AN}{AC}$ avec le théorème de Thalès.
3. De même, trouve $\frac{AM}{AB}$. Quelle est la nature du quadrilatère $AMPN$ ?
4. Le parallélogramme $AMPN$ est formé de deux triangles de même aire. Compare l'aire de $AMN$ à celle de $AMC$, puis celle de $AMC$ à celle de $ABC$.

## Solution

Notons $\mathcal{A}(\ldots)$ l'aire d'une figure.

**Où se trouve $N$ ?** Les triangles $PAB$ et $CAB$ ont la même base $[AB]$. Leurs aires sont dans le rapport $10$, donc leurs hauteurs aussi : la distance de $P$ à la droite $(AB)$ vaut le dixième de la distance de $C$ à $(AB)$.

Le point $N$ est sur la parallèle à $(AB)$ passant par $P$, donc il est à la même distance de $(AB)$ que $P$. Notons $H$ et $K$ les pieds des perpendiculaires à $(AB)$ issues de $N$ et de $C$. Les droites $(NH)$ et $(CK)$ sont parallèles, et le théorème de Thalès dans le triangle $ACK$ donne

$$\frac{AN}{AC} = \frac{NH}{CK} = \frac{1}{10}.$$

**Où se trouve $M$ ?** Le même raisonnement avec la base $[AC]$ et le triangle $PAC$ donne $\frac{AM}{AB} = \frac{1}{10}$.

**Le quadrilatère $AMPN$.** Ses côtés opposés sont parallèles : $(PM) \parallel (AN)$ et $(PN) \parallel (AM)$. C'est un parallélogramme, et sa diagonale $[MN]$ le coupe en deux triangles de même aire. Donc $\mathcal{A}(PMAN) = 2\,\mathcal{A}(AMN)$.

**L'aire du triangle $AMN$.**

- Les triangles $AMN$ et $AMC$ ont le même sommet $M$ et leurs bases $[AN]$ et $[AC]$ sont sur la même droite : ils ont la même hauteur. Donc $\mathcal{A}(AMN) = \frac{AN}{AC}\,\mathcal{A}(AMC) = \frac{1}{10}\,\mathcal{A}(AMC)$.
- De même, les triangles $AMC$ et $ABC$ ont le même sommet $C$ et des bases $[AM]$ et $[AB]$ sur la même droite. Donc $\mathcal{A}(AMC) = \frac{1}{10}\,\mathcal{A}(ABC)$.

Ainsi $\mathcal{A}(AMN) = \frac{1}{100}\,\mathcal{A}(ABC)$ et $\mathcal{A}(PMAN) = \frac{2}{100}\,\mathcal{A}(ABC) = \frac{1}{50}\,\mathcal{A}(ABC)$.

**Conclusion.** L'aire du triangle $ABC$ est $50$ fois plus grande que l'aire de $PMAN$.
