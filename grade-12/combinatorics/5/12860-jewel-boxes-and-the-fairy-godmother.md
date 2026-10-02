---
id: "12860"
title: "Elsa, ses coffrets et la bonne fée"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [jeu, strategie, invariant, recurrence, majoration, somme]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 27 mars 2024"
  reference: "2025-01_Enonce-Test-4.pdf, test senior, exercice 7 ; corrigé 2025-01_Corrige-Test-4.pdf (la majoration que le corrigé démontre par récurrence est fausse quand le nombre k de coffrets est pair : pour k = 4, après 3 jours, les coffrets peuvent contenir 2, 1, 0 et 0 bijoux, alors que la borne annoncée pour le plus rempli est 1,5 ; sa conclusion B = k(k + 1)/2 + 1 reste vraie, et la solution ci-dessous utilise une autre majoration, qui donne B = 2k)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Enonce-Test-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-01_Enonce-Test-4.pdf"
---

## Statement

Elsa possède $2024$ coffrets pour ranger ses bijoux. Chaque coffret a une serrure, qui permet de le fermer à clé. Au départ, tous les coffrets sont ouverts et vides.

Ensuite, chaque jour, Elsa choisit un coffret ouvert et y dépose un bijou. La nuit suivante, sa marraine la bonne fée fait l'une des deux actions suivantes :

- si $2023$ des $2024$ coffrets sont fermés à clé, elle les ouvre tous ;
- sinon, elle choisit un des coffrets encore ouverts et le ferme à clé.

Cela dure autant de jours que l'on veut.

Montrer qu'il existe un entier $B$ tel que, quels que soient le nombre de jours et les choix de la marraine, Elsa puisse faire en sorte qu'à aucun moment un coffret ne contienne $B$ bijoux de plus qu'un autre.

## Hints

1. Quelle stratégie simple Elsa peut-elle suivre pour garder des coffrets bien équilibrés ?
2. Notez $k = 2024$. Combien de coffrets sont ouverts le jour numéro $\ell + 1$ ? Écrivez $\ell = qk + r$, avec $0 \leq r \leq k - 1$.
3. Rangez les coffrets du plus rempli au moins rempli, et notez $S_i$ le nombre total de bijoux dans les $i$ coffrets les plus remplis. Cherchez une majoration de chaque $S_i$ qui reste vraie de jour en jour.
4. Si le $i$-ième et le $(i+1)$-ième coffret du classement contiennent autant de bijoux, alors $S_i$ est la moyenne de $S_{i-1}$ et de $S_{i+1}$.

## Solution

On note $k = 2024$. On va montrer que $B = 2k = 4048$ convient.

**Idée.** Elsa met toujours son bijou dans le coffret ouvert le moins rempli. Pour montrer que cela suffit, on majore, chaque jour, le nombre total de bijoux contenus dans les $i$ coffrets les plus remplis, pour chaque $i$.

### Combien de coffrets sont ouverts

Les nuits de la marraine se suivent par cycles de $k$ nuits. Pendant les $k - 1$ premières nuits d'un cycle, elle ferme un coffret chaque nuit. La $k$-ième nuit, $k - 1$ coffrets sont fermés, et elle les ouvre tous. Ainsi, le $j$-ième jour d'un cycle, $j - 1$ coffrets sont fermés.

Le nombre de jours écoulés s'écrit $\ell = qk + r$, avec $0 \leq r \leq k - 1$ (division euclidienne par $k$). Le jour suivant, le jour numéro $\ell + 1$, est le $(r+1)$-ième jour de son cycle. **Ce jour-là, exactement $k - r$ coffrets sont ouverts.**

### La stratégie d'Elsa

Chaque jour, Elsa dépose son bijou dans un coffret ouvert qui contient le moins de bijoux parmi les coffrets ouverts.

### Notations

Après $\ell$ jours, on range les coffrets du plus rempli au moins rempli (les ex aequo dans un ordre quelconque). On note $c_1 \geq c_2 \geq \cdots \geq c_k$ les nombres de bijoux qu'ils contiennent, et

$$S_i = c_1 + c_2 + \cdots + c_i, \qquad S_0 = 0.$$

Ainsi $S_i$ est le plus grand nombre total de bijoux que l'on peut trouver dans $i$ coffrets, et $S_k = \ell$, puisqu'un bijou est déposé chaque jour. Quand on veut préciser le jour, on écrit $S_i(\ell)$.

**Le coffret choisi.** Le jour $\ell + 1$, Elsa dépose son bijou dans un coffret qui contient **au plus $c_{k-r}$ bijoux**. En effet, seuls les coffrets des rangs $1$ à $k - r - 1$ peuvent contenir strictement plus que $c_{k-r}$ bijoux. Parmi les $k - r$ coffrets ouverts, l'un au moins n'est donc pas de ceux-là et contient au plus $c_{k-r}$ bijoux, et le coffret ouvert le moins rempli en contient encore moins, ou autant.

**Une remarque.** Chaque jour, $S_i$ augmente d'au plus $1$. En effet, les $i$ coffrets les plus remplis le lendemain contenaient, la veille, au plus $S_i(\ell)$ bijoux au total, et ils ont reçu au plus un bijou.

### La majoration

Pour $0 \leq i \leq k$ et $\ell = qk + r$ comme plus haut, on pose

$$T_i(\ell) = i(k - i) + iq + \max(0,\, r - k + i).$$

On va montrer que, **chaque jour, $S_i \leq T_i$ pour tout $i$.**

Commençons par deux calculs sur $T_i$. On a toujours $T_0 = 0$, car $r - k < 0$.

