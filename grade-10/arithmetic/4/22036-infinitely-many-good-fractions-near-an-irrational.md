---
id: "22036"
title: "Une infinité de bonnes fractions près d'un irrationnel"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [principe-des-tiroirs, partie-entiere, partie-decimale, approximation, irrationnel, valeur-absolue, raisonnement-par-l-absurde]
adapted_from: null
see_also: ["7670"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Principe des tiroirs » (Aline), exercice 15"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $x$ un nombre irrationnel positif. Montrer qu'il existe une infinité de fractions $\frac{p}{q}$, avec $p$ et $q$ entiers et $q \geq 1$, telles que

$$\left| x - \frac{p}{q} \right| < \frac{1}{q^2}.$$

## Hints

1. Pour un réel $t$, notez $\lfloor t \rfloor$ le plus grand entier inférieur ou égal à $t$, et $t - \lfloor t \rfloor$ sa partie décimale, qui est dans $[0, 1[$.
2. Fixez un entier $N \geq 1$ et regardez les parties décimales des $N + 1$ nombres $0$, $x$, $2x$, $\ldots$, $Nx$. Coupez $[0, 1[$ en $N$ intervalles de même longueur.
3. Deux de ces parties décimales sont dans le même intervalle. Quelle fraction en tirez-vous ?
4. Pour en avoir une infinité : une fois des fractions trouvées, comment en trouver une qui soit plus proche de $x$ que toutes les autres ?

## Solution

**Notations.** Pour un réel $t$, on note $\lfloor t \rfloor$ sa partie entière, le plus grand entier inférieur ou égal à $t$, et $\{t\} = t - \lfloor t \rfloor$ sa partie décimale. On a toujours $0 \leq \{t\} < 1$.

**Étape 1 : une fraction pour chaque $N$.** Fixons un entier $N \geq 1$. Regardons les $N + 1$ nombres

$$\{0 \times x\}, \quad \{1 \times x\}, \quad \{2 \times x\}, \quad \ldots, \quad \{N \times x\}.$$

Ils sont tous dans $[0, 1[$. Coupons $[0, 1[$ en $N$ intervalles de longueur $\frac{1}{N}$ :

$$[0, 1/N[, \quad [1/N, 2/N[, \quad \ldots, \quad [(N-1)/N, 1[.$$

Il y a $N + 1$ nombres et $N$ intervalles. D'après le principe des tiroirs, deux de ces nombres, $\{ix\}$ et $\{jx\}$ avec $0 \leq i < j \leq N$, sont dans le même intervalle. Leur écart est donc strictement plus petit que la longueur de l'intervalle :

$$\left| \{jx\} - \{ix\} \right| < \frac{1}{N}.$$

Posons $q = j - i$ et $p = \lfloor jx \rfloor - \lfloor ix \rfloor$. Ce sont des entiers, avec $1 \leq q \leq N$. Et

$$qx - p = \left(jx - \lfloor jx \rfloor\right) - \left(ix - \lfloor ix \rfloor\right) = \{jx\} - \{ix\}.$$

Donc $|qx - p| < \frac{1}{N}$. En divisant par $q$, et comme $q \leq N$ :

$$\left| x - \frac{p}{q} \right| < \frac{1}{qN} \leq \frac{1}{q \times q} = \frac{1}{q^2}.$$

On retient : pour tout entier $N \geq 1$, il existe une fraction $\frac{p}{q}$ telle que $\left| x - \frac{p}{q} \right| < \frac{1}{q^2}$ et, en plus, $\left| x - \frac{p}{q} \right| < \frac{1}{qN} \leq \frac{1}{N}$.

**Étape 2 : il y en a une infinité.** Supposons par l'absurde qu'il n'y en ait qu'un nombre fini, $\frac{p_1}{q_1}, \ldots, \frac{p_m}{q_m}$. L'étape 1 montre qu'il y en a au moins une, donc $m \geq 1$.

Comme $x$ est irrationnel, il n'est égal à aucune fraction. Les distances $\left| x - \frac{p_1}{q_1} \right|, \ldots, \left| x - \frac{p_m}{q_m} \right|$ sont donc toutes strictement positives. Notons $\delta$ la plus petite, et choisissons un entier $N$ assez grand pour que $\frac{1}{N} < \delta$.

L'étape 1, avec cet entier $N$, donne une fraction $\frac{p}{q}$ telle que $\left| x - \frac{p}{q} \right| < \frac{1}{q^2}$ et $\left| x - \frac{p}{q} \right| < \frac{1}{N} < \delta$. Cette fraction est plus proche de $x$ que toutes les fractions de la liste : elle n'est pas dans la liste. C'est une contradiction.

**Conclusion.** Il existe une infinité de fractions $\frac{p}{q}$ telles que $\left| x - \frac{p}{q} \right| < \frac{1}{q^2}$.

## Going further

1. Pour $x = \sqrt{2}$, trouvez trois de ces fractions. (Essayez $\frac{1}{1}$, $\frac{3}{2}$, $\frac{7}{5}$, $\frac{17}{12}$.)
2. Où a-t-on utilisé que $x$ est irrationnel ? Que se passe-t-il pour $x = \frac{1}{3}$ ?
