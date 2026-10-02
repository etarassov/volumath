---
id: "13212"
title: "Élever au carré et retrancher 2, vingt fois"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [puissances, identites-remarquables, recurrence, chiffres]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2016 (test de rentrée OFM), éliminatoires"
  reference: "2017-09_coupe_automne_2016_elim.pdf, exercices lycéens, exercice 13 ; corrigé 2017-09_coupe_automne_2016_elim_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2016_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2016_elim.pdf"
---

## Statement

On part du nombre $u_0 = 10 + \frac{1}{10}$. On calcule ensuite $u_1 = u_0^2 - 2$, puis $u_2 = u_1^2 - 2$, et plus généralement $u_{k+1} = u_k^2 - 2$ pour tout entier $k \geqslant 0$.

Soit $a$ l'entier le plus proche de $u_{20}$. Combien de chiffres a l'écriture décimale de $a$ ?

## Hints

1. Calcule $u_1$ en développant $\left(10 + \frac{1}{10}\right)^2$. Que remarques-tu ?
2. Plus généralement, développe $\left(t + \frac{1}{t}\right)^2 - 2$ pour un nombre $t$ non nul.
3. Trouve une formule pour $u_k$ de la forme $10^{\ldots} + 10^{-\ldots}$, puis regarde quelle partie de $u_{20}$ est minuscule.

## Solution

**Le calcul clé.** Pour tout nombre $t \neq 0$,

$$\left(t + \frac{1}{t}\right)^2 - 2 = t^2 + 2 + \frac{1}{t^2} - 2 = t^2 + \frac{1}{t^2}.$$

Autrement dit, si un terme s'écrit $t + \frac{1}{t}$, le terme suivant s'écrit $t^2 + \frac{1}{t^2}$ : on remplace $t$ par son carré.

**La formule pour $u_k$.** On part de $u_0 = 10 + \frac{1}{10}$, donc $t = 10$. Puis

$$u_1 = 10^2 + \frac{1}{10^2}, \qquad u_2 = 10^4 + \frac{1}{10^4}, \qquad u_3 = 10^8 + \frac{1}{10^8}, \qquad \ldots$$

À chaque étape, l'exposant est multiplié par $2$ (car $(10^m)^2 = 10^{2m}$). Après $k$ étapes, il vaut $2^k$ :

$$u_k = 10^{2^k} + \frac{1}{10^{2^k}}.$$

**L'entier le plus proche.** Pour $k = 20$, on a $u_{20} = 10^{2^{20}} + \frac{1}{10^{2^{20}}}$. Le premier terme est un entier. Le second est strictement compris entre $0$ et $\frac{1}{2}$ (il est même minuscule). L'entier le plus proche de $u_{20}$ est donc

$$a = 10^{2^{20}}.$$

**Le nombre de chiffres.** Le nombre $10^m$ s'écrit avec un $1$ suivi de $m$ zéros, donc avec $m + 1$ chiffres. Ici $m = 2^{20} = 1024 \times 1024 = 1\,048\,576$.

**Conclusion.** Le nombre $a$ a $1\,048\,576 + 1 = 1\,048\,577$ chiffres.
