---
id: "12894"
title: "DB = DF dans un triangle isocèle"
grade: 10
theme: geometry
difficulty: 4
duration_min: 40
tags: [mediatrice, angle-inscrit, triangle-isocele, parallelogramme, cocyclicite, diametre]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 14 mai 2025"
  reference: "2025-10_Sujet-Test-5-2024-2025.pdf, test junior, exercice 2 ; corrigé 2025-10_Corrige-Test-5-2024-2025.pdf (même départ que la première solution : (DF) est parallèle à (AB) ; on construit ensuite le point F' pour ne pas lire les positions des points sur la figure)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-5-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-5-2024-2025.pdf"
---

## Statement

Soit $ABC$ un triangle dont les trois angles sont aigus, et tel que $AB = BC > CA$. La médiatrice du segment $[AB]$ coupe le segment $[BC]$ au point $D$. On note $\Omega$ le cercle circonscrit au triangle $ADC$. La médiatrice du segment $[AB]$ recoupe $\Omega$ en un point $E$. On note $F$ le point de $\Omega$ diamétralement opposé au point $E$.

![Le triangle isocèle ABC, le cercle passant par A, D et C, la médiatrice de [AB] en pointillés, et le diamètre [EF]](12894-figure-1.svg)

Montrer que $DB = DF$.

## Hints

1. Que vaut l'angle $\widehat{EDF}$ ? Déduisez-en que la droite $(DF)$ est parallèle à $(AB)$.
2. Comme $D$ est sur la médiatrice de $[AB]$, on a $DA = DB$. Il suffit donc de montrer que $DF = DA$.
3. Notez $\beta = \widehat{ABC}$. Calculez $\widehat{DAB}$, puis les angles d'un triangle isocèle $ADF'$ construit sur la parallèle à $(AB)$ passant par $D$. Montrez que $F'$ est sur $\Omega$.

## Solution

### Rappels

- **Angle droit et diamètre.** Si $[EF]$ est un diamètre d'un cercle et si $D$ est un point du cercle distinct de $E$ et de $F$, alors $\widehat{EDF} = 90^\circ$.
- **Réciproque du théorème de l'angle inscrit.** Soient $A$, $D$, $C$ trois points d'un cercle et $X$ un point situé du même côté de la droite $(AD)$ que $C$. Si $\widehat{AXD} = \widehat{ACD}$, alors $X$ est sur le cercle.
- Une droite et un cercle ont au plus deux points communs.

On note $\ell$ la médiatrice de $[AB]$, $\beta = \widehat{ABC}$ et $\alpha = \widehat{BAC} = \widehat{BCA}$ (le triangle est isocèle en $B$), de sorte que $2\alpha + \beta = 180^\circ$.

### Premières remarques

Le point $D$ n'est pas en $B$, car $DA = DB$ et $A \neq B$. Il n'est pas non plus en $C$, sinon on aurait $CA = CB$, alors que $BC > CA$. Donc **$D$ est strictement entre $B$ et $C$**, et les points $B$ et $C$ sont de part et d'autre de la droite $(AD)$.

Comme $D$ est sur $\ell$, on a $DA = DB$ : le triangle $ADB$ est isocèle en $D$, et $\widehat{DAB} = \widehat{DBA} = \beta$.

### La droite (DF) est parallèle à (AB)

Montrons d'abord que $F \neq D$. Si l'on avait $F = D$, alors $[ED]$ serait un diamètre de $\Omega$, donc le centre $O$ de $\Omega$ serait sur la droite $(ED)$, c'est-à-dire sur $\ell$. On aurait alors $OB = OA$, et $B$ serait sur $\Omega$. Mais alors la droite $(BC)$ aurait trois points communs avec $\Omega$, à savoir $B$, $D$ et $C$, ce qui est impossible.

Ainsi $D$ est un point de $\Omega$ distinct de $E$ et de $F$, et comme $[EF]$ est un diamètre, $\widehat{EDF} = 90^\circ$. La droite $(DF)$ est donc perpendiculaire à $\ell$ en $D$. La droite $(AB)$ est aussi perpendiculaire à $\ell$. Donc **$F$ est sur la droite $d$ parallèle à $(AB)$ passant par $D$.**

### Un point F' de d tel que DF' = DA

Soit $P$ le point tel que $\overrightarrow{DP} = \overrightarrow{BA}$. Alors $ABDP$ est un parallélogramme, et ses diagonales $[AD]$ et $[BP]$ ont le même milieu. Les points $B$ et $P$ sont donc symétriques par rapport au milieu de $[AD]$, et de part et d'autre de la droite $(AD)$. Comme $B$ et $C$ sont aussi de part et d'autre de $(AD)$, **les points $P$ et $C$ sont du même côté de $(AD)$.**

Soit $F'$ le point de la demi-droite $[DP)$ tel que $DF' = DA$. Il est sur $d$, et du même côté de $(AD)$ que $C$.

Les droites $(DP)$ et $(AB)$ sont parallèles, et $B$ et $P$ sont de part et d'autre de la sécante $(AD)$. Les angles alternes-internes sont égaux :

$$\widehat{ADF'} = \widehat{ADP} = \widehat{DAB} = \beta.$$

Le triangle $ADF'$ est isocèle en $D$, avec un angle $\beta$ au sommet $D$. Ses deux autres angles sont égaux, et valent

$$\widehat{DF'A} = \widehat{DAF'} = \frac{180^\circ - \beta}{2} = \alpha.$$

### Le point F' est sur le cercle

Comme $D$ est sur le segment $[CB]$, la demi-droite $[CD)$ est la demi-droite $[CB)$, donc $\widehat{ACD} = \widehat{ACB} = \alpha$. Ainsi

$$\widehat{AF'D} = \alpha = \widehat{ACD},$$

et $F'$ est du même côté de $(AD)$ que $C$. D'après la réciproque du théorème de l'angle inscrit, **$F'$ est sur $\Omega$.**

### Les points F et F' sont confondus

La droite $d$ a au plus deux points communs avec $\Omega$. L'un d'eux est $D$. Les points $F$ et $F'$ sont sur $d$ et sur $\Omega$, et ils sont tous les deux distincts de $D$ (pour $F'$, parce que $DF' = DA > 0$). Donc $F = F'$.

### Conclusion

On a $DF = DF' = DA = DB$. **Donc $DB = DF$.**

## Going further

1. Montrez que $E$ est le centre du cercle circonscrit au triangle $ABC$, puis que les points $B$, $E$ et $F$ sont alignés. (Comparez $\widehat{ADC}$ et $2\widehat{ABC}$.)
2. Pourquoi l'énoncé demande-t-il $BC > CA$ ? Montrez que si $CA > BC$, la médiatrice de $[AB]$ ne coupe plus le segment $[BC]$. (Calculez $BD$ en fonction de $AB$ et de $\beta$.)
