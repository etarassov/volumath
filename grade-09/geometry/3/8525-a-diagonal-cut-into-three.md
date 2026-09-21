---
id: "8525"
title: "Une diagonale coupée en trois"
grade: 9
theme: geometry
difficulty: 3
duration_min: 30
tags: [parallelogramme, theoreme-de-thales, triangles-semblables, milieu]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Triangles semblables » (Domitille et Isaline) du Groupe A, exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

$ABCD$ est un parallélogramme. On note $M$ le milieu du côté $[BC]$ et $N$ le milieu du côté
$[CD]$.

La diagonale $(BD)$ coupe la droite $(AN)$ en $Q$ et la droite $(AM)$ en $P$.

Démontrer que $BP = PQ = QD$.

## Hints

1. Fais une figure soignée. Où semblent se situer $P$ et $Q$ sur la diagonale $[BD]$ ?
2. Regarde les deux triangles $DQN$ et $BQA$. Pourquoi les droites $(DN)$ et $(AB)$ sont-elles parallèles ?
3. Deux droites sécantes coupées par deux parallèles donnent la configuration « papillon » du théorème de Thalès. Quel est le rapport de réduction ici ?
4. Une fois $QD$ exprimé en fonction de $BD$, recommence avec $P$, puis conclus par soustraction.

## Solution

**Le point $Q$.** Le point $N$ est le milieu de $[CD]$, donc la droite $(DN)$ n'est autre que
la droite $(DC)$. Comme $ABCD$ est un parallélogramme, $(DC)$ est parallèle à $(AB)$.

Les droites $(BD)$ et $(AN)$ se coupent en $Q$, et les deux parallèles $(DN)$ et $(AB)$
donnent la configuration « papillon » du théorème de Thalès : les triangles $DQN$ et $BQA$
sont semblables, avec

$$\frac{QD}{QB} = \frac{DN}{AB} .$$

Or $DN = \dfrac{DC}{2}$ et $DC = AB$, donc $\dfrac{DN}{AB} = \dfrac{1}{2}$, d'où

$$QB = 2\,QD .$$

Comme $Q$ est entre $B$ et $D$, on a $QD + QB = BD$, donc $3\,QD = BD$ et

$$QD = \frac{BD}{3} .$$

**Le point $P$.** On recommence avec $M$, milieu de $[BC]$. La droite $(BM)$ n'est autre que
$(BC)$, parallèle à $(AD)$. Les droites $(BD)$ et $(AM)$ se coupent en $P$, et les triangles
$BPM$ et $DPA$ sont semblables, avec

$$\frac{PB}{PD} = \frac{BM}{AD} = \frac{1}{2} ,$$

puisque $BM = \dfrac{BC}{2}$ et $BC = AD$. Donc $PD = 2\,PB$, et comme $PB + PD = BD$,

$$BP = \frac{BD}{3} .$$

**La conclusion.** Le point $P$ est à la distance $\dfrac{BD}{3}$ de $B$, et le point $Q$ à
la distance $\dfrac{BD}{3}$ de $D$, donc à la distance $\dfrac{2\,BD}{3}$ de $B$. Les deux
points sont donc distincts et rangés dans l'ordre $B$, $P$, $Q$, $D$, avec

$$PQ = \frac{2\,BD}{3} - \frac{BD}{3} = \frac{BD}{3} .$$

Finalement

$$BP = PQ = QD = \frac{BD}{3} :$$

les deux droites $(AM)$ et $(AN)$ coupent la diagonale $[BD]$ en trois parties égales.