**Calcul (a) : comment $T_i$ change d'un jour au suivant.** Soit $1 \leq i \leq k$. Alors $T_i(\ell + 1) - T_i(\ell)$ vaut $1$ si $r \geq k - i$, et $0$ si $r \leq k - i - 1$.

- Si $r \leq k - 2$, alors $\ell + 1 = qk + (r + 1)$, et seul le maximum change. Si $r \geq k - i$, il passe de $r - k + i$ à $r - k + i + 1$. Si $r \leq k - i - 1$, il vaut $0$ les deux fois.
- Si $r = k - 1$, alors $\ell + 1 = (q + 1)k$, donc $T_i(\ell + 1) = i(k - i) + i(q + 1)$, tandis que $T_i(\ell) = i(k - i) + iq + (i - 1)$. La différence vaut $1$, et on a bien $r = k - 1 \geq k - i$.

**Calcul (b).** Si $1 \leq i \leq k - r - 1$, alors

$$T_{i-1}(\ell) + T_{i+1}(\ell) = 2\,T_i(\ell) - 2.$$

En effet, comme $i + 1 \leq k - r$, les trois maximums valent $0$. Les termes $(i-1)q$ et $(i+1)q$ ont pour somme $2iq$. Enfin

$$(i - 1)(k - i + 1) + (i + 1)(k - i - 1) = [i(k-i) + 2i - k - 1] + [i(k-i) - 2i + k - 1] = 2i(k - i) - 2.$$

**La récurrence.** Au départ, $\ell = 0$, tous les $S_i$ sont nuls et $T_i(0) = i(k - i) \geq 0$.

Supposons que $S_i(\ell) \leq T_i(\ell)$ pour tout $i$, après $\ell = qk + r$ jours. Le jour $\ell + 1$, Elsa dépose un bijou dans un coffret qui contenait $x \leq c_{k-r}$ bijoux. Fixons $i$ entre $1$ et $k$ (pour $i = 0$, il n'y a rien à montrer).

**Cas 1 : $r \geq k - i$.** D'après le calcul (a), $T_i$ augmente de $1$. D'après la remarque, $S_i$ augmente d'au plus $1$. Donc $S_i(\ell + 1) \leq T_i(\ell) + 1 = T_i(\ell + 1)$.

**Cas 2 : $r \leq k - i - 1$.** D'après le calcul (a), $T_i(\ell + 1) = T_i(\ell)$. De plus $k - r \geq i + 1$, donc $x \leq c_{k-r} \leq c_{i+1}$.

- Si $c_{i+1} < c_i$, alors $x < c_i$ : le coffret d'Elsa n'est pas parmi les rangs $1$ à $i$, et il contient maintenant $x + 1 \leq c_i$ bijoux. Les coffrets des rangs $1$ à $i$ contiennent toujours au moins $c_i$ bijoux chacun, et tous les autres au plus $c_i$. Ce sont donc toujours $i$ coffrets parmi les plus remplis, et $S_i(\ell + 1) = S_i(\ell) \leq T_i(\ell) = T_i(\ell + 1)$.
- Si $c_{i+1} = c_i$, alors $S_i - S_{i-1} = c_i = c_{i+1} = S_{i+1} - S_i$, donc, avec l'hypothèse de récurrence et le calcul (b),

$$2\,S_i(\ell) = S_{i-1}(\ell) + S_{i+1}(\ell) \leq T_{i-1}(\ell) + T_{i+1}(\ell) = 2\,T_i(\ell) - 2.$$

Ainsi $S_i(\ell) \leq T_i(\ell) - 1$, et d'après la remarque $S_i(\ell + 1) \leq S_i(\ell) + 1 \leq T_i(\ell) = T_i(\ell + 1)$.

Dans tous les cas, $S_i(\ell + 1) \leq T_i(\ell + 1)$, ce qui termine la récurrence.

### Le plus rempli et le moins rempli

Soit $\ell = qk + r$ le nombre de jours écoulés.

- Le coffret le plus rempli contient $c_1 = S_1 \leq T_1 = (k - 1) + q + \max(0,\, r - k + 1)$. Comme $r \leq k - 1$, ce maximum vaut $0$ ou $1$, donc $c_1 \leq q + k$.
- Le coffret le moins rempli contient $c_k = S_k - S_{k-1} = \ell - S_{k-1} \geq \ell - T_{k-1}$. Or $T_{k-1} = (k - 1) + (k - 1)q + \max(0,\, r - 1) \leq (k - 1) + (k - 1)q + r$, donc

$$c_k \geq qk + r - (k - 1) - (k - 1)q - r = q - k + 1.$$

Ainsi deux coffrets ne diffèrent jamais de plus de $c_1 - c_k \leq (q + k) - (q - k + 1) = 2k - 1$ bijoux. Le contenu des coffrets ne change que le jour, donc cela vaut à tout moment.

### Conclusion

Avec la stratégie « toujours le coffret ouvert le moins rempli », aucun coffret ne contient jamais $2k = 4048$ bijoux de plus qu'un autre, quels que soient les choix de la marraine. **L'entier $B = 4048$ convient.**

## Going further

1. En reprenant plus finement le dernier calcul (séparez les cas $r = 0$, $1 \leq r \leq k - 2$ et $r = k - 1$), montrez que l'écart entre deux coffrets ne dépasse jamais $2k - 2$.
2. Avec seulement $k = 2$ coffrets, montrez que la marraine peut obtenir un écart de $2$ bijoux, et qu'Elsa peut empêcher un écart de $3$.
