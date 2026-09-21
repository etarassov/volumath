---
id: "8677"
title: "La moyenne des plus petits éléments"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [denombrement, coefficients binomiaux, double comptage, formule du baton de hockey]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, La Muraille"
  reference: "valbonne-2023.pdf, chapitre « La Muraille », exercice 17 (niveau 1, trois étoiles). La Muraille ne publie pas de corrigés ; solution rédigée ici et vérifiée numériquement."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soient $n$ et $k$ deux entiers avec $1 \leqslant k \leqslant n$.

Chaque partie à $k$ éléments de $\{1, 2, \ldots, n\}$ possède un plus petit élément. Calculer la **moyenne** de tous ces plus petits éléments.

## Hints

1. Commence par un petit cas complet : $n = 4$ et $k = 2$. Écris les six parties, relève les six minimums, fais la moyenne.
2. Recommence avec $n = 5$, $k = 2$, puis $n = 5$, $k = 3$. Devine la formule.
3. Pour la démonstration, il faut calculer la somme de tous les minimums. Une première méthode : compter combien de parties ont pour minimum exactement $m$.
4. Si le minimum vaut $m$, les $k-1$ autres éléments sont choisis parmi $\{m+1, \ldots, n\}$. Combien y a-t-il de choix ?
5. Une seconde méthode, plus élégante : au lieu de compter les parties de minimum $m$, compte celles dont le minimum est **au moins** $m$. Puis utilise le fait qu'un entier positif $M$ vérifie $M = \#\{m \geqslant 1 : M \geqslant m\}$.
6. Tu auras besoin de la somme $\binom{k}{k} + \binom{k+1}{k} + \cdots + \binom{n}{k}$. Elle a une forme très simple.

## Solution

Notons $\mathcal{F}$ l'ensemble des parties à $k$ éléments de $\{1, \ldots, n\}$. Il y en a $\binom{n}{k}$, et pour chaque partie $A$ on note $\min A$ son plus petit élément. La moyenne cherchée est

$$\mu = \frac{1}{\binom{n}{k}} \sum_{A \in \mathcal{F}} \min A .$$

Tout le travail est donc de calculer la somme $\displaystyle \Sigma = \sum_{A \in \mathcal{F}} \min A$.

### Un outil : les parties dont le minimum est au moins $m$

Une partie $A$ vérifie $\min A \geqslant m$ exactement quand tous ses éléments sont dans $\{m, m+1, \ldots, n\}$, ensemble qui compte $n - m + 1$ éléments. Le nombre de telles parties est donc

$$N_m = \binom{n - m + 1}{k} .$$

*(Ce nombre vaut $0$ dès que $n - m + 1 < k$, ce qui est cohérent.)*

### L'astuce de comptage

Pour un entier $M \geqslant 1$, on a l'identité évidente mais utile

$$M = \underbrace{1 + 1 + \cdots + 1}_{M \text{ fois}} = \sum_{m = 1}^{n} [\, M \geqslant m \,] ,$$

où le crochet vaut $1$ si la condition est vraie et $0$ sinon (ici $M \leqslant n$, donc la somme jusqu'à $n$ suffit).

Appliquons cela à $M = \min A$ et sommons sur toutes les parties :

$$\Sigma = \sum_{A \in \mathcal{F}} \ \sum_{m=1}^{n} [\, \min A \geqslant m \,] = \sum_{m=1}^{n} \ \sum_{A \in \mathcal{F}} [\, \min A \geqslant m \,] = \sum_{m=1}^{n} N_m .$$

On a simplement **échangé les deux sommes** : au lieu de parcourir les parties une par une, on parcourt les seuils $m$ et on compte à chaque fois les parties qui le dépassent. C'est un double comptage.

### On calcule la somme

$$\Sigma = \sum_{m=1}^{n} \binom{n-m+1}{k} .$$

Quand $m$ parcourt $1, 2, \ldots, n$, le nombre $j = n - m + 1$ parcourt $n, n-1, \ldots, 1$. Donc

$$\Sigma = \sum_{j=1}^{n} \binom{j}{k} = \binom{k}{k} + \binom{k+1}{k} + \cdots + \binom{n}{k} ,$$

les termes avec $j < k$ étant nuls.

Cette somme est une somme classique, dite **formule du bâton de hockey** :

$$\binom{k}{k} + \binom{k+1}{k} + \cdots + \binom{n}{k} = \binom{n+1}{k+1} .$$

*Démonstration rapide, par récurrence sur $n$.* Pour $n = k$, les deux membres valent $1$. Et si la formule est vraie au rang $n$, alors au rang $n+1$ on ajoute $\binom{n+1}{k}$ et la relation de Pascal donne

$$\binom{n+1}{k+1} + \binom{n+1}{k} = \binom{n+2}{k+1} .$$

Donc $\Sigma = \binom{n+1}{k+1}$.

### La moyenne

$$\mu = \frac{\Sigma}{\binom{n}{k}} = \frac{\binom{n+1}{k+1}}{\binom{n}{k}} = \frac{\dfrac{(n+1)!}{(k+1)!\,(n-k)!}}{\dfrac{n!}{k!\,(n-k)!}} = \frac{(n+1)!}{(k+1)!} \times \frac{k!}{n!} = \frac{n+1}{k+1} .$$

$$\boxed{\ \mu = \frac{n+1}{k+1}\ }$$

**Vérification.** Pour $n = 5$ et $k = 2$ : la formule annonce $\frac{6}{3} = 2$. Les dix parties à deux éléments ont pour minimums $1$ (quatre fois, avec $2,3,4,5$), $2$ (trois fois), $3$ (deux fois), $4$ (une fois) : la somme vaut $4 + 6 + 6 + 4 = 20$, et $20 / 10 = 2$. 

## Going further

Le résultat est d'une simplicité surprenante, et il a une jolie interprétation : les $k$ éléments choisis découpent $\{1, \ldots, n\}$ en $k+1$ morceaux (avant le premier, entre les éléments successifs, après le dernier). En moyenne, ces morceaux se partagent équitablement les $n+1$ « positions », et le minimum tombe donc autour de $\frac{n+1}{k+1}$.

**Une autre démonstration**, plus directe. Le nombre de parties dont le minimum vaut exactement $m$ est $\binom{n-m}{k-1}$ : on choisit les $k-1$ autres éléments parmi les $n-m$ entiers strictement plus grands que $m$. La somme devient $\Sigma = \sum_m m \binom{n-m}{k-1}$, qu'il faut alors calculer. C'est faisable, mais nettement plus pénible : l'astuce du seuil évite entièrement ce calcul. Retiens-la, elle sert souvent.

Pour continuer : quelle est la moyenne du **plus grand** élément d'une partie à $k$ éléments de $\{1, \ldots, n\}$ ? *(Indication : par symétrie, remplace chaque élément $a$ par $n+1-a$.)*
