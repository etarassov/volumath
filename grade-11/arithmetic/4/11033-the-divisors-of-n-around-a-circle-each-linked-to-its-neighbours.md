---
id: "11033"
title: "Les diviseurs de n en ronde, chacun relié à ses voisins"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [diviseurs, nombre-de-diviseurs, decomposition-en-facteurs-premiers, parite, carres-parfaits, construction]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 3 (arithmétique)"
  reference: "2022-01_sujet-envoi-3.pdf, Exercices Seniors, exercice 14 ; corrigé 2022-02_corrige-envoi-3.pdf. Le sujet dit n ⩾ 1 ; le cas n = 1, où l'unique diviseur n'a pas de voisin, est écarté ici."
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/01/sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-01_sujet-envoi-3.pdf"
---

## Statement

On dit que deux entiers $a, b \geqslant 1$ sont **reliés** s'il existe un nombre premier $p$ tel que
$a = pb$ ou $b = pa$. Par exemple, $6$ et $18$ sont reliés, mais $6$ et $24$ ne le sont pas.

Trouver tous les entiers $n \geqslant 2$ ayant la propriété suivante : on peut écrire tous les diviseurs
positifs de $n$ ($1$ et $n$ compris), chacun exactement une fois, autour d'un cercle, de sorte que chaque
diviseur soit relié à ses deux voisins.

(Quand $n$ n'a que deux diviseurs, chacun est le voisin de l'autre, des deux côtés.)

## Hints

1. Essaie $n = 4$, $8$, $6$ et $12$. Quand $n = p^\alpha$ avec $\alpha \geqslant 2$, quels sont les voisins possibles du diviseur $1$ ?
2. Pour un diviseur, compte ses facteurs premiers avec leur multiplicité ($12 = 2 \times 2 \times 3$ en a trois). Comment change la parité de ce nombre quand on passe d'un diviseur à son voisin ? Déduis-en une condition sur le nombre de diviseurs de $n$.
3. Pour $n = p^a q^b$ avec $a$ impair, range les diviseurs dans un tableau : l'exposant de $p$ donne la ligne, celui de $q$ la colonne. Parcours ce tableau en serpentin.
4. Pour ajouter un nouveau facteur premier $q^c$, remplace chaque diviseur $d$ du cercle déjà construit par la colonne $d, qd, \ldots, q^c d$, parcourue une fois vers le haut, une fois vers le bas.

## Solution

Écrivons $n = p_1^{\alpha_1} p_2^{\alpha_2} \cdots p_r^{\alpha_r}$ avec des nombres premiers distincts
$p_i$ et des exposants $\alpha_i \geqslant 1$. Les diviseurs de $n$ sont les nombres
$p_1^{\beta_1} \cdots p_r^{\beta_r}$ avec $0 \leqslant \beta_i \leqslant \alpha_i$, et il y en a

$$d(n) = (\alpha_1 + 1)(\alpha_2 + 1) \cdots (\alpha_r + 1) .$$

Deux diviseurs sont reliés exactement quand on passe de l'un à l'autre en augmentant ou en diminuant de
$1$ **un seul** des exposants.

Nous allons montrer que **la propriété est vraie exactement quand $n$ est premier, ou quand $n$ a au moins
deux facteurs premiers distincts et n'est pas un carré parfait.**

### Les cas impossibles

**Les puissances $n = p^\alpha$ avec $\alpha \geqslant 2$.** Les diviseurs sont $1, p, \ldots, p^\alpha$ :
il y en a au moins trois, donc $1$ a deux voisins différents. Mais le seul diviseur relié à $1$ est $p$.
C'est impossible. (Pour $n = p$ premier, le cercle $1, p$ convient.)

**Les carrés parfaits.** Pour un entier $m \geqslant 1$, notons $\Omega(m)$ le nombre de ses facteurs
premiers comptés avec multiplicité, c'est-à-dire la somme des exposants. Si $a = pb$ avec $p$ premier,
alors $\Omega(a) = \Omega(b) + 1$ : deux nombres reliés ont des $\Omega$ de parités différentes.

Supposons les diviseurs placés sur le cercle comme demandé. En faisant le tour, la parité de $\Omega$
change à chaque pas. On revient au point de départ après $d(n)$ pas, avec la même parité qu'au départ :
le nombre $d(n)$ est donc **pair**.

