---
id: "40887"
title: "Les parties entières des multiples de 1/x : premiers cas"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 60
tags: [partie-entiere, partie-fractionnaire, principe-des-tiroirs, rationnels, approximation, ensembles]
adapted_from: null
see_also: ["40888", "40889", "40890", "40891", "40892", "7534"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2024, mathématiques"
  reference: "cg-2024-s-sujet.pdf, problème 3 « Intersections et réunions », préambule et partie 1 « Quelques cas particuliers », questions 1 à 5"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2024-s-sujet.pdf"
---

## Statement

On note $\mathbb{N}$ l'ensemble des entiers naturels et $\mathbb{N}^*$ celui des entiers naturels non nuls.

Pour tout réel $x$, on note $\mathrm{ent}(x)$ la *partie entière* de $x$ : c'est l'unique entier relatif $n$ tel que $n \leqslant x < n + 1$. Par exemple $\mathrm{ent}(2) = 2$, $\mathrm{ent}(\text{9,99}) = 9$, $\mathrm{ent}(\pi) = 3$ et $\mathrm{ent}(-e) = -3$. On note $\mathrm{frac}(x) = x - \mathrm{ent}(x)$ la *partie fractionnaire* de $x$ ; elle appartient à $[0, 1[$. Par exemple $\mathrm{frac}(\pi) = \pi - 3$ et $\mathrm{frac}(-e) = 3 - e$. Pour deux réels $x$ et $y$, on note $\max\{x ; y\}$ le plus grand des deux.

Pour tout réel $x > 0$, on note $\mathcal{E}(x)$ l'ensemble

$$\mathcal{E}(x) = \left\{ \mathrm{ent}\left(\frac{1}{x}\right) ; \mathrm{ent}\left(\frac{2}{x}\right) ; \mathrm{ent}\left(\frac{3}{x}\right) ; \ldots \right\}.$$

C'est l'ensemble des entiers $k \geqslant 0$ pour lesquels il existe un entier $n \geqslant 1$ tel que $k \leqslant \frac{n}{x} < k + 1$.

Soit $\alpha > 0$ et $\beta > 0$. On considère les deux propriétés suivantes :

- **propriété $\mathbf{P}_\cap$** : les ensembles $\mathcal{E}(\alpha)$ et $\mathcal{E}(\beta)$ n'ont aucun élément commun ;
- **propriété $\mathbf{P}_\cup$** : la réunion de $\mathcal{E}(\alpha)$ et $\mathcal{E}(\beta)$ est exactement $\mathbb{N}^*$.

1. Soit $x$ un réel.

   a) Démontrer que $x - 1 < \mathrm{ent}(x) \leqslant x$.

   b) Soit $n$ un entier relatif et $y$ un réel tel que $0 \leqslant y < 1$. On suppose que $x = n + y$. Exprimer $n$ et $y$ à l'aide de $\mathrm{ent}(x)$ et $\mathrm{frac}(x)$.

2. Soit $x > 0$. Déterminer $\mathcal{E}(x)$

   a) lorsque $x = 1$ ;

   b) lorsque $x > 1$.

3. Lesquelles des propriétés $\mathbf{P}_\cap$ et $\mathbf{P}_\cup$ sont vraies

   a) lorsque $\max\{\alpha ; \beta\} = 1$ ?

   b) lorsque $\max\{\alpha ; \beta\} > 1$ ?

4. Soit $x$ un réel et $n$ un entier, $n \geqslant 1$.

   a) Démontrer que, pour tout entier $k \geqslant 0$, l'entier $\mathrm{ent}(n\,\mathrm{frac}(kx))$ appartient à $\{0 ; 1 ; \ldots ; n-1\}$.

   b) Démontrer qu'il existe deux entiers $k$ et $\ell$ tels que $0 \leqslant k < \ell \leqslant n$ et $\mathrm{ent}(n\,\mathrm{frac}(kx)) = \mathrm{ent}(n\,\mathrm{frac}(\ell x))$.

   c) On pose $m = \ell - k$. Démontrer que $\mathrm{frac}(mx)$ appartient à l'un des deux intervalles $[0 ; \frac{1}{n}[$ ou $]1 - \frac{1}{n} ; 1[$.

   d) On suppose ici que $1 - \frac{1}{n} < \mathrm{frac}(mx) < 1$, et on pose $u = \mathrm{ent}\left(\frac{1}{1 - \mathrm{frac}(mx)}\right)$. Démontrer que $\mathrm{ent}(umx) = u\,\mathrm{ent}(mx) + u - 1$ et que $0 \leqslant \mathrm{frac}(umx) < \frac{1}{n}$.

   e) Démontrer que, dans tous les cas, il existe un entier $v \geqslant 1$ tel que $0 \leqslant \mathrm{frac}(vx) < \frac{1}{n}$.

