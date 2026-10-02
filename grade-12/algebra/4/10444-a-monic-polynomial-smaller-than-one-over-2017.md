---
id: "10444"
title: "Un polynôme unitaire plus petit que 1/2017 sur un segment"
grade: 12
theme: algebra
difficulty: 4
duration_min: 40
tags: [polynomes, maximum, suites, puissances, iteration]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 2 (algèbre)"
  reference: "2017-10_ofm-2016-2017-envoi-2.pdf, Exercices du groupe A, exercice 8 ; corrigé 2017-10_ofm-2016-2017-envoi-2-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-2.pdf"
---

## Statement

Un polynôme est dit *unitaire* si le coefficient de son terme de plus haut degré vaut $1$.

Soient $a < b$ deux réels, et soit $P$ un polynôme unitaire non constant tel que $|P(x)| < 2$ pour tout $x \in [a, b]$.

Montrer qu'il existe un polynôme $Q$, unitaire et non constant, tel que

$$|Q(x)| < \frac{1}{2017} \qquad \text{pour tout } x \in [a, b] .$$

## Hints

1. Si $P$ est unitaire, le polynôme $P^2$ l'est aussi. Et si l'on retranche une constante à un polynôme unitaire non constant, il reste unitaire et non constant.
2. Note $m$ le maximum de $|P|$ sur $[a, b]$. Entre quelles valeurs varie $P(x)^2$ quand $x$ parcourt $[a, b]$ ? Quelle constante retrancher à $P^2$ pour que le résultat soit le plus petit possible en valeur absolue ?
3. Répète l'opération. Si $m_k$ désigne le maximum obtenu après $k$ étapes, compare $\frac{m_{k+1}}{2}$ et $\left( \frac{m_k}{2} \right)^2$.

## Solution

Pour un polynôme $R$, la fonction $x \mapsto |R(x)|$ est continue sur le segment $[a, b]$, donc elle y atteint une plus grande valeur. On l'admet ici. On note $M(R)$ ce maximum.

**Étape 1 : une opération qui fait diminuer le maximum.** Soit $R$ un polynôme unitaire non constant, et posons $m = M(R)$ et

$$T(R) = R^2 - \frac{m^2}{2} .$$

- *$T(R)$ est unitaire et non constant.* Si $R$ est de degré $d \geqslant 1$, de terme dominant $x^d$, alors $R^2$ est de degré $2d$, de terme dominant $x^{2d}$. Retrancher une constante ne change pas ce terme, puisque $2d \geqslant 2$.
- *$M(T(R)) \leqslant m^2 / 2$.* Pour $x \in [a, b]$, on a $0 \leqslant R(x)^2 \leqslant m^2$, donc

$$-\frac{m^2}{2} \leqslant R(x)^2 - \frac{m^2}{2} \leqslant \frac{m^2}{2}, \qquad \text{c'est-à-dire} \qquad |T(R)(x)| \leqslant \frac{m^2}{2} .$$

**Étape 2 : on répète.** Posons $P_0 = P$ et $P_{k+1} = T(P_k)$ pour tout $k \geqslant 0$. D'après l'étape 1, et par récurrence, chaque $P_k$ est unitaire et non constant. Notons $m_k = M(P_k)$ et $u_k = m_k / 2$. L'étape 1 donne $m_{k+1} \leqslant m_k^2 / 2$, donc

$$u_{k+1} = \frac{m_{k+1}}{2} \leqslant \frac{m_k^2}{4} = u_k^2 .$$

**Étape 3 : une majoration explicite.** Montrons par récurrence que $u_k \leqslant u_0^{2^k}$ pour tout $k \geqslant 0$. C'est une égalité pour $k = 0$. Si c'est vrai au rang $k$, alors, comme tous ces nombres sont positifs ou nuls,

$$u_{k+1} \leqslant u_k^2 \leqslant \left( u_0^{2^k} \right)^2 = u_0^{2^{k+1}} .$$

**Étape 4 : conclusion.** Par hypothèse, $|P(x)| < 2$ en tout point de $[a, b]$, et en particulier au point où le maximum est atteint. Donc $m_0 < 2$, c'est-à-dire $0 \leqslant u_0 < 1$. La suite géométrique $(u_0^N)_{N \geqslant 0}$ tend donc vers $0$, et comme $2^k$ tend vers $+\infty$, il existe un entier $k$ tel que

$$u_0^{2^k} < \frac{1}{2 \times 2017} .$$

Pour cet entier, $m_k = 2u_k \leqslant 2\,u_0^{2^k} < 1/2017$.

**Conclusion.** Le polynôme $Q = P_k$ est unitaire, non constant, et vérifie $|Q(x)| \leqslant m_k < 1/2017$ pour tout $x \in [a, b]$.

## Going further

1. Montrer qu'en fait $M(T(R)) = m^2 / 2$ exactement. Pense au point où $|R|$ atteint son maximum.
2. On prend $[a, b] = [0, 2]$ et $P(x) = x - 1$. Calculer $m_1$, $m_2$, $m_3$ et $m_4$. Quel est le degré du polynôme $Q$ obtenu par la méthode ?
