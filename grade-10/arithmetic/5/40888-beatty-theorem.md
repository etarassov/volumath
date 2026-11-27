---
id: "40888"
title: "Deux ensembles qui se partagent les entiers : le théorème de Beatty"
grade: 10
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [partie-entiere, partie-fractionnaire, irrationnel, partition, denombrement]
adapted_from: null
see_also: ["40887", "40889", "40890", "40891", "40892"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2024, mathématiques"
  reference: "cg-2024-s-sujet.pdf, problème 3 « Intersections et réunions », partie 2 « Partition », questions 6 à 8"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2024-s-sujet.pdf"
---

## Statement

On note $\mathbb{N}^*$ l'ensemble des entiers naturels non nuls. Pour tout réel $x$, on note $\mathrm{ent}(x)$ la *partie entière* de $x$, l'unique entier $n$ tel que $n \leqslant x < n + 1$, et $\mathrm{frac}(x) = x - \mathrm{ent}(x)$, qui appartient à $[0, 1[$. Pour deux réels $x$ et $y$, $\max\{x ; y\}$ désigne le plus grand des deux.

Pour tout réel $x > 0$, on note $\mathcal{E}(x)$ l'ensemble des entiers $\mathrm{ent}\left(\frac{n}{x}\right)$ pour $n = 1, 2, 3, \ldots$ Autrement dit, un entier $k \geqslant 0$ est dans $\mathcal{E}(x)$ lorsqu'il existe un entier $n \geqslant 1$ tel que $k \leqslant \frac{n}{x} < k + 1$.

Soit $\alpha > 0$ et $\beta > 0$. On considère les deux propriétés :

- **$\mathbf{P}_\cap$** : les ensembles $\mathcal{E}(\alpha)$ et $\mathcal{E}(\beta)$ n'ont aucun élément commun ;
- **$\mathbf{P}_\cup$** : la réunion de $\mathcal{E}(\alpha)$ et $\mathcal{E}(\beta)$ est exactement $\mathbb{N}^*$.

On admet les résultats suivants, démontrés dans une partie précédente :

- si $\max\{\alpha ; \beta\} \geqslant 1$, la propriété $\mathbf{P}_\cap$ est fausse ;
- si $\max\{\alpha ; \beta\} < 1$ et que l'un des deux nombres $\alpha$, $\beta$ est rationnel, aucune des deux propriétés n'est vraie.

Le but est de démontrer le **théorème A** : *les propriétés $\mathbf{P}_\cap$ et $\mathbf{P}_\cup$ sont vraies toutes les deux si et seulement si $\alpha$ et $\beta$ sont irrationnels et $\alpha + \beta = 1$.*

1. Dans cette question, $\alpha$ et $\beta$ sont deux irrationnels tels que $\max\{\alpha ; \beta\} < 1$.

   a) Démontrer que, pour tout entier $n \geqslant 1$, l'ensemble $\mathcal{E}(\alpha)$ compte exactement $\mathrm{ent}(n\alpha)$ éléments compris entre $1$ et $n - 1$.

   b) Démontrer que, si $\alpha + \beta > 1$, la propriété $\mathbf{P}_\cap$ est fausse.

   c) Démontrer que, si $\alpha + \beta < 1$, la propriété $\mathbf{P}_\cup$ est fausse.

2. Dans cette question, $\alpha$ et $\beta$ sont deux irrationnels tels que $\alpha + \beta = 1$.

   a) Démontrer que, pour tout entier $n \geqslant 1$, $\mathrm{ent}(n\alpha) + \mathrm{ent}(n\beta) = n - 1$.

   b) Démontrer que, pour tout entier $n \geqslant 1$, on est dans l'une des deux situations suivantes :

      - $\mathrm{ent}((n+1)\alpha) = \mathrm{ent}(n\alpha) + 1$ et $\mathrm{ent}((n+1)\beta) = \mathrm{ent}(n\beta)$, et $n$ est dans $\mathcal{E}(\alpha)$ mais pas dans $\mathcal{E}(\beta)$ ;
      - $\mathrm{ent}((n+1)\alpha) = \mathrm{ent}(n\alpha)$ et $\mathrm{ent}((n+1)\beta) = \mathrm{ent}(n\beta) + 1$, et $n$ est dans $\mathcal{E}(\beta)$ mais pas dans $\mathcal{E}(\alpha)$.

