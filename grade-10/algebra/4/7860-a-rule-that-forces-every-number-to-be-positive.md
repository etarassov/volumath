---
id: "7860"
title: "Une règle qui rend tous les nombres positifs"
grade: 10
theme: algebra
difficulty: 4
duration_min: 25
tags: [inegalite, raisonnement-par-labsurde, somme, decoupage]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015, La Muraille"
  reference: "stage_ete_2015.pdf, « La Muraille », exercice 2 (résolu par Étienne Massart et Arthur Léonard)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Soit $n$ un entier supérieur ou égal à $1$. On écrit au tableau $2n + 1$ nombres réels. Ces nombres
obéissent à la règle suivante :

> dès qu'on en choisit $n$, leur somme est strictement plus petite que la somme des $n + 1$ nombres
> restants.

Montrer qu'aucun de ces nombres n'est strictement négatif.

## Hints

1. Commence par un petit cas, $n = 1$ : trois nombres, et la règle dit que chacun d'eux est plus
   petit que la somme des deux autres. Essaie d'y mettre un nombre négatif et regarde ce qui casse.
2. Raisonne par l'absurde : suppose que l'un des $2n + 1$ nombres, appelons-le $a$, vérifie $a < 0$.
3. Mets $a$ de côté. Il reste $2n$ nombres : partage-les en deux paquets de $n$ nombres, de sommes
   $S_1$ et $S_2$.
4. Applique la règle au premier paquet, puis au second. Tu obtiens deux inégalités. Additionne-les.

## Solution

Raisonnons par l'absurde : supposons que l'un des nombres écrits au tableau, que nous appelons $a$,
vérifie $a < 0$.

**Le découpage.** Mettons $a$ de côté. Il reste exactement $2n$ nombres, et $2n$ est pair : on peut
donc les répartir en deux paquets de $n$ nombres chacun. Notons $S_1$ la somme du premier paquet et
$S_2$ celle du second.

**Première inégalité.** Choisissons les $n$ nombres du premier paquet. Leur somme vaut $S_1$. Les
$n + 1$ nombres restants sont ceux du second paquet, plus $a$ : leur somme vaut $S_2 + a$. La règle
donne
$$S_1 < S_2 + a.$$

**Deuxième inégalité.** Choisissons maintenant les $n$ nombres du second paquet. Leur somme vaut
$S_2$, et les $n + 1$ autres sont le premier paquet plus $a$, de somme $S_1 + a$. La règle donne
$$S_2 < S_1 + a.$$

**On additionne.** En ajoutant membre à membre ces deux inégalités :
$$S_1 + S_2 < S_1 + S_2 + 2a.$$
On simplifie par $S_1 + S_2$ des deux côtés, et il reste
$$0 < 2a, \qquad \text{c'est-à-dire} \qquad a > 0.$$

C'est en contradiction avec l'hypothèse $a < 0$.

**Conclusion.** Aucun des $2n + 1$ nombres n'est strictement négatif : ils sont tous positifs ou
nuls.

## Going further

On peut faire mieux : **aucun de ces nombres n'est nul non plus**, ils sont tous strictement
positifs. Voici un argument direct, qui redémontre l'exercice au passage.

Rangeons les $2n+1$ nombres dans l'ordre croissant :
$$x_1 \leq x_2 \leq \cdots \leq x_{2n+1}.$$
Appliquons la règle aux $n$ plus grands, c'est-à-dire à $x_{n+2}, \ldots, x_{2n+1}$. Les $n+1$
autres sont $x_1, \ldots, x_{n+1}$, et la règle donne
$$x_{n+2} + \cdots + x_{2n+1} < x_1 + x_2 + \cdots + x_{n+1}.$$

Comparons maintenant les deux membres terme à terme, en laissant $x_1$ de côté : on apparie
$x_{n+2}$ avec $x_2$, puis $x_{n+3}$ avec $x_3$, et ainsi de suite jusqu'à $x_{2n+1}$ avec
$x_{n+1}$. Dans chaque paire, le nombre de gauche porte le plus grand indice, donc il est le plus
grand. En additionnant ces $n$ comparaisons :
$$x_{n+2} + \cdots + x_{2n+1} \geq x_2 + \cdots + x_{n+1}.$$

En mettant les deux résultats bout à bout :
$$x_2 + \cdots + x_{n+1} \leq x_{n+2} + \cdots + x_{2n+1} < x_1 + x_2 + \cdots + x_{n+1},$$
et après simplification il reste $0 < x_1$. Le plus petit des nombres est strictement positif, donc
tous le sont.

Pour $n = 1$ la règle s'écrit : chacun des trois nombres est plus petit que la somme des deux
autres. C'est exactement l'inégalité triangulaire, celle qui dit quand trois longueurs peuvent
former un triangle. Les triplets autorisés sont donc les triplets de côtés d'un vrai triangle, par
exemple $2$, $3$, $4$.
