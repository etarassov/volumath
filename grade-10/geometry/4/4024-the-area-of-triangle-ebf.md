---
id: "4024"
title: "L'aire du petit triangle EBF"
grade: 10
theme: geometry
difficulty: 4
duration_min: 35
tags: [thales, theoreme-des-milieux, rapport-daires, droite-auxiliaire]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 2A, Week 1 Competition"
  reference: "Handout-3131-2694.pdf, problème 13 (réponse 30 dans le barème en fin de fichier)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3131-2694.pdf"
---

## Statement

Dans un triangle $ABC$, le point $D$ appartient au côté $[AC]$ et vérifie

$$AD = \frac{1}{3}\,AC \qquad \text{(autrement dit } AD : DC = 1 : 2 \text{)}.$$

Le point $E$ est le milieu de $[BD]$, et la droite $(AE)$ coupe le côté $[BC]$ au point $F$.

L'aire du triangle $ABC$ vaut $360$.

Quelle est l'aire du triangle $EBF$ ?

![Le triangle ABC avec D sur [AC], E milieu de [BD] et F sur [BC]](4024-figure-1.svg)

## Hints

1. Deux triangles qui ont la même hauteur ont des aires proportionnelles à leurs bases. Tu vas t'en servir deux fois.
2. Il te manque deux renseignements : la position de $F$ sur $[BC]$, et la position de $E$ sur $[AF]$. Cherche-les d'abord.
3. Trace la parallèle à $(AF)$ passant par $D$ ; appelle $G$ son point d'intersection avec $(BC)$. Deux théorèmes vont alors s'appliquer, l'un dans le triangle $CAF$, l'autre dans le triangle $BDG$.
4. Dans le triangle $BDG$, le point $E$ est le milieu de $[BD]$ et $(EF)$ est parallèle à $(DG)$ : que dire du point $F$ ?

## Solution

**L'idée : une droite auxiliaire parallèle à $(AF)$.**

Appelons $G$ le point d'intersection de la droite $(BC)$ avec la parallèle à $(AF)$ passant
par $D$.

**Étape 1. Dans le triangle $CAF$.**

Le point $D$ est sur $[CA]$, le point $G$ est sur $(CF)$, et $(DG)$ est parallèle à $(AF)$.
Le théorème de Thalès donne

$$\frac{CD}{CA} = \frac{CG}{CF} = \frac{DG}{AF}.$$

Or $AD = \dfrac13 AC$, donc $CD = \dfrac23 CA$, d'où

$$CG = \frac23\,CF \qquad \text{et} \qquad DG = \frac23\,AF .$$

En particulier

$$GF = CF - CG = CF - \frac23 CF = \frac13\,CF .$$

**Étape 2. Dans le triangle $BDG$.**

Le point $E$ est le milieu de $[BD]$, et la droite $(EF)$ — qui n'est autre que $(AF)$ — est
parallèle à $(DG)$. D'après le théorème des milieux, la droite qui passe par le milieu d'un
côté et qui est parallèle à un second côté coupe le troisième en son milieu :

$$F \text{ est le milieu de } [BG], \qquad \text{donc} \qquad BF = FG,$$

et de plus $EF = \dfrac12\,DG$.

**Étape 3. Localiser $F$ sur $[BC]$.**

D'après l'étape 1, $GF = \dfrac13 CF$, et d'après l'étape 2, $BF = FG$. Donc

$$BF = \frac13\,CF .$$

Le côté $[BC]$ se décompose en $BC = BF + FC = \dfrac13 CF + CF = \dfrac43\,CF$. Par
conséquent

$$\frac{BF}{BC} = \frac{\tfrac13 CF}{\tfrac43 CF} = \frac14 .$$

**Étape 4. Localiser $E$ sur $[AF]$.**

D'après l'étape 2, $EF = \dfrac12 DG$, et d'après l'étape 1, $DG = \dfrac23 AF$. Donc

$$EF = \frac12 \times \frac23\,AF = \frac13\,AF, \qquad \text{c'est-à-dire} \qquad \frac{FE}{FA} = \frac13 .$$

**Étape 5. Les deux rapports d'aires.**

*Premier rapport.* Les triangles $ABF$ et $ABC$ ont le même sommet $A$ et leurs bases
$[BF]$ et $[BC]$ sont portées par la même droite : ils ont donc la même hauteur issue de
$A$, et

$$\frac{\text{aire}(ABF)}{\text{aire}(ABC)} = \frac{BF}{BC} = \frac14,
\qquad \text{donc} \qquad \text{aire}(ABF) = \frac{360}{4} = 90 .$$

*Second rapport.* Les triangles $EBF$ et $ABF$ ont le même sommet $B$ et leurs bases
$[FE]$ et $[FA]$ sont portées par la même droite $(AF)$ : ils ont la même hauteur issue de
$B$, et

$$\frac{\text{aire}(EBF)}{\text{aire}(ABF)} = \frac{FE}{FA} = \frac13,
\qquad \text{donc} \qquad \text{aire}(EBF) = \frac{90}{3} = 30 .$$

**Réponse : l'aire du triangle $EBF$ vaut $30$.**

## Going further

On peut vérifier le résultat dans un repère bien choisi, par exemple
$A = (0 \, ; 0)$, $B = (3 \, ; 6)$, $C = (9 \, ; 0)$, dont le triangle a pour aire
$\dfrac{9 \times 6}{2} = 27$. On trouve $D = (3 \, ; 0)$, $E = (3 \, ; 3)$, puis
$F = (\text{4,5} \, ; \text{4,5})$, et l'aire de $EBF$ vaut $\text{2,25}$, soit bien le
douzième de $27$. Le rapport $\dfrac{1}{12}$ ne dépend donc pas de la forme du triangle :
avec $360$ on retrouve $30$.
