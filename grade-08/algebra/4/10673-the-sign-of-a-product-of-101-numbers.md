---
id: "10673"
title: "Le signe d'un produit de 101 nombres"
grade: 8
theme: algebra
difficulty: 4
duration_min: 30
tags: [signe, produit, regroupement, exemple, nombres-relatifs]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 2 (algèbre)"
  reference: "2024-12_Sujet-envoi-2-2024-2025.pdf, Exercices Juniors, exercice 5 ; corrigé 2025-01_Corrige-envoi-2-2024-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/12/Sujet-envoi-2-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-12_Sujet-envoi-2-2024-2025.pdf"
---

## Statement

On écrit en ligne $101$ nombres, tous différents de $0$ :

$$a_0, \ a_1, \ a_2, \ \ldots, \ a_{100}$$

On sait que la somme de deux nombres voisins est toujours strictement positive : $a_0 + a_1 > 0$, $a_1 + a_2 > 0$, et ainsi de suite jusqu'à $a_{99} + a_{100} > 0$. On sait aussi que la somme des $101$ nombres est strictement négative :

$$a_0 + a_1 + \cdots + a_{100} < 0$$

Quel peut être le signe du produit $a_0 \times a_1 \times \cdots \times a_{100}$ ?

## Hints

1. Le signe d'un produit de nombres non nuls dépend seulement du nombre de facteurs négatifs. Il faut donc savoir lesquels des $a_i$ sont négatifs.
2. Regarde $a_0$. Les cent autres nombres, de $a_1$ à $a_{100}$, se regroupent en paires de voisins. Que dire de leur somme ?
3. Même idée pour $a_2$ : groupe les autres nombres par paires de voisins, à gauche et à droite de $a_2$. Pour quels indices cela marche-t-il ?
4. Une fois le signe trouvé, n'oublie pas de montrer avec un exemple que de tels nombres existent vraiment.

## Solution

Un produit de nombres non nuls est positif s'il a un nombre pair de facteurs négatifs, et négatif s'il en a un nombre impair. On cherche donc quels nombres $a_i$ sont négatifs.

**Étape 1. Les nombres de rang pair sont négatifs.**

Prenons un indice pair $i$ (c'est-à-dire $i = 0, 2, 4, \ldots, 100$). À gauche de $a_i$, il y a les $i$ nombres $a_0, \ldots, a_{i-1}$ : c'est un nombre pair, on peut les grouper en paires de voisins $(a_0, a_1)$, $(a_2, a_3)$, …, $(a_{i-2}, a_{i-1})$. À droite, il y a les $100 - i$ nombres $a_{i+1}, \ldots, a_{100}$, encore un nombre pair, groupés en $(a_{i+1}, a_{i+2})$, …, $(a_{99}, a_{100})$. Par exemple, pour $i = 2$ :

$$a_0 + a_1 + \cdots + a_{100} = (a_0 + a_1) + a_2 + (a_3 + a_4) + (a_5 + a_6) + \cdots + (a_{99} + a_{100})$$

Chaque parenthèse est la somme de deux voisins, donc elle est strictement positive. La somme de toutes les parenthèses est donc strictement positive. Si $a_i$ était positif, la somme totale serait strictement positive. Or elle est strictement négative. Donc $a_i < 0$.

**Étape 2. Les nombres de rang impair sont positifs.**

Prenons un indice impair $i$, entre $1$ et $99$. Le voisin $a_{i+1}$ a un indice pair, donc $a_{i+1} < 0$ par l'étape 1. Comme $a_i + a_{i+1} > 0$, on a $a_i > -a_{i+1} > 0$.

**Étape 3. Le signe du produit.**

Les facteurs négatifs sont exactement $a_0, a_2, a_4, \ldots, a_{100}$. Il y en a $51$, qui est un nombre impair. Le produit est donc strictement négatif.

**Étape 4. Un exemple.**

Il reste à vérifier que de tels nombres existent : sinon la question n'aurait pas de réponse. Prenons $a_i = 1$ pour $i$ impair et $a_i = -\frac{99}{100}$ pour $i$ pair.

- Deux voisins sont toujours un $1$ et un $-\frac{99}{100}$, donc leur somme vaut $\frac{1}{100} > 0$.
- Il y a $50$ indices impairs et $51$ indices pairs, donc la somme totale vaut $50 - 51 \times \frac{99}{100} = \frac{5000 - 5049}{100} = -\frac{49}{100} < 0$.

**Conclusion : le produit $a_0 \times a_1 \times \cdots \times a_{100}$ est forcément strictement négatif, et cette situation peut vraiment se produire.**