5. On suppose ici que $\max\{\alpha ; \beta\} < 1$ et que $\alpha = \frac{p}{q}$, où $p$ et $q$ sont des entiers naturels non nuls.

   a) Déduire de la question 4 que, pour tout réel $\varepsilon > 0$, il existe deux entiers $k \geqslant 1$ et $\ell \geqslant 1$ tels que $qk \leqslant \frac{\ell}{\beta} < qk + \varepsilon$.

   b) Lesquelles des propriétés $\mathbf{P}_\cap$ et $\mathbf{P}_\cup$ sont vraies ?

## Hints

1. **Question 2.** Quand $x > 1$, les nombres $\frac{1}{x}, \frac{2}{x}, \frac{3}{x}, \ldots$ avancent par pas de $\frac{1}{x} < 1$. Peuvent-ils « sauter » par-dessus un entier ?
2. **Question 3.** Remarquez que, si $x \leqslant 1$, alors $\frac{n}{x} \geqslant 1$ pour tout $n \geqslant 1$, donc $\mathcal{E}(x) \subset \mathbb{N}^*$.
3. **Question 4.** b) Principe des tiroirs : combien d'entiers $k$ entre $0$ et $n$, et combien de valeurs possibles ?
4. **Question 4.** c) Les deux nombres $\mathrm{frac}(kx)$ et $\mathrm{frac}(\ell x)$ sont dans un même intervalle $[\frac{j}{n} ; \frac{j+1}{n}[$. Que dire de leur différence ? Puis utilisez la question 1 b).
5. **Question 4.** d) Posez $\delta = 1 - \mathrm{frac}(mx)$, qui est petit. Alors $umx = u\,\mathrm{ent}(mx) + u - u\delta$, et $u\delta$ est un peu inférieur ou égal à $1$.
6. **Question 5.** a) Appliquez la question 4 e) au réel $x = \frac{1}{q\beta}$, avec un $n$ bien choisi.
7. **Question 5.** b) Pour $n = pk$, que vaut $\frac{n}{\alpha}$ ? Pour la réunion, regardez l'entier $qk - 1$.

## Solution

**1.** a) Posons $n = \mathrm{ent}(x)$. Par définition $n \leqslant x < n + 1$. La première inégalité donne $\mathrm{ent}(x) \leqslant x$, la seconde $x - 1 < n$.

b) De $0 \leqslant y < 1$ on tire $n \leqslant x < n + 1$. Comme $n$ est un entier, c'est l'unique entier de la définition : $n = \mathrm{ent}(x)$, puis $y = x - n = \mathrm{frac}(x)$.

**2.** a) Pour $x = 1$, $\mathrm{ent}\left(\frac{n}{1}\right) = n$, donc $\mathcal{E}(1) = \mathbb{N}^*$.

b) Soit $x > 1$, de sorte que $0 < \frac{1}{x} < 1$. L'entier $0$ est dans $\mathcal{E}(x)$, car $\mathrm{ent}\left(\frac{1}{x}\right) = 0$. Soit $k \geqslant 1$. Les nombres $\frac{n}{x}$ deviennent aussi grands qu'on veut ; soit $n$ le plus petit entier $n \geqslant 1$ tel que $\frac{n}{x} \geqslant k$. Comme $\frac{1}{x} < 1 \leqslant k$, on a $n \geqslant 2$, et par minimalité $\frac{n-1}{x} < k$. Donc

$$k \leqslant \frac{n}{x} = \frac{n-1}{x} + \frac{1}{x} < k + 1,$$

et $\mathrm{ent}\left(\frac{n}{x}\right) = k$. Ainsi $\mathcal{E}(x) = \mathbb{N}$ : tous les entiers $k \geqslant 0$.

**3.** Remarque : si $0 < x \leqslant 1$, alors $\frac{n}{x} \geqslant n \geqslant 1$ pour tout $n \geqslant 1$, donc $\mathcal{E}(x) \subset \mathbb{N}^*$. Et $\mathcal{E}(x)$ n'est jamais vide.