3. Démontrer le théorème A.

## Hints

1. **Question 1.** a) Les nombres $\frac{1}{\alpha}, \frac{2}{\alpha}, \frac{3}{\alpha}, \ldots$ avancent par pas de $\frac{1}{\alpha} > 1$ : leurs parties entières sont donc toutes différentes. Pour quels $m$ a-t-on $\mathrm{ent}\left(\frac{m}{\alpha}\right) \leqslant n - 1$ ?
2. **Question 1.** a) $\mathrm{ent}\left(\frac{m}{\alpha}\right) \leqslant n - 1$ équivaut à $\frac{m}{\alpha} < n$, c'est-à-dire $m < n\alpha$. Combien d'entiers $m \geqslant 1$ vérifient cela, sachant que $n\alpha$ n'est pas entier ?
3. **Question 1.** b) et c) Comptez les éléments des deux ensembles entre $1$ et $n - 1$, avec $n$ grand. Il n'y a que $n - 1$ places.
4. **Question 2.** a) Écrivez $n = n\alpha + n\beta$ en séparant parties entières et parties fractionnaires.
5. **Question 2.** b) De combien la partie entière de $n\alpha$ peut-elle augmenter quand on passe de $n$ à $n + 1$ ? Utilisez ensuite 2 a) et 1 a).

## Solution

**1.** a) Les éléments de $\mathcal{E}(\alpha)$ sont les entiers $\mathrm{ent}\left(\frac{m}{\alpha}\right)$, pour $m \geqslant 1$. Comme $\frac{1}{\alpha} > 1$, on a $\frac{m+1}{\alpha} > \frac{m}{\alpha} + 1$, donc $\mathrm{ent}\left(\frac{m+1}{\alpha}\right) \geqslant \mathrm{ent}\left(\frac{m}{\alpha}\right) + 1$. Les entiers $\mathrm{ent}\left(\frac{m}{\alpha}\right)$ sont donc strictement croissants en $m$ : deux valeurs de $m$ différentes donnent deux éléments différents. De plus $\frac{m}{\alpha} > 1$, donc tous ces éléments valent au moins $1$.

Il suffit donc de compter les entiers $m \geqslant 1$ tels que $\mathrm{ent}\left(\frac{m}{\alpha}\right) \leqslant n - 1$. Or

$$\mathrm{ent}\left(\frac{m}{\alpha}\right) \leqslant n - 1 \iff \frac{m}{\alpha} < n \iff m < n\alpha.$$

Comme $\alpha$ est irrationnel, $n\alpha$ n'est pas un entier, et les entiers $m \geqslant 1$ tels que $m < n\alpha$ sont $1, 2, \ldots, \mathrm{ent}(n\alpha)$. Il y en a $\mathrm{ent}(n\alpha)$ (aucun si $\mathrm{ent}(n\alpha) = 0$).

b) Supposons $\alpha + \beta > 1$, et choisissons un entier $n$ assez grand pour que $n(\alpha + \beta - 1) \geqslant 2$. D'après a), entre $1$ et $n - 1$, les deux ensembles comptent à eux deux

$$\mathrm{ent}(n\alpha) + \mathrm{ent}(n\beta) > (n\alpha - 1) + (n\beta - 1) = n(\alpha + \beta) - 2 \geqslant n$$

éléments. Mais il n'y a que $n - 1$ entiers entre $1$ et $n - 1$. Si les deux ensembles étaient disjoints, ils auraient au plus $n - 1$ éléments à eux deux dans cette plage. Ils ont donc un élément commun : $\mathbf{P}_\cap$ est fausse.

c) Supposons $\alpha + \beta < 1$, et choisissons $n$ assez grand pour que $n(1 - \alpha - \beta) > 1$. Entre $1$ et $n - 1$, les deux ensembles comptent à eux deux au plus

$$\mathrm{ent}(n\alpha) + \mathrm{ent}(n\beta) \leqslant n\alpha + n\beta < n - 1$$

éléments. Ils ne peuvent pas recouvrir les $n - 1$ entiers de $1$ à $n - 1$ : l'un d'eux manque à la réunion, et $\mathbf{P}_\cup$ est fausse.

**2.** Comme $\alpha + \beta = 1$ avec $\alpha > 0$ et $\beta > 0$, on a $\alpha < 1$ et $\beta < 1$ : la question 1 s'applique.

