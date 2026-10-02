---
id: "12602"
title: "Les suites siciliennes"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [suites, recurrence, parite, puissances-de-deux, construction, descente]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 18 novembre 2020"
  reference: "2020-11_Enonce-Test-1.pdf, exercice 2 ; corrigé 2020-11_Corrige-Test-1.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Énoncé-Test-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2020-11_Enonce-Test-1.pdf"
---

## Statement

On part d'un entier $k \geqslant 1$ et on a le droit, à chaque étape, de remplacer le nombre
$u$ que l'on a par l'un des quatre nombres
$$\frac{u}{2}, \qquad \frac{u}{3}, \qquad 2u + 1, \qquad 3u + 1,$$
à condition que le résultat soit encore un entier naturel non nul.

Autrement dit, une suite $(u_n)_{n \geqslant 0}$ d'entiers naturels non nuls est dite
*sicilienne* si, pour tout $n \geqslant 0$,
$$u_{n+1} \in \left\{ \frac{u_n}{2}, \ \frac{u_n}{3}, \ 2u_n + 1, \ 3u_n + 1 \right\}.$$

Démontrer que, pour tout entier $k \geqslant 1$, il existe une suite sicilienne qui part de
$u_0 = k$ et qui atteint $1$ : il existe un entier $\ell \geqslant 0$ tel que $u_\ell = 1$.

## Hints

1. Il suffit de montrer que, depuis n'importe quel entier $k \geqslant 2$, on peut atteindre un
   entier **plus petit** que $k$. Pourquoi cela suffit-il ?
2. Si $k$ est pair, c'est facile. Si $k$ est impair, essaie de faire « $3u + 1$ » puis
   « $u / 2$ ». Teste sur $k = 7$, $k = 11$, $k = 15$.
3. Regarde ce que deviennent ces deux étapes si l'on suit le nombre $k + 1$ au lieu de $k$.
   Par exemple, pour $k = 7$ : $7 \to 22 \to 11$, et $8 \to 12$.
4. Écris $k + 1 = 2^a \times m$ avec $m$ impair. Le couple d'étapes « $3u+1$ puis $u/2$ »
   remplace $k + 1$ par $\frac{3}{2}(k + 1)$. Combien de fois peut-on le répéter ? Où arrive-t-on ?
5. Une fois arrivé à $3^a m - 1$, qui est pair, divise par $2$, puis applique « $2u + 1$ ».
   Tu obtiens $3^a m$. Que reste-t-il à faire ?

## Solution

### Étape 1 : il suffit de savoir descendre

Montrons d'abord qu'il suffit d'établir la propriété suivante :

> **(D)** Depuis tout entier $k \geqslant 2$, on peut atteindre, par des étapes autorisées, un
> entier strictement plus petit que $k$.

En effet, supposons (D) vraie, et partons d'un entier $k \geqslant 1$. Si $k = 1$, il n'y a rien
à faire ($\ell = 0$). Sinon, on descend à un entier $k_1 < k$, puis, si $k_1 \geqslant 2$, à un
entier $k_2 < k_1$, et ainsi de suite. Une suite d'entiers naturels non nuls strictement
décroissante ne peut pas continuer indéfiniment : on finit par tomber sur $1$. (On peut aussi le
rédiger comme une récurrence forte sur $k$.)

### Étape 2 : le cas pair

Si $k$ est pair, l'étape « $u/2$ » donne directement $k/2 < k$.

### Étape 3 : le cas impair, en suivant $k + 1$

Supposons $k \geqslant 3$ impair. Alors $k + 1$ est pair. Écrivons
$$k + 1 = 2^a \times m \qquad \text{avec } a \geqslant 1 \text{ et } m \text{ impair},$$
c'est-à-dire qu'on divise $k + 1$ par $2$ autant de fois que possible.

**Une double étape.** Partons d'un entier $u$ impair et faisons « $3u + 1$ » puis « $u/2$ » (ce
qui est permis car $3u + 1$ est pair) :
$$u \;\longrightarrow\; 3u + 1 \;\longrightarrow\; \frac{3u + 1}{2}.$$
Regardons ce qui arrive au nombre $u + 1$. Au départ, il vaut $u + 1$. À l'arrivée, il vaut
$$\frac{3u + 1}{2} + 1 = \frac{3u + 3}{2} = \frac{3}{2}(u + 1).$$
**La double étape multiplie $u + 1$ par $\dfrac32$.**

**On la répète $a$ fois.** Au départ, $u + 1 = 2^a m$. Tant qu'il reste un facteur $2$ dans
$u + 1$, le nombre $u$ est impair et la double étape est permise. Après une double étape,
$u + 1 = 2^{a-1} \times 3 m$ ; après deux, $u + 1 = 2^{a-2} \times 3^2 m$ ; et après $a$ doubles
étapes,
$$u + 1 = 3^a m, \qquad \text{c'est-à-dire} \qquad u = 3^a m - 1 .$$

Par exemple, pour $k = 15$ : $k + 1 = 16 = 2^4$, donc $a = 4$ et $m = 1$, et l'on obtient
$15 \to 46 \to 23 \to 70 \to 35 \to 106 \to 53 \to 160 \to 80$, avec bien $80 = 3^4 - 1$.

**On se débarrasse du $-1$.** Le nombre $3^a m$ est impair (produit de nombres impairs), donc
$3^a m - 1$ est pair. On fait « $u/2$ » puis « $2u + 1$ » :
$$3^a m - 1 \;\longrightarrow\; \frac{3^a m - 1}{2} \;\longrightarrow\; 2 \times \frac{3^a m - 1}{2} + 1 = 3^a m .$$

**On divise par $3$.** Enfin, on applique $a$ fois l'étape « $u/3$ » :
$$3^a m \longrightarrow 3^{a-1} m \longrightarrow \cdots \longrightarrow m .$$

Tous les nombres rencontrés sont des entiers naturels non nuls, donc c'est bien une suite
sicilienne.

### Étape 4 : on est bien descendu

On est arrivé à $m = \dfrac{k + 1}{2^a}$. Comme $a \geqslant 1$,
$$m \leqslant \frac{k + 1}{2} < k \qquad \text{car } k \geqslant 2 .$$

### Conclusion

Depuis tout entier $k \geqslant 2$, pair ou impair, on sait atteindre un entier plus petit. D'après
l'étape 1, **depuis tout entier $k \geqslant 1$, une suite sicilienne bien choisie finit par
atteindre $1$.**

## Going further

Les étapes « $u/2$ » et « $3u + 1$ » rappellent la célèbre suite de Syracuse, où l'on fait
« $u/2$ » si $u$ est pair et « $3u + 1$ » si $u$ est impair. Personne ne sait démontrer que la
suite de Syracuse atteint toujours $1$. Ici, on a le droit de **choisir** l'étape, et les
opérations « $u/3$ » et « $2u + 1$ » suffisent à rendre le problème accessible.

La méthode de la solution n'est pas toujours la plus courte. Depuis $k = 7$, elle donne
$7 \to 22 \to 11 \to 34 \to 17 \to 52 \to 26 \to 13 \to 27 \to 9 \to 3 \to 1$, soit $11$ étapes, alors que
$7 \to 15 \to 5 \to 16 \to 8 \to 4 \to 2 \to 1$ n'en demande que $7$. Une recherche par ordinateur
montre qu'on ne peut pas faire moins de $7$ étapes depuis $7$.