Les deux propriétés ne changent pas quand on échange $\alpha$ et $\beta$ ; on peut donc supposer $\alpha = \max\{\alpha ; \beta\}$.

a) Si $\alpha = 1$, alors $\mathcal{E}(\alpha) = \mathbb{N}^*$, et $\mathcal{E}(\beta) \subset \mathbb{N}^*$ car $\beta \leqslant 1$. La réunion est $\mathbb{N}^*$ : $\mathbf{P}_\cup$ est vraie. L'intersection est $\mathcal{E}(\beta)$, qui n'est pas vide : $\mathbf{P}_\cap$ est fausse.

b) Si $\alpha > 1$, alors $\mathcal{E}(\alpha) = \mathbb{N}$. La réunion contient $0$, donc n'est pas $\mathbb{N}^*$ : $\mathbf{P}_\cup$ est fausse. L'intersection est $\mathcal{E}(\beta)$, non vide : $\mathbf{P}_\cap$ est fausse aussi.

**4.** a) On a $0 \leqslant \mathrm{frac}(kx) < 1$, donc $0 \leqslant n\,\mathrm{frac}(kx) < n$, et sa partie entière est un entier entre $0$ et $n - 1$.

b) Les $n + 1$ entiers $k = 0, 1, \ldots, n$ donnent chacun une valeur de $\mathrm{ent}(n\,\mathrm{frac}(kx))$ parmi les $n$ valeurs $0, 1, \ldots, n-1$. D'après le principe des tiroirs, deux de ces entiers, $k < \ell$, donnent la même valeur.

c) Notons $j$ cette valeur commune. Alors $j \leqslant n\,\mathrm{frac}(kx) < j + 1$, donc $\mathrm{frac}(kx) \in [\frac{j}{n} ; \frac{j+1}{n}[$, et de même pour $\mathrm{frac}(\ell x)$. La différence $d = \mathrm{frac}(\ell x) - \mathrm{frac}(kx)$ vérifie donc $-\frac{1}{n} < d < \frac{1}{n}$. Par ailleurs

$$mx = \ell x - kx = \left(\mathrm{ent}(\ell x) - \mathrm{ent}(kx)\right) + d.$$

- Si $d \geqslant 0$, on a écrit $mx$ comme un entier plus un réel de $[0, 1[$ ; d'après 1 b), $\mathrm{frac}(mx) = d \in [0 ; \frac{1}{n}[$.
- Si $d < 0$, on écrit $mx = \left(\mathrm{ent}(\ell x) - \mathrm{ent}(kx) - 1\right) + (1 + d)$ avec $1 + d \in ]1 - \frac{1}{n} ; 1[$, donc $\mathrm{frac}(mx) = 1 + d \in ]1 - \frac{1}{n} ; 1[$.

d) Posons $f = \mathrm{frac}(mx)$ et $\delta = 1 - f$, de sorte que $0 < \delta < \frac{1}{n}$. Alors $\frac{1}{\delta} > n$, donc $u = \mathrm{ent}\left(\frac{1}{\delta}\right) \geqslant n \geqslant 1$. Par définition, $u \leqslant \frac{1}{\delta} < u + 1$, d'où $u\delta \leqslant 1 < u\delta + \delta$, c'est-à-dire

$$1 - \delta < u\delta \leqslant 1.$$

Posons $r = 1 - u\delta$ : on a $0 \leqslant r < \delta < \frac{1}{n}$. Or

$$umx = u\,\mathrm{ent}(mx) + uf = u\,\mathrm{ent}(mx) + u - u\delta = \left(u\,\mathrm{ent}(mx) + u - 1\right) + r.$$

C'est un entier plus un réel de $[0, 1[$. D'après 1 b), $\mathrm{ent}(umx) = u\,\mathrm{ent}(mx) + u - 1$ et $\mathrm{frac}(umx) = r$, avec $0 \leqslant r < \frac{1}{n}$.

e) D'après c), soit $\mathrm{frac}(mx) \in [0 ; \frac{1}{n}[$, et $v = m$ convient ($m \geqslant 1$ car $k < \ell$) ; soit on est dans le cas de d), et $v = um$ convient ($u \geqslant 1$).

**5.** a) Soit $\varepsilon > 0$. Choisissons un entier $n$ tel que $n \geqslant q$ et $n \geqslant \frac{q}{\varepsilon}$. Appliquons 4 e) à $x = \frac{1}{q\beta}$ : il existe un entier $v \geqslant 1$ tel que $0 \leqslant \mathrm{frac}\left(\frac{v}{q\beta}\right) < \frac{1}{n}$. Posons $\ell = v$ et $k = \mathrm{ent}\left(\frac{v}{q\beta}\right)$, et écrivons $\frac{v}{q\beta} = k + r$ avec $0 \leqslant r < \frac{1}{n}$. En multipliant par $q$ :