Or si $n > 1$ est un carré parfait, tous les $\alpha_i$ sont pairs, donc tous les $\alpha_i + 1$ sont
impairs, et $d(n)$ est impair. C'est impossible.

### Les cas possibles

Supposons maintenant que $n$ a au moins deux facteurs premiers distincts et n'est pas un carré. Un des
exposants est impair : numérotons les facteurs premiers pour que ce soit $\alpha_1$.

**Deux facteurs premiers.** Soit $m = p^a q^b$ avec $a$ impair et $b \geqslant 1$. On range ses diviseurs
$p^i q^j$ dans un tableau, ligne $i$ de $0$ à $a$, colonne $j$ de $0$ à $b$, et on parcourt :

- la ligne $0$ de gauche à droite : $1, q, q^2, \ldots, q^b$ ;
- puis les lignes $1, 2, \ldots, a$ **sur les colonnes $1$ à $b$ seulement**, en serpentin : la ligne $1$
  de droite à gauche ($pq^b, \ldots, pq$), la ligne $2$ de gauche à droite ($p^2 q, \ldots, p^2 q^b$),
  et ainsi de suite ;
- comme $a$ est impair, la ligne $a$ est parcourue de droite à gauche et se termine en $p^a q$ ;
- on redescend enfin la colonne $0$ : $p^a, p^{a-1}, \ldots, p$, et on revient à $1$.

Chaque pas change un seul exposant de $1$, et chaque case du tableau est visitée une fois. Par exemple,
pour $12 = 3^1 \times 2^2$ (donc $p = 3$, $a = 1$, $q = 2$, $b = 2$), on obtient le cercle

$$1, \; 2, \; 4, \; 12, \; 6, \; 3 \qquad (\text{puis retour à } 1).$$

**Ajouter un facteur premier.** Supposons qu'on a déjà un cercle valable $d_1, d_2, \ldots, d_M$ pour les
diviseurs d'un entier $m$, avec $M$ **pair**. Soit $q$ un nombre premier qui ne divise pas $m$, et
$c \geqslant 1$. Les diviseurs de $m q^c$ sont les nombres $q^j d_i$, avec $0 \leqslant j \leqslant c$. On
les écrit dans l'ordre

$$\underbrace{d_1, \, q d_1, \, \ldots, \, q^c d_1}_{\text{on monte}}, \;
\underbrace{q^c d_2, \, \ldots, \, q d_2, \, d_2}_{\text{on descend}}, \;
\underbrace{d_3, \, \ldots, \, q^c d_3}_{\text{on monte}}, \; \ldots, \;
\underbrace{q^c d_M, \, \ldots, \, d_M}_{\text{on descend}}$$

et on revient à $d_1$. Dans une colonne, on multiplie ou divise par $q$ à chaque pas. Entre deux colonnes,
on passe de $q^c d_i$ à $q^c d_{i+1}$, ou de $d_i$ à $d_{i+1}$, et ces nombres sont reliés car $d_i$ et
$d_{i+1}$ le sont. Comme $M$ est pair, la dernière colonne est descendue et se termine en $d_M$, qui est
relié à $d_1$. On a donc un cercle valable pour $m q^c$, avec $M(c + 1)$ diviseurs, nombre encore pair.

**Conclusion de la construction.** On part de $m = p_1^{\alpha_1} p_2^{\alpha_2}$, qui a un cercle
valable puisque $\alpha_1$ est impair, et dont le nombre de diviseurs $(\alpha_1 + 1)(\alpha_2 + 1)$ est
pair. On ajoute ensuite $p_3^{\alpha_3}$, puis $p_4^{\alpha_4}$, et ainsi de suite jusqu'à
$p_r^{\alpha_r}$. On obtient un cercle valable pour $n$.

### Réponse

Un entier $n \geqslant 2$ a la propriété si et seulement si $n$ est premier, ou bien $n$ a au moins deux
facteurs premiers distincts et n'est pas un carré parfait. Autrement dit, les seuls entiers qui ne
conviennent pas sont les carrés parfaits et les puissances $p^\alpha$ d'un nombre premier avec
$\alpha \geqslant 2$.
