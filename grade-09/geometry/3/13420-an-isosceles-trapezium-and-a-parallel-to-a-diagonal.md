---
id: "13420"
title: "Un trapèze isocèle et une parallèle à une diagonale"
grade: 9
theme: geometry
difficulty: 3
duration_min: 35
tags: [trapeze, thales, paralleles, triangle isocele, triangle rectangle, chasse aux angles]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2022"
  reference: "2022-10_sujet-Coupe-Animath-Automne-2022.pdf, épreuve lycée, exercice 13 ; corrigé 2022-10_corrige-commente-Coupe-Animath-Automne-2022.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/10/sujet-Coupe-Animath-Automne-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-10_sujet-Coupe-Animath-Automne-2022.pdf"
---

## Statement

Soit $ABCD$ un quadrilatère tel que $AD = BC$, les droites $(AB)$ et $(CD)$ sont parallèles, et $AB > CD$.

Soit $E$ le milieu du segment $[AC]$, et soit $F$ le point d'intersection des diagonales $(AC)$ et $(BD)$. La parallèle à la droite $(BD)$ passant par $E$ coupe la droite $(CD)$ au point $G$.

1. Montrer que le triangle $CGA$ est rectangle en $G$.
2. On note $CD = b$ et $AB = a$. Calculer le rapport $\frac{EG}{CF}$ en fonction de $a$ et de $b$.

## Hints

1. Comme $AB \neq CD$, le quadrilatère n'est pas un parallélogramme : c'est un trapèze isocèle. Il a un axe de symétrie. Où est le point $F$ par rapport à cet axe ? Que dire du triangle $FCD$ ?
2. Utilise les parallèles $(EG)$ et $(DF)$ pour montrer que le triangle $EGC$ est isocèle en $E$.
3. Tu obtiens $EA = EC = EG$. Dans un triangle $AGC$ où le point $E$ du côté $[AC]$ vérifie cela, que vaut l'angle en $G$ ? Pense à la somme des angles des triangles $EAG$ et $EGC$.
4. Pour la question 2, utilise deux fois le théorème de Thalès : une fois avec les parallèles $(EG)$ et $(FD)$, une fois avec les parallèles $(AB)$ et $(CD)$.

## Solution

![Le trapèze ABCD avec ses diagonales qui se coupent en F, le milieu E de [AC], et la parallèle à (BD) passant par E qui coupe la droite (CD) en G](13420-figure-1.svg)

**Le trapèze est isocèle.** Un quadrilatère qui a deux côtés opposés parallèles et ses deux autres côtés de même longueur est soit un parallélogramme, soit un trapèze isocèle. Ici $AB \neq CD$, donc ce n'est pas un parallélogramme : $ABCD$ est un trapèze isocèle. Il est symétrique par rapport à la médiatrice commune de $[AB]$ et de $[CD]$. Cette symétrie échange $A$ et $B$, et échange $D$ et $C$.

**Le triangle $FCD$ est isocèle en $F$.** La symétrie échange les diagonales $(AC)$ et $(BD)$, donc leur point commun $F$ est envoyé sur lui-même : $F$ est sur l'axe, qui est la médiatrice de $[CD]$. Donc $FC = FD$, et le triangle $FCD$ est isocèle en $F$ :

$$\widehat{FDC} = \widehat{FCD}.$$

**La position des points.** D'après le théorème de Thalès dans la configuration « papillon » formée par les parallèles $(AB)$ et $(CD)$ et les diagonales qui se coupent en $F$,

$$\frac{FA}{FC} = \frac{FB}{FD} = \frac{AB}{CD} = \frac{a}{b}.$$

Comme $a > b$, on a $FA > FC$ : le point $F$ est plus près de $C$ que de $A$, donc le milieu $E$ de $[AC]$ est entre $A$ et $F$. Sur la droite $(CD)$, le point $G$ est au-delà de $D$ en partant de $C$, comme sur la figure.

### 1. Le triangle $CGA$ est rectangle en $G$

**Le triangle $EGC$ est isocèle en $E$.** Les droites $(GE)$ et $(DF)$ sont parallèles, et la droite $(CD)$ les coupe. Les angles $\widehat{EGC}$ et $\widehat{FDC}$ sont correspondants, donc égaux. D'autre part, comme $D$ est sur $[CG]$ et $F$ sur $[CE]$, on a $\widehat{GCE} = \widehat{DCF}$. Donc

$$\widehat{EGC} = \widehat{FDC} = \widehat{FCD} = \widehat{GCE}.$$

Le triangle $EGC$ a deux angles égaux : il est isocèle en $E$, et $EG = EC$.

**L'angle en $G$.** Comme $E$ est le milieu de $[AC]$, on a $EA = EC = EG$. Les triangles $EAG$ et $EGC$ sont donc isocèles en $E$. Notons $u = \widehat{EAG} = \widehat{EGA}$ et $v = \widehat{ECG} = \widehat{EGC}$. Dans le triangle $AGC$, la somme des angles vaut $180^\circ$ :

$$\widehat{GAC} + \widehat{AGC} + \widehat{GCA} = u + (u + v) + v = 180^\circ,$$

donc $2(u + v) = 180^\circ$, et $\widehat{AGC} = u + v = 90^\circ$. Le triangle $CGA$ est rectangle en $G$.

(On peut aussi dire : $E$ est à la même distance de $A$, $G$ et $C$, donc $G$ est sur le cercle de diamètre $[AC]$, et l'angle $\widehat{AGC}$ est droit.)

### 2. Le rapport $\frac{EG}{CF}$

**Première utilisation de Thalès.** Dans le triangle $CGE$, le point $D$ est sur $[CG]$, le point $F$ est sur $[CE]$, et $(DF)$ est parallèle à $(GE)$. D'après le théorème de Thalès,

$$\frac{EG}{FD} = \frac{CE}{CF}.$$

Comme $FD = FC$, on obtient

$$\frac{EG}{CF} = \frac{CE}{CF} = \frac{1}{2} \times \frac{AC}{CF}.$$

**Seconde utilisation de Thalès.** On a vu plus haut que $\frac{FA}{FC} = \frac{a}{b}$. Comme $F$ est sur $[AC]$, $AC = AF + FC$, donc

$$\frac{AC}{CF} = \frac{AF}{CF} + 1 = \frac{a}{b} + 1 = \frac{a + b}{b}.$$

**Conclusion.**

$$\frac{EG}{CF} = \frac{a + b}{2b}.$$

*Vérification.* La figure est faite avec $a = 6$ et $b = 3$. On doit trouver $EG = \frac{9}{6} \times CF = \text{1,5} \times CF$, ce que l'on peut contrôler à la règle.

## Going further

Montrer que le point $G$ est aussi le pied de la hauteur issue de $A$ dans le trapèze, puis calculer le rapport $\frac{GD}{CD}$ en fonction de $a$ et de $b$.