$$qk \leqslant \frac{\ell}{\beta} = qk + qr < qk + \frac{q}{n} \leqslant qk + \varepsilon.$$

Reste à voir que $k \geqslant 1$. Si l'on avait $k = 0$, on aurait $\frac{v}{q\beta} = r < \frac{1}{n} \leqslant \frac{1}{q}$, donc $v < \beta < 1$, ce qui contredit $v \geqslant 1$.

b) **Aucune des deux propriétés n'est vraie.**

*$\mathbf{P}_\cap$ est fausse.* Prenons $\varepsilon = 1$ dans a) : il existe $k \geqslant 1$ et $\ell \geqslant 1$ tels que $qk \leqslant \frac{\ell}{\beta} < qk + 1$, donc $qk \in \mathcal{E}(\beta)$. Et pour $n = pk$, $\frac{n}{\alpha} = \frac{pkq}{p} = qk$, donc $qk \in \mathcal{E}(\alpha)$. L'intersection contient $qk$.

*$\mathbf{P}_\cup$ est fausse.* Comme $\alpha = \frac{p}{q} < 1$, on a $q > p \geqslant 1$, donc $q \geqslant 2$ et $\frac{q}{p} > 1$. Comme $\beta < 1$, le nombre $\frac{1}{\beta} - 1$ est strictement positif. Choisissons $\varepsilon$ tel que $0 < \varepsilon < \frac{1}{\beta} - 1$, et prenons $k$ et $\ell$ donnés par a). Montrons que l'entier $qk - 1$, qui vaut au moins $q - 1 \geqslant 1$, n'est ni dans $\mathcal{E}(\alpha)$ ni dans $\mathcal{E}(\beta)$.

- Les nombres $\frac{n}{\alpha} = \frac{nq}{p}$ augmentent avec $n$. Pour $n \geqslant pk$, ils valent au moins $qk$. Pour $n \leqslant pk - 1$, ils valent au plus $\frac{(pk-1)q}{p} = qk - \frac{q}{p} < qk - 1$. Aucun n'est dans $[qk - 1 ; qk[$, donc $qk - 1 \notin \mathcal{E}(\alpha)$.
- Les nombres $\frac{n}{\beta}$ augmentent avec $n$. Pour $n \geqslant \ell$, ils valent au moins $\frac{\ell}{\beta} \geqslant qk$. Pour $n \leqslant \ell - 1$, ils valent au plus $\frac{\ell}{\beta} - \frac{1}{\beta} < qk + \varepsilon - \frac{1}{\beta} < qk - 1$. Donc $qk - 1 \notin \mathcal{E}(\beta)$.

L'entier $qk - 1$ de $\mathbb{N}^*$ manque à la réunion.

Par symétrie, la conclusion est la même si c'est $\beta$ qui est rationnel.

**Bilan.** Si l'un des deux nombres vaut plus que $1$, aucune des deux propriétés n'est vraie ; si le plus grand vaut exactement $1$, seule $\mathbf{P}_\cup$ est vraie ; et si les deux sont plus petits que $1$ avec l'un rationnel, aucune ne l'est. Au passage, la question 4 démontre un résultat célèbre (dû à Dirichlet) : pour tout réel $x$ et tout $n \geqslant 1$, un multiple entier de $x$ est à moins de $\frac{1}{n}$ au-dessus d'un entier.

## Going further

- Dans la suite du sujet, on montrait le *théorème de Beatty* : quand $\alpha$ et $\beta$ sont irrationnels et que $\alpha + \beta = 1$, les deux propriétés sont vraies à la fois, et c'est le seul cas. Essayez avec $\alpha = \sqrt{2} - 1$ et $\beta = 2 - \sqrt{2}$ : écrivez les premiers éléments de $\mathcal{E}(\alpha)$ et de $\mathcal{E}(\beta)$ à la calculatrice.
- Pour le meneur de club : d'après le rapport du jury, la manipulation des parties entières et fractionnaires a mis en difficulté beaucoup de candidats dès le début de ce problème. Les questions 1 et 2 méritent d'être faites soigneusement.
