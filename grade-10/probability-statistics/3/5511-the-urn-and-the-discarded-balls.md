---
id: "5511"
title: "L'urne et les boules jetées"
grade: 10
theme: probability-statistics
difficulty: 3
duration_min: 30
tags: [probabilite, symetrie, urne, equiprobabilite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Visualization in Algebra, Tom Davis"
  reference: "TDvisualizationinalgebra.pdf, « Visualization and Symmetry », section 4, problème 15 (sans corrigé dans la source)"
  url: "https://mathcircles.org/activity/visualization-in-algebra/"
  original_language: "en"
  local_copy: "sources/originals/namc/TDvisualizationinalgebra.pdf"
---

## Statement

**a)** Pour commencer, un tout petit cas. Un sac contient deux boules rouges et une boule bleue, impossibles à distinguer au toucher. Sans regarder, on en retire une et on la jette. On tire ensuite au hasard une des deux boules restantes. Quelle est la probabilité qu'elle soit rouge ? Fais le calcul complet, en examinant les cas.

**b)** Une urne contient maintenant $500$ boules rouges et $400$ boules bleues, toutes identiques au toucher. Sans regarder, on retire $257$ boules de l'urne et on les jette sans les regarder non plus. On tire ensuite au hasard une boule parmi celles qui restent.

Quelle est la probabilité qu'elle soit rouge ?

## Hints

1. Question a) : il y a trois façons de choisir la boule jetée. Traite-les une par une, puis fais la moyenne.
2. Le résultat de la question a) doit te surprendre : compare-le à la probabilité de tirer une rouge **sans rien jeter du tout**.
3. Question b) : jeter $257$ boules sans les regarder ne donne aucune information. Essaie de décrire l'expérience autrement, de façon à ce que la boule finale soit tirée en premier.
4. Imagine qu'on aligne au hasard les $900$ boules sur une table, puis qu'on jette les $257$ premières. Quelle boule tire-t-on alors ?
5. Quelle est la probabilité qu'une boule donnée se retrouve à la $258^{\text{e}}$ place ? Et pourquoi cela suffit-il à conclure ?

## Solution

**a) Le petit cas.**

Appelons $R_1$, $R_2$ les deux boules rouges et $B$ la bleue. La boule jetée est l'une des trois, chacune avec la probabilité $\tfrac{1}{3}$.

- On jette $R_1$ (probabilité $\tfrac{1}{3}$) : il reste $R_2$ et $B$, donc la probabilité de tirer une rouge est $\tfrac{1}{2}$.
- On jette $R_2$ (probabilité $\tfrac{1}{3}$) : de même, $\tfrac{1}{2}$.
- On jette $B$ (probabilité $\tfrac{1}{3}$) : il reste $R_1$ et $R_2$, donc la probabilité est $1$.

Au total :
$$P(\text{rouge}) = \frac{1}{3} \times \frac{1}{2} + \frac{1}{3} \times \frac{1}{2} + \frac{1}{3} \times 1 = \frac{1}{6} + \frac{1}{6} + \frac{1}{3} = \frac{2}{3} .$$

C'est exactement la proportion de boules rouges dans le sac de départ : $\tfrac{2}{3}$. **Jeter une boule au hasard n'a rien changé.**

**b) Le grand cas.**

*L'idée : changer la façon de raconter l'expérience.* Au lieu de retirer $257$ boules puis d'en tirer une, imaginons que l'on vide l'urne et qu'on aligne les $900$ boules sur la table dans un ordre complètement au hasard. Puis on jette les $257$ premières et on prend la suivante, celle qui occupe la $258^{\text{e}}$ place.

C'est rigoureusement la même expérience : dans les deux cas, les boules jetées sont $257$ boules prises au hasard, et la boule finale est une boule prise au hasard parmi les autres.

*La conclusion.* Dans un rangement au hasard, chaque boule a la même chance qu'une autre d'occuper la $258^{\text{e}}$ place : cette place revient à chacune des $900$ boules avec la probabilité $\tfrac{1}{900}$. La boule tirée est donc une boule prise au hasard parmi les $900$ du départ, et
$$P(\text{rouge}) = \frac{500}{900} = \frac{5}{9} \approx \text{0,56} .$$

**Pourquoi c'était prévisible.** On n'a jamais regardé les boules jetées. Elles ne nous apprennent rien, donc elles ne peuvent pas modifier nos chances. La $258^{\text{e}}$ boule d'un rangement au hasard n'est ni plus ni moins spéciale que la première : l'ordre du tirage n'a aucune importance tant qu'on ne reçoit aucune information en cours de route.

Attention tout de même : si on **regardait** les boules jetées, la réponse changerait. En apprenant par exemple que les $257$ boules jetées étaient toutes bleues, il ne resterait que $500$ rouges et $143$ bleues, et la probabilité deviendrait $\tfrac{500}{643}$.

## Going further

1. Reprends la question a) avec trois rouges et deux bleues, en jetant deux boules. Le résultat reste-t-il la proportion de départ ?
2. On retire $899$ boules au lieu de $257$. La réponse change-t-elle ?
3. On tire maintenant deux boules à la fin, après avoir jeté les $257$ premières. Quelle est la probabilité qu'elles soient toutes les deux rouges ?
