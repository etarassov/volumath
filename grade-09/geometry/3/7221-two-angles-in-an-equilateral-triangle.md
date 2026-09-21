---
id: "7221"
title: "Deux angles dans un triangle équilatéral"
grade: 9
theme: geometry
difficulty: 3
duration_min: 25
tags: [triangle equilateral, paralleles, symetrie, somme d'angles]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Débutants », mardi 24 après-midi (Héloïse Gachet), exercice 11"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

$ABC$ est un triangle équilatéral. Sur le côté $[AB]$, on place deux points $D$ et $E$ qui le
coupent en trois parties égales, dans l'ordre $A$, $D$, $E$, $B$ :
$$AD = DE = EB .$$

Sur le côté $[BC]$, on place le point $F$ tel que $CF = AD$.

Combien vaut la somme
$$\widehat{CDF} + \widehat{CEF} \;?$$

## Hints

1. Fais une figure soignée. Mesure les deux angles au rapporteur : cela te donnera la réponse à
   démontrer.
2. Dans le triangle $BDF$, compare $BD$ et $BF$. Que peux-tu en déduire sur la droite $(DF)$ ?
3. Le triangle équilatéral a un axe de symétrie qui passe par $C$. Où cet axe envoie-t-il $D$ ?
   Et $E$ ?
4. Regarde le triangle $CEF$ : que vaut $\widehat{CEF} + \widehat{ECF} + \widehat{CFE}$ ?

## Solution

Notons $a$ la longueur du côté du triangle équilatéral, de sorte que
$$AD = DE = EB = \frac{a}{3} \qquad \text{et} \qquad CF = \frac{a}{3} .$$

**Étape 1 : la droite $(DF)$ est parallèle à $(AC)$.**

Dans le triangle $BAC$, le point $D$ est sur $[BA]$ et le point $F$ sur $[BC]$. Or
$$BD = DE + EB = \frac{2a}{3} \qquad \text{et} \qquad BF = BC - CF = a - \frac{a}{3}
= \frac{2a}{3} .$$
Donc
$$\frac{BD}{BA} = \frac{2a/3}{a} = \frac{2}{3} \qquad \text{et} \qquad
\frac{BF}{BC} = \frac{2a/3}{a} = \frac{2}{3} .$$
D'après la réciproque du théorème de Thalès, les droites $(DF)$ et $(AC)$ sont parallèles.

Par angles alternes-internes selon la sécante $(DC)$, on obtient
$$\widehat{CDF} = \widehat{DCA} .$$

**Étape 2 : la symétrie.**

Le triangle $ABC$ est équilatéral, donc la médiatrice de $[AB]$ est un axe de symétrie du
triangle ; elle passe par $C$ et par le milieu $M$ de $[AB]$. Cette symétrie échange $A$ et $B$,
et fixe $C$.

Comme $AD = \frac{a}{3}$ et $BE = \frac{a}{3}$, le symétrique de $D$ est $E$. La symétrie
transforme donc le triangle $DCA$ en le triangle $ECB$, d'où
$$\widehat{DCA} = \widehat{ECB} .$$

En combinant avec l'étape 1 :
$$\widehat{CDF} = \widehat{ECB} .$$

**Étape 3 : la somme.**

Il reste à calculer $\widehat{ECB} + \widehat{CEF}$.

Le point $F$ appartient au segment $[BC]$, donc $\widehat{ECB} = \widehat{ECF}$ (c'est le même
angle, vu que $F$ est sur la demi-droite $[CB)$).

Dans le triangle $CEF$, la somme des angles vaut $180^\circ$ :
$$\widehat{ECF} + \widehat{CEF} + \widehat{CFE} = 180^\circ ,$$
donc
$$\widehat{CDF} + \widehat{CEF} = \widehat{ECF} + \widehat{CEF} = 180^\circ - \widehat{CFE} .$$

**Étape 4 : calculer $\widehat{CFE}$.**

Reste à déterminer l'angle $\widehat{CFE}$, c'est-à-dire l'angle en $F$ du triangle $CEF$. Notons
$\widehat{BFE}$ son supplémentaire, puisque $C$, $F$, $B$ sont alignés dans cet ordre :
$$\widehat{CFE} = 180^\circ - \widehat{BFE} .$$

Dans le triangle $BEF$, on a $\widehat{EBF} = \widehat{ABC} = 60^\circ$,
$BE = \frac{a}{3}$ et $BF = \frac{2a}{3}$, donc $BF = 2\,BE$.

Plaçons le milieu $N$ de $[BF]$ : alors $BN = \frac{a}{3} = BE$, et le triangle $BNE$ a un angle
de $60^\circ$ entre deux côtés égaux : il est équilatéral. Donc $NE = \frac{a}{3} = NF$, et le
triangle $NEF$ est isocèle en $N$. Son angle en $N$ vaut
$\widehat{ENF} = 180^\circ - \widehat{ENB} = 180^\circ - 60^\circ = 120^\circ$, donc ses angles à
la base valent
$$\widehat{NFE} = \frac{180^\circ - 120^\circ}{2} = 30^\circ .$$
Ainsi $\widehat{BFE} = 30^\circ$, puis
$$\widehat{CFE} = 180^\circ - 30^\circ = 150^\circ .$$

**Conclusion.**

$$\widehat{CDF} + \widehat{CEF} = 180^\circ - \widehat{CFE} = 180^\circ - 150^\circ = 30^\circ .$$

**La somme cherchée vaut $\boxed{30^\circ}$.**

## Going further

On peut vérifier la réponse au rapporteur : sur une figure soignée, on trouve environ
$\widehat{CDF} \approx 19^\circ$ et $\widehat{CEF} \approx 11^\circ$. Aucun des deux angles pris
séparément n'est « joli », mais leur somme l'est. C'est souvent le signe qu'il faut chercher une
égalité cachée plutôt que de calculer chaque angle.
