---
id: "8508"
title: "Deux bissectrices et une parallèle cachée"
grade: 10
theme: geometry
difficulty: 4
duration_min: 40
tags: [bissectrice, triangle-isocele, angles-alternes-internes, chasse-aux-angles]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, Coupe Animath de printemps 2022"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre II, exercice 12 (sujet lycéens)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

$ABC$ est un triangle isocèle en $B$.

- $D$ est le point où la bissectrice de l'angle $\widehat{BAC}$ coupe le segment $[BC]$ ;
- $E$ est le point du segment $[AC]$, différent de $C$, tel que $DE = DC$ ;
- $F$ est le point où la bissectrice de l'angle $\widehat{AED}$ coupe le côté $[AB]$.

Démontrer que $\widehat{AFE} = \widehat{EFD}$, autrement dit que $(FE)$ est la bissectrice de
l'angle $\widehat{AFD}$.

## Hints

1. Fais une grande figure. Le triangle $EDC$ est isocèle : que peux-tu dire de ses angles à la base ?
2. Le triangle $ABC$ est isocèle en $B$, donc $\widehat{BAC} = \widehat{BCA}$. Compare $\widehat{DEC}$ et $\widehat{BAC}$ : que t'apprend cette égalité sur les droites $(DE)$ et $(AB)$ ?
3. Une fois les deux droites parallèles, la droite $(EF)$ les coupe toutes les deux. Repère une paire d'angles alternes-internes.
4. Il ne reste plus qu'à montrer que le triangle $DEF$ est isocèle en $D$. Pour cela, intéresse-toi d'abord au triangle $AEF$ : pourquoi est-il isocèle en $A$ ?

## Solution

### Étape 1 : $(DE)$ et $(AB)$ sont parallèles

Comme $DE = DC$, le triangle $DEC$ est isocèle en $D$, donc ses angles à la base sont égaux :

$$\widehat{DEC} = \widehat{DCE} .$$

Or $E$ est sur $[AC]$ et $D$ est sur $[BC]$, donc $\widehat{DCE} = \widehat{BCA}$. Et comme
$ABC$ est isocèle en $B$, on a $\widehat{BCA} = \widehat{BAC}$. En enchaînant :

$$\widehat{DEC} = \widehat{BAC} .$$

Ces deux angles sont des angles correspondants pour les droites $(DE)$ et $(AB)$ coupées par
la droite $(AC)$. Comme ils sont égaux,

$$(DE) \; /\!/ \; (AB) .$$

### Étape 2 : une paire d'angles alternes-internes

La droite $(EF)$ coupe les deux droites parallèles $(AB)$ et $(DE)$. Les angles
$\widehat{AFE}$ (en $F$, du côté de $A$) et $\widehat{FED}$ (en $E$, du côté de $D$) sont
alternes-internes, donc

$$\widehat{AFE} = \widehat{FED} . \qquad (\star)$$

### Étape 3 : le triangle $AEF$ est isocèle en $A$

Par définition de $F$, la droite $(EF)$ est la bissectrice de l'angle $\widehat{AED}$, donc

$$\widehat{AEF} = \widehat{FED} .$$

En comparant avec $(\star)$, on obtient $\widehat{AEF} = \widehat{AFE}$. Le triangle $AEF$ a
donc deux angles égaux, en $E$ et en $F$ : il est isocèle en $A$, et

$$AE = AF .$$

### Étape 4 : le triangle $DEF$ est isocèle en $D$

Dans un triangle isocèle, la bissectrice issue du sommet principal est aussi la médiatrice de
la base. Ici, la droite $(AD)$ est la bissectrice de l'angle $\widehat{BAC}$, c'est-à-dire de
l'angle $\widehat{FAE}$ puisque $F$ est sur $[AB]$ et $E$ sur $[AC]$. Dans le triangle $AEF$
isocèle en $A$, cette bissectrice est donc la médiatrice du segment $[FE]$.

Le point $D$ est sur la droite $(AD)$, donc sur cette médiatrice. Par conséquent

$$DF = DE ,$$

et le triangle $DEF$ est isocèle en $D$. Ses angles à la base sont égaux :

$$\widehat{DEF} = \widehat{DFE} . \qquad (\star\star)$$

### Conclusion

En rassemblant $(\star)$ et $(\star\star)$ :

$$\widehat{AFE} = \widehat{FED} = \widehat{DFE} = \widehat{EFD} .$$

La droite $(FE)$ est donc bien la bissectrice de l'angle $\widehat{AFD}$.

## Going further

En chemin, on a montré que $AF = AE$ et $DF = DE$. On peut aller plus loin : la droite $(EF)$
est à la fois la hauteur issue de $E$ et la bissectrice issue de $E$ dans le triangle $AED$,
donc ce triangle est lui aussi isocèle, en $E$. On obtient alors
$AF = AE = ED = DF$ : le quadrilatère $AFDE$ est un losange.
