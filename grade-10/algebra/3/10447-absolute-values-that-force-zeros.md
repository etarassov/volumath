---
id: "10447"
title: "Des valeurs absolues qui forcent des zéros"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [valeur-absolue, signe, principe-des-tiroirs, contre-exemple]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2017-2018 n° 3 (algèbre)"
  reference: "2017-12_pofm-2017-2018-envoi3.pdf, Exercices du groupe B, exercice 2 ; corrigé 2018-01_pofm-2017-2018-envoi3-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/12/pofm-2017-2018-envoi3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-12_pofm-2017-2018-envoi3.pdf"
---

## Statement

a) Soient $a$, $b$ et $c$ trois nombres réels tels que

   $$|a| \geqslant |a + b|, \qquad |b| \geqslant |b + c| \qquad \text{et} \qquad |c| \geqslant |c + a| .$$

   Montrer que $a = b = c = 0$.

b) Soient $a$, $b$, $c$ et $d$ quatre nombres réels tels que

   $$|a| \geqslant |a + b|, \qquad |b| \geqslant |b + c|, \qquad |c| \geqslant |c + d| \qquad \text{et} \qquad |d| \geqslant |d + a| .$$

   A-t-on forcément $a = b = c = d = 0$ ?

## Hints

1. Si $x$ et $y$ sont deux nombres de même signe, que vaut $|x + y|$ en fonction de $|x|$ et $|y|$ ?
2. Parmi trois nombres, il y en a forcément deux de même signe. Que donne alors la condition qui les relie ?
3. Si l'un des trois nombres est nul, regarde la condition qui commence par lui.
4. Pour la question b), essaie des nombres tels que toutes les sommes $a + b$, $b + c$, $c + d$, $d + a$ soient nulles.

## Solution

On dira que deux nombres sont *de même signe* s'ils sont tous les deux positifs ou nuls, ou tous les deux négatifs ou nuls.

**Un fait utile.** Si $x$ et $y$ sont de même signe, alors $|x + y| = |x| + |y|$. En effet, si $x \geqslant 0$ et $y \geqslant 0$, alors $|x + y| = x + y = |x| + |y|$, et si $x \leqslant 0$ et $y \leqslant 0$, alors $|x + y| = -x - y = |x| + |y|$.

**Question a).** Les trois conditions ont la même forme : $|x| \geqslant |x + y|$, où $(x, y)$ vaut $(a, b)$, puis $(b, c)$, puis $(c, a)$. On lit ces couples en tournant : $a$ est suivi de $b$, $b$ de $c$, et $c$ de $a$.

*Étape 1 : l'un des nombres est nul.* Chacun des trois nombres est soit positif ou nul, soit strictement négatif. Il n'y a que deux possibilités pour trois nombres, donc deux d'entre eux sont de même signe. Or deux nombres quelconques parmi $a$, $b$, $c$ forment toujours l'un des trois couples $(a, b)$, $(b, c)$, $(c, a)$, dans un ordre ou dans l'autre. Il existe donc un couple $(x, y)$ parmi ces trois, formé de deux nombres de même signe. Pour ce couple, la condition et le fait utile donnent

$$|x| \geqslant |x + y| = |x| + |y| ,$$

donc $|y| \leqslant 0$, c'est-à-dire $y = 0$.

*Étape 2 : de proche en proche.* Si l'un des nombres est nul, celui qui le suit l'est aussi. En effet, si $(x, y)$ est l'un des trois couples et si $x = 0$, la condition s'écrit $0 \geqslant |0 + y| = |y|$, donc $y = 0$. En partant du nombre nul trouvé à l'étape 1 et en tournant deux fois, on obtient que les trois nombres sont nuls.

Par exemple, si $b = 0$, la condition $|b| \geqslant |b + c|$ donne $c = 0$, puis $|c| \geqslant |c + a|$ donne $a = 0$.

**Conclusion de la question a).** On a $a = b = c = 0$.

**Question b).** La réponse est non. Prenons $a = c = 1$ et $b = d = -1$. Alors

$$a + b = b + c = c + d = d + a = 0 ,$$

donc les quatre conditions s'écrivent $1 \geqslant 0$ et sont vraies, alors qu'aucun des quatre nombres n'est nul.

Le raisonnement de la question a) ne marche plus ici : deux nombres de même signe ne forment pas forcément l'un des quatre couples $(a, b)$, $(b, c)$, $(c, d)$, $(d, a)$. Dans l'exemple, $a$ et $c$ ont le même signe, mais aucune condition ne les relie directement.

## Going further

1. On dispose $n$ nombres réels $x_1, \ldots, x_n$ autour d'un cercle, et on suppose que $|x_i| \geqslant |x_i + x_{i+1}|$ pour tout $i$, avec la convention $x_{n+1} = x_1$. Pour quelles valeurs de $n$ peut-on être sûr que tous les $x_i$ sont nuls ?
2. Dans la question b), trouver toutes les solutions. On pourra montrer que les signes de $a$, $b$, $c$, $d$ doivent alterner.
