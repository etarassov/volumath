---
id: "40765"
title: "On garde la boule du milieu : la plus grande probabilité tend vers 0"
grade: 12
theme: probability-statistics
difficulty: 4
duration_min: 55
tags: [probabilite, probabilite-conditionnelle, recurrence, inegalite, produit, combinaisons, majoration, limite]
adapted_from: null
see_also: ["40764", "40766", "0679", "2424"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2021, mathématiques"
  reference: "cg-2021-s-sujet.pdf, problème 2 « La loi du milieu », partie III « Comportement limite », questions 7 à 10"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2021.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2021-s-sujet.pdf"
---

## Statement

Soit $n$ un entier naturel non nul. Dans un sac, on place $2n + 1$ boules indiscernables au toucher, numérotées $0, 1, 2, \ldots, 2n$. On vide peu à peu le sac selon le protocole suivant :

- on tire trois boules simultanément, au hasard ;
- si les trois boules tirées portent les numéros $a$, $b$ et $c$, avec $a < b < c$, on élimine les boules $a$ et $c$ et on remet dans le sac la boule $b$ ;
- on recommence.

Au bout de $n$ tirages, il ne reste qu'une seule boule, et on note $D_n$ son numéro. On note $M_n$ la plus grande des probabilités $P(D_n = j)$ pour $0 \leqslant j \leqslant 2n$. Le but est de démontrer que $M_n$ tend vers $0$ quand $n$ tend vers $+\infty$.

1. On considère la suite $(u_n)_{n \geqslant 0}$ définie par $u_0 = 1$ et, pour tout $n \geqslant 1$,
   $$u_n = \frac{1}{2} \times \frac{3}{4} \times \frac{5}{6} \times \cdots \times \frac{2n - 1}{2n}.$$
   Démontrer que $u_n \leqslant \frac{1}{\sqrt{3n + 1}}$ pour tout $n \geqslant 0$.
2. Pour tout entier $j$ tel que $0 \leqslant j \leqslant 2n$, déterminer la probabilité $p_j$ que la boule numéro $j$ soit éliminée lors du premier tirage.
3. Démontrer que, si $n \geqslant 3$, alors $p_j \geqslant \frac{1}{2n}$ pour tout entier $j$ tel que $0 \leqslant j \leqslant 2n$.
4. Démontrer que $M_n$ tend vers $0$ quand $n$ tend vers $+\infty$.

## Hints

1. **Question 1.** Raisonner par récurrence. Comme tout est positif, il suffit de comparer les carrés : on doit montrer que $\left(\frac{2n+1}{2n+2}\right)^2 \leqslant \frac{3n+1}{3n+4}$.
2. **Question 2.** La boule $j$ est éliminée quand elle est tirée et qu'elle est la plus petite ou la plus grande des trois. Combien de boules sont plus petites qu'elle, combien plus grandes ?
3. **Question 3.** Écrire $j = n + t$ et développer le numérateur de $p_j$ : pour quelle valeur de $j$ est-il le plus petit ?
4. **Question 4.** Après un tirage, il reste $2n - 1$ boules. Si on les renumérote de $0$ à $2n - 2$ dans l'ordre croissant, la suite de l'expérience est exactement l'expérience avec $n - 1$ à la place de $n$.
5. **Question 4.** Pour que la boule $j$ soit la dernière, elle doit échapper à l'élimination à chaque tirage. Lorsque le sac contient $2m + 1$ boules avec $m \geqslant 3$, quelle que soit la position de la boule $j$ parmi elles, la question 3 majore sa probabilité de survivre à ce tirage.
6. **Question 4.** Multiplier ces majorations pour $m = n, n-1, \ldots, 3$ et faire apparaître $u_n$.

## Solution

**1.** Récurrence sur $n$. Pour $n = 0$ : $u_0 = 1 = \frac{1}{\sqrt{1}}$.

Supposons $u_n \leqslant \frac{1}{\sqrt{3n+1}}$. Comme $u_{n+1} = u_n \times \frac{2n+1}{2n+2}$, il suffit de montrer que

$$\frac{2n+1}{2n+2} \leqslant \frac{\sqrt{3n+1}}{\sqrt{3n+4}}.$$

Les deux membres sont positifs ; on compare leurs carrés, c'est-à-dire on montre que $(2n+1)^2 (3n+4) \leqslant (2n+2)^2 (3n+1)$. En développant,

$$(2n+1)^2 (3n+4) = 12n^3 + 28n^2 + 19n + 4, \qquad (2n+2)^2 (3n+1) = 12n^3 + 28n^2 + 20n + 4.$$

La différence vaut $n \geqslant 0$, donc l'inégalité est vraie, et

$$u_{n+1} \leqslant \frac{1}{\sqrt{3n+1}} \times \frac{\sqrt{3n+1}}{\sqrt{3n+4}} = \frac{1}{\sqrt{3(n+1)+1}}.$$

Conclusion : $u_n \leqslant \frac{1}{\sqrt{3n+1}}$ pour tout $n \geqslant 0$.

**2.** Il y a $\binom{2n+1}{3}$ tirages possibles, équiprobables. La boule $j$ est éliminée lors du premier tirage si elle est tirée avec deux boules plus grandes, ou avec deux boules plus petites. Il y a $2n - j$ boules plus grandes et $j$ boules plus petites. Donc

$$p_j = \frac{\binom{j}{2} + \binom{2n-j}{2}}{\binom{2n+1}{3}} = \frac{3\,(j(j-1) + (2n-j)(2n-j-1))}{(2n+1)(2n)(2n-1)}.$$

(Pour $j = 0$ ou $j = 1$, $\binom{j}{2} = 0$, et la formule reste juste.)

**3.** Notons $N_j = j(j-1) + (2n-j)(2n-j-1)$ et écrivons $j = n + t$. Alors

$$N_j = (n+t)^2 - (n+t) + (n-t)^2 - (n-t) = 2n^2 + 2t^2 - 2n \geqslant 2n(n-1).$$

Donc

$$p_j \geqslant \frac{6n(n-1)}{(2n+1)(2n)(2n-1)} = \frac{3(n-1)}{4n^2 - 1}.$$

Or $\frac{3(n-1)}{4n^2-1} \geqslant \frac{1}{2n}$ équivaut à $6n(n-1) \geqslant 4n^2 - 1$, soit $2n^2 - 6n + 1 \geqslant 0$, soit $2n(n - 3) + 1 \geqslant 0$, ce qui est vrai pour $n \geqslant 3$. Donc $p_j \geqslant \frac{1}{2n}$ pour tout $j$ dès que $n \geqslant 3$.

(Pour $n = 2$ et $j = 2$, on a $p_2 = \frac{2}{10} < \frac{1}{4}$ : l'hypothèse $n \geqslant 3$ est utile.)

**4.** *Une remarque.* Après un tirage, il reste $2n - 1$ boules. Seul l'ordre des numéros compte dans le protocole. Si on renumérote les boules restantes $0, 1, \ldots, 2n - 2$ dans l'ordre croissant, la suite de l'expérience est donc l'expérience avec $n - 1$. En particulier, quand le sac contient $2m + 1$ boules, une boule qui est la $(r+1)$-ième plus petite du sac est éliminée au tirage suivant avec la probabilité $p_r$ calculée à la question 2 avec $m$ à la place de $n$. Si $m \geqslant 3$, cette probabilité est au moins $\frac{1}{2m}$ d'après la question 3, quelle que soit la position $r$.

*La majoration.* Supposons $n \geqslant 3$ et fixons une boule $j$. Pour $t = 0, 1, \ldots, n$, notons $S_t$ l'événement « la boule $j$ n'a pas été éliminée lors des $t$ premiers tirages ». La boule $j$ est la dernière exactement quand l'événement $S_n$ est réalisé, donc $P(D_n = j) = P(S_n) \leqslant P(S_{n-2})$.

Pour $1 \leqslant t \leqslant n - 2$, avant le $t$-ième tirage, le sac contient $2m + 1$ boules avec $m = n - t + 1 \geqslant 3$. Sachant $S_{t-1}$, et quel que soit le contenu exact du sac, la boule $j$ survit au $t$-ième tirage avec une probabilité au plus $1 - \frac{1}{2m}$. Par la formule des probabilités totales (sur tous les contenus possibles du sac), $P_{S_{t-1}}(S_t) \leqslant 1 - \frac{1}{2m}$. Comme $S_t \subset S_{t-1}$, on a $P(S_t) = P(S_{t-1})\, P_{S_{t-1}}(S_t)$, et donc

$$P(D_n = j) \leqslant P(S_{n-2}) \leqslant \prod_{m=3}^{n} \left(1 - \frac{1}{2m}\right) = \frac{5}{6} \times \frac{7}{8} \times \cdots \times \frac{2n-1}{2n} = \frac{u_n}{u_2}.$$

Comme $u_2 = \frac{1}{2} \times \frac{3}{4} = \frac{3}{8}$, on obtient avec la question 1

$$P(D_n = j) \leqslant \frac{8}{3}\, u_n \leqslant \frac{8}{3\sqrt{3n+1}}.$$

*Conclusion.* Cette majoration vaut pour toutes les boules $j$, donc $0 \leqslant M_n \leqslant \frac{8}{3\sqrt{3n+1}}$ pour tout $n \geqslant 3$. Le majorant tend vers $0$, donc, par le théorème des gendarmes, $M_n$ tend vers $0$.

**Bilan.** Le produit $\frac{1}{2} \times \frac{3}{4} \times \cdots \times \frac{2n-1}{2n}$ est au plus $\frac{1}{\sqrt{3n+1}}$. À chaque tirage, chaque boule a une probabilité au moins $\frac{1}{2m}$ d'être éliminée, où $2m + 1$ est le nombre de boules du sac (pour $m \geqslant 3$). On en déduit qu'aucune boule n'a une probabilité supérieure à $\frac{8}{3\sqrt{3n+1}}$ d'être la dernière : la plus grande des probabilités $P(D_n = j)$ tend vers $0$.

## Going further

- Dans la suite du sujet, on montrait que la plus grande de ces probabilités est toujours celle de la boule du milieu : $M_n = P(D_n = n)$ (exercice 40766). À la calculatrice ou avec un programme, on trouve $M_3 \approx \text{0,623}$, $M_5 \approx \text{0,394}$ et $M_{10} \approx \text{0,189}$. Comparez ces valeurs à la majoration $\frac{8}{3\sqrt{3n+1}}$.
- Le même produit $u_n$ est étudié pour $n = 50$ dans les exercices 0679 et 2424 ; la question 1 en donne une version générale.
