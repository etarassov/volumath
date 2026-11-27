---
id: "40882"
title: "Partie de 4, la suite colle à 1 + 2/n"
grade: 12
theme: functions-analysis
difficulty: 3
duration_min: 45
tags: [suites, recurrence, encadrement, racine-carree, limite, quantite-conjuguee]
adapted_from: null
see_also: ["40881", "40883"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2024, mathématiques"
  reference: "cg-2024-s-sujet.pdf, problème 1 « Étude d'une suite », partie 2 « Un cas particulier », questions 6 à 8"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2024-s-sujet.pdf"
---

## Statement

On note $(t_n)$ la suite définie par $t_0 = 4$ et

$$t_{n+1} = \frac{1}{n+1} + \sqrt{t_n} \quad \text{pour tout entier } n \geqslant 0.$$

On admet que cette suite est bien définie et que ses termes sont positifs. On définit aussi la suite $(s_n)$ par $s_n = n\,(t_n - 1)$ pour tout entier $n \geqslant 0$.

1. Démontrer que, pour tout entier $n \geqslant 1$,
$$1 + \frac{2}{n} \leqslant t_n \leqslant 1 + \frac{3}{n}.$$
2. Démontrer que, pour tout entier $n \geqslant 1$,
$$2 \leqslant s_n \leqslant 2 + \frac{6}{n}.$$
3. Déterminer la limite, quand $n$ tend vers $+\infty$, de
$$\frac{t_n - 1 - \frac{2}{n}}{\frac{1}{n}}.$$

## Hints

1. **Question 1.** Raisonner par récurrence. Pour l'hérédité, il suffit de montrer $\sqrt{1 + \frac{2}{n}} \geqslant 1 + \frac{1}{n+1}$ et $\sqrt{1 + \frac{3}{n}} \leqslant 1 + \frac{2}{n+1}$.
2. **Question 1.** Ces deux inégalités portent sur des nombres positifs : élevez au carré, puis chassez les dénominateurs.
3. **Question 2.** La minoration découle directement de la question 1. Pour la majoration, exprimez $t_{n+1} - 1$ en fonction de $t_n - 1$ grâce à l'égalité $\sqrt{t} - 1 = \frac{t - 1}{\sqrt{t} + 1}$.
4. **Question 2.** On obtient $s_{n+1} \leqslant 1 + \frac{n+1}{2n}\, s_n$. L'hérédité ne marche qu'à partir d'un certain rang : pour les petites valeurs de $n$, la question 1 suffit.
5. **Question 3.** Simplifiez le quotient : il s'exprime très simplement avec $s_n$.

## Solution

**1.** Récurrence sur $n \geqslant 1$.

*Initialisation.* $t_1 = 1 + \sqrt{4} = 3$, et l'encadrement s'écrit $1 + 2 \leqslant 3 \leqslant 1 + 3$ : il est vrai.

*Hérédité.* Supposons $1 + \frac{2}{n} \leqslant t_n \leqslant 1 + \frac{3}{n}$ pour un entier $n \geqslant 1$. La fonction racine carrée est croissante, donc

$$\sqrt{1 + \frac{2}{n}} \leqslant \sqrt{t_n} \leqslant \sqrt{1 + \frac{3}{n}}.$$

*Minoration.* Montrons que $\sqrt{1 + \frac{2}{n}} \geqslant 1 + \frac{1}{n+1}$. Les deux membres sont positifs, donc c'est équivalent à l'inégalité entre leurs carrés :

$$1 + \frac{2}{n} \geqslant 1 + \frac{2}{n+1} + \frac{1}{(n+1)^2}.$$

Or $\frac{2}{n} - \frac{2}{n+1} = \frac{2}{n(n+1)}$, et $\frac{2}{n(n+1)} \geqslant \frac{1}{(n+1)^2}$ équivaut à $2(n+1) \geqslant n$, ce qui est vrai. Donc

$$t_{n+1} = \frac{1}{n+1} + \sqrt{t_n} \geqslant \frac{1}{n+1} + 1 + \frac{1}{n+1} = 1 + \frac{2}{n+1}.$$

*Majoration.* Montrons que $\sqrt{1 + \frac{3}{n}} \leqslant 1 + \frac{2}{n+1}$. En élevant au carré, c'est équivalent à

$$\frac{3}{n} \leqslant \frac{4}{n+1} + \frac{4}{(n+1)^2}.$$

En multipliant par $n(n+1)^2 > 0$, cela devient $3(n+1)^2 \leqslant 4n(n+1) + 4n$, soit $3n^2 + 6n + 3 \leqslant 4n^2 + 8n$, soit

$$n^2 + 2n - 3 \geqslant 0, \quad \text{c'est-à-dire} \quad (n - 1)(n + 3) \geqslant 0,$$

ce qui est vrai pour $n \geqslant 1$. Donc

$$t_{n+1} \leqslant \frac{1}{n+1} + 1 + \frac{2}{n+1} = 1 + \frac{3}{n+1}.$$

Conclusion : $1 + \frac{2}{n} \leqslant t_n \leqslant 1 + \frac{3}{n}$ pour tout $n \geqslant 1$.

**2.** *Minoration.* D'après la question 1, $t_n - 1 \geqslant \frac{2}{n}$, donc $s_n = n(t_n - 1) \geqslant 2$.

*Majoration.* Notons $P(n)$ l'inégalité $s_n \leqslant 2 + \frac{6}{n}$.

Pour $1 \leqslant n \leqslant 6$, la question 1 donne $s_n \leqslant 3$, et $2 + \frac{6}{n} \geqslant 2 + 1 = 3$. Donc $P(1), \ldots, P(6)$ sont vraies.

Établissons maintenant une relation entre $s_{n+1}$ et $s_n$. Pour $n \geqslant 1$, on a $t_n \geqslant 1$, et

$$t_{n+1} - 1 = \frac{1}{n+1} + \left(\sqrt{t_n} - 1\right) = \frac{1}{n+1} + \frac{t_n - 1}{\sqrt{t_n} + 1}.$$

Comme $t_n - 1 \geqslant 0$ et $\sqrt{t_n} + 1 \geqslant 2$, on obtient $t_{n+1} - 1 \leqslant \frac{1}{n+1} + \frac{t_n - 1}{2}$. En multipliant par $n + 1$, et en écrivant $t_n - 1 = \frac{s_n}{n}$ :

$$s_{n+1} \leqslant 1 + \frac{n+1}{2n}\, s_n.$$

*Hérédité, pour $n \geqslant 4$.* Supposons $P(n)$, c'est-à-dire $s_n \leqslant \frac{2n + 6}{n}$. Alors

$$s_{n+1} \leqslant 1 + \frac{(n+1)(n+3)}{n^2} = 2 + \frac{4n + 3}{n^2}.$$

Il suffit donc de vérifier que $\frac{4n+3}{n^2} \leqslant \frac{6}{n+1}$, c'est-à-dire $(4n + 3)(n + 1) \leqslant 6n^2$, ou encore

$$2n^2 - 7n - 3 \geqslant 0.$$

Pour $n \geqslant 4$, on a $2n - 7 \geqslant 1$, donc $2n^2 - 7n - 3 = n(2n - 7) - 3 \geqslant 4 - 3 > 0$. Ainsi $P(n)$ entraîne $P(n+1)$ dès que $n \geqslant 4$.

Comme $P(4)$ est vraie, la récurrence donne $P(n)$ pour tout $n \geqslant 4$, et les cas $n = 1, 2, 3$ ont été vus directement.

Conclusion : $2 \leqslant s_n \leqslant 2 + \frac{6}{n}$ pour tout $n \geqslant 1$.

**3.** Pour $n \geqslant 1$,

$$\frac{t_n - 1 - \frac{2}{n}}{\frac{1}{n}} = n\,(t_n - 1) - 2 = s_n - 2.$$

D'après la question 2, $0 \leqslant s_n - 2 \leqslant \frac{6}{n}$, et $\frac{6}{n}$ tend vers $0$. Par le théorème des gendarmes, la limite cherchée est $0$.

**Bilan.** La suite partie de $4$ vérifie $t_n = 1 + \frac{2}{n} + \frac{r_n}{n}$ avec $r_n$ qui tend vers $0$ : non seulement elle tend vers $1$, mais l'écart à $1$ se comporte comme $\frac{2}{n}$.

## Going further

- Dans la suite du sujet, on montrait que le résultat ne dépend pas du premier terme : pour tout $\alpha \geqslant 0$, la suite définie par $u_0 = \alpha$ et la même relation vérifie encore $n(u_n - 1) \to 2$. Indication : montrer que $\lvert u_{n+1} - t_{n+1} \rvert \leqslant \frac{1}{2} \lvert u_n - t_n \rvert$ pour $n \geqslant 1$.
- Pourquoi $2$ ? Si l'on cherche $t_n$ sous la forme $1 + \frac{c}{n}$, la relation de récurrence donne, à peu près, $\frac{c}{n} \approx \frac{1}{n} + \frac{c}{2n}$, d'où $c = 2$. Le calcul de la question 2 rend ce raisonnement rigoureux.