a) Soit $n \geqslant 1$. Comme $n\alpha$ et $n\beta$ ne sont pas entiers, leurs parties fractionnaires sont dans $]0, 1[$. On a

$$n = n\alpha + n\beta = \mathrm{ent}(n\alpha) + \mathrm{ent}(n\beta) + \mathrm{frac}(n\alpha) + \mathrm{frac}(n\beta).$$

La somme $\mathrm{frac}(n\alpha) + \mathrm{frac}(n\beta)$ est donc un entier ; comme elle est strictement comprise entre $0$ et $2$, elle vaut $1$. Donc $\mathrm{ent}(n\alpha) + \mathrm{ent}(n\beta) = n - 1$.

b) Comme $0 < \alpha < 1$, on a $\mathrm{ent}(n\alpha) \leqslant n\alpha < (n+1)\alpha < n\alpha + 1 < \mathrm{ent}(n\alpha) + 2$, donc $\mathrm{ent}((n+1)\alpha) - \mathrm{ent}(n\alpha)$ vaut $0$ ou $1$. De même pour $\beta$. D'après a), la somme de ces deux augmentations vaut $((n+1) - 1) - (n - 1) = 1$. Exactement l'une des deux vaut donc $1$, et l'autre $0$.

D'après 1 a), $\mathrm{ent}((n+1)\alpha)$ est le nombre d'éléments de $\mathcal{E}(\alpha)$ entre $1$ et $n$, et $\mathrm{ent}(n\alpha)$ le nombre entre $1$ et $n - 1$. Leur différence vaut $1$ si $n \in \mathcal{E}(\alpha)$, et $0$ sinon. De même pour $\beta$. On est donc bien dans l'une des deux situations annoncées.

**3.** *Si $\alpha$ et $\beta$ sont irrationnels avec $\alpha + \beta = 1$*, la question 2 b) montre que chaque entier $n \geqslant 1$ est dans exactement un des deux ensembles. Par ailleurs, comme $\alpha < 1$, $\frac{m}{\alpha} > 1$ pour tout $m \geqslant 1$, donc $\mathcal{E}(\alpha) \subset \mathbb{N}^*$ ; de même pour $\beta$. Les deux ensembles se partagent donc $\mathbb{N}^*$ : $\mathbf{P}_\cap$ et $\mathbf{P}_\cup$ sont vraies.

*Réciproquement*, supposons $\mathbf{P}_\cap$ et $\mathbf{P}_\cup$ vraies. Le premier résultat admis montre que $\max\{\alpha ; \beta\} < 1$, puis le second que $\alpha$ et $\beta$ sont irrationnels. La question 1 b) exclut alors $\alpha + \beta > 1$, et la question 1 c) exclut $\alpha + \beta < 1$. Donc $\alpha + \beta = 1$.

**Bilan.** Le théorème A dit que $\mathcal{E}(\alpha)$ et $\mathcal{E}(\beta)$ se partagent exactement les entiers non nuls si et seulement si $\alpha$ et $\beta$ sont irrationnels de somme $1$. C'est le *théorème de Beatty*, souvent énoncé ainsi : si $a$ et $b$ sont des irrationnels positifs avec $\frac{1}{a} + \frac{1}{b} = 1$, les suites $\mathrm{ent}(na)$ et $\mathrm{ent}(nb)$ prennent chaque entier non nul exactement une fois à elles deux. Ici $a = \frac{1}{\alpha}$ et $b = \frac{1}{\beta}$.

## Going further

- Avec $\alpha = \sqrt{2} - 1$ et $\beta = 2 - \sqrt{2}$, calculez à la calculatrice les dix premiers éléments de chaque ensemble et vérifiez qu'ils se partagent les entiers de $1$ à $20$.
- Dans la suite du sujet, on étudiait la propriété $\mathbf{P}_\cap$ seule. Montrer que, si $\alpha$ et $\beta$ sont irrationnels et s'il existe deux entiers $u \geqslant 1$ et $v \geqslant 1$ tels que $u\alpha + v\beta = 1$, alors $\mathcal{E}(\alpha)$ et $\mathcal{E}(\beta)$ n'ont aucun élément commun. (La réciproque est vraie aussi, mais bien plus difficile.)
