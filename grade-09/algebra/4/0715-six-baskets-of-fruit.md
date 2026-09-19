---
id: "0715"
title: "Six paniers de fruits"
grade: 9
theme: algebra
difficulty: 4
duration_min: 30
tags: [somme, mise-en-equation, divisibilite, demonstration]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Combinatoire », niveau collège - débutants"
  reference: "Combinatoire.Invariants.pdf, exercice 52, envoi POFM 2022-2023"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Combinatoire.Invariants.pdf"
---

## Statement

Six paniers contiennent des poires, des pêches et des pommes.

- Dans chaque panier, le nombre de pêches est égal au nombre total de pommes contenues dans les cinq autres paniers.
- Dans chaque panier, le nombre de pommes est égal au nombre total de poires contenues dans les cinq autres paniers.

Montrer que le nombre total de fruits est un multiple de $31$.

## Hints

1. Donne un nom à ce que tu cherches. Note $p_i$, $q_i$ et $r_i$ le nombre de poires, de pêches et de pommes du panier numéro $i$, et note $P$, $Q$, $R$ les totaux sur les six paniers.
2. Traduis la première condition : « le nombre total de pommes dans les cinq **autres** paniers », c'est le total de pommes moins celles du panier $i$. Cela s'écrit $q_i = R - r_i$.
3. Tu as six égalités de ce type. Plutôt que de les résoudre une par une, additionne-les toutes les six. Que devient le membre de droite ?
4. Fais la même chose avec la seconde condition. Tu obtiendras deux relations entre $P$, $Q$ et $R$ seulement, et tout s'exprimera en fonction de $P$.

## Solution

**Étape 1. Des notations.**

Numérotons les paniers de $1$ à $6$. Pour le panier numéro $i$, notons

- $p_i$ son nombre de poires,
- $q_i$ son nombre de pêches,
- $r_i$ son nombre de pommes.

Notons enfin $P = p_1 + \cdots + p_6$, $Q = q_1 + \cdots + q_6$ et $R = r_1 + \cdots + r_6$ les totaux sur les six paniers. Le nombre total de fruits est $P + Q + R$.

**Étape 2. Traduire les deux conditions.**

« Le nombre total de pommes contenues dans les cinq autres paniers », c'est le total $R$ dont on retire les pommes du panier $i$. La première condition s'écrit donc, pour chaque $i$ de $1$ à $6$ :

$$q_i = R - r_i$$

De même, la seconde condition s'écrit, pour chaque $i$ :

$$r_i = P - p_i$$

**Étape 3. L'idée : additionner les six égalités.**

Additionnons les six égalités $q_i = R - r_i$ :

$$q_1 + \cdots + q_6 = \underbrace{(R + R + \cdots + R)}_{6 \text{ fois}} - (r_1 + \cdots + r_6)$$

c'est-à-dire

$$Q = 6R - R = 5R$$

De la même façon, en additionnant les six égalités $r_i = P - p_i$ :

$$R = 6P - P = 5P$$

**Étape 4. Tout exprimer avec $P$.**

De $R = 5P$ on tire

$$Q = 5R = 5 \times 5P = 25P$$

Le nombre total de fruits vaut donc

$$P + Q + R = P + 25P + 5P = 31P$$

Comme $P$ est un nombre entier (c'est un nombre de poires), le total est bien un multiple de $31$.

**Conclusion : le nombre total de fruits est égal à $31$ fois le nombre total de poires ; c'est donc un multiple de $31$.**

## Going further

On obtient même plus que ce qui était demandé : le total n'est pas seulement un multiple de $31$, c'est exactement $31$ fois le nombre de poires.

Voici un exemple pour se convaincre que la situation est possible. Prenons $1$, $2$, $3$, $4$, $5$ et $6$ poires dans les six paniers, donc $P = 21$. Alors $r_i = 21 - p_i$ donne des nombres de pommes égaux à $20$, $19$, $18$, $17$, $16$, $15$, soit $R = 105 = 5 \times 21$. Ensuite $q_i = R - r_i$ donne des nombres de pêches égaux à $85$, $86$, $87$, $88$, $89$, $90$, soit $Q = 525 = 25 \times 21$. Le total vaut

$$21 + 105 + 525 = 651 = 31 \times 21$$

Essaie aussi de voir ce que donnerait le même problème avec $n$ paniers au lieu de $6$ : on trouve $R = (n-1)P$, puis $Q = (n-1)^2 P$, et le total vaut $\big(1 + (n-1) + (n-1)^2\big) P$. Pour $n = 6$ cela fait bien $1 + 5 + 25 = 31$.
