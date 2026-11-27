---
id: "40687"
title: "Le plus grand nombre jovial d'ordre n"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [fractions-egyptiennes, inegalite, rationnels, majoration, plus-petit-contre-exemple, raisonnement-par-l-absurde, de-proche-en-proche]
adapted_from: null
see_also: ["40684", "40685", "40686"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2019, mathématiques, série S"
  reference: "cg-2019-s-sujet.pdf, problème 2 « Les nombres joviaux », partie III « Un majorant optimal pour les nombres joviaux d'ordre fixé », questions 5 à 7 (la question 1 c ci-dessous, b > a, est ajoutée pour préparer la question 6 du sujet)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2019.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2019-s-sujet.pdf"
---

## Statement

Soient $n \geqslant 1$ et $p \geqslant 2$ deux entiers. On dit que $p$ est *jovial d'ordre $n$*
s'il existe des entiers $a_1, \ldots, a_n$ tels que
$$2 \leqslant a_1 < a_2 < \cdots < a_n, \qquad a_n = p \qquad \text{et} \qquad \frac{1}{a_1} + \cdots + \frac{1}{a_n} = 1.$$

On définit les suites $(u_n)_{n \geqslant 1}$ et $(v_n)_{n \geqslant 1}$ par $u_1 = 1$ et, pour
tout $n \geqslant 1$, $v_n = 1 + u_n$ et $u_{n+1} = u_n(1 + u_n)$. Ainsi $u_3 = 6$, $u_4 = 42$,
$u_5 = 1806$. On admet que $v_{n+1} = v_1 v_2 \cdots v_n + 1$ pour tout $n \geqslant 1$, et que
$u_n$ est jovial d'ordre $n$ pour tout $n \geqslant 3$.

Pour tout entier $n \geqslant 1$, on note $\mathcal{H}_n$ la propriété suivante :

> si $x_1, \ldots, x_n$ sont des entiers strictement positifs et $a$ un nombre rationnel
> strictement positif tels que
> $$x_1 \leqslant x_2 \leqslant \cdots \leqslant x_n \leqslant a \qquad \text{et} \qquad \frac{1}{x_1} + \cdots + \frac{1}{x_n} + \frac{1}{a} = 1,$$
> alors $a + 1 \leqslant v_{n+1}$ et $x_1 x_2 \cdots x_n\,(a + 1) \leqslant v_1 v_2 \cdots v_n\,v_{n+1}$.

On admet que $\mathcal{H}_1$ est vraie.

Dans les questions 1 et 2, $n \geqslant 2$ est un entier et **on admet que $\mathcal{H}_{n-1}$
est vraie**. On admet aussi le résultat suivant, démontré dans une partie précédente :

> si $x_1, \ldots, x_n$ et $a$ vérifient les hypothèses de $\mathcal{H}_n$, alors $x_1 \geqslant 2$ ;
> et si, de plus,
> $$\frac{1}{x_1} + \cdots + \frac{1}{x_{n-1}} + \frac{1}{x_n - 1} \geqslant 1, \qquad (\star)$$
> alors $a + 1 \leqslant v_{n+1}$ et $x_1 \cdots x_n\,(a + 1) \leqslant v_1 \cdots v_n\,v_{n+1}$.

1. Soient $x_1, \ldots, x_n$ et $a$ qui vérifient les hypothèses de $\mathcal{H}_n$, mais pas
   l'inégalité $(\star)$. On note $m = x_n$.

   a) Montrer qu'il existe un unique rationnel $b > 0$ tel que
   $$\frac{1}{x_1} + \cdots + \frac{1}{x_{n-1}} + \frac{1}{m - 1} + \frac{1}{b} = 1.$$

   b) Montrer que $(m - 1)(b + 1) \geqslant m(a + 1)$.

   c) Montrer que $b > a$.

2. En déduire que la propriété $\mathcal{H}_n$ est vraie. On pourra chercher à remplacer $x_n$ par
   $x_n - 1$ et $a$ par $b$.
3. En déduire que $\mathcal{H}_n$ est vraie pour tout $n \geqslant 1$, puis que, pour tout entier
   $n \geqslant 3$, $u_n$ est le plus grand entier jovial d'ordre $n$.

## Hints

1. **Question 1 b.** Les deux égalités donnent
   $\frac{1}{m - 1} + \frac{1}{b} = \frac{1}{m} + \frac{1}{a}$. En déduire $\frac{1}{b}$ en
   fonction de $a$ et de $m$.
2. **Question 1 b.** L'inégalité à montrer équivaut à $(m - 1)\,b \geqslant ma + 1$. Remplacer
   $b$ par son expression, chasser le dénominateur, et utiliser $a \geqslant m$.
3. **Question 2.** Les nouveaux entiers $x_1, \ldots, x_{n-1}, x_n - 1$ et le rationnel $b$
   vérifient-ils les hypothèses de $\mathcal{H}_n$ ? Si oui, que donne la conclusion pour eux, et
   que donne-t-elle pour les anciens ?
4. **Question 2.** On ne peut pas recommencer indéfiniment : la somme $x_1 + \cdots + x_n$
   diminue de $1$ à chaque fois. Raisonner par l'absurde avec un contre-exemple dont cette somme
   est la plus petite possible.
5. **Question 3.** Si $p$ est jovial d'ordre $n$, appliquer $\mathcal{H}_{n-1}$ aux
   $n - 1$ premiers dénominateurs, avec $a = p$.

## Solution

**1. a)** Notons $s = \frac{1}{x_1} + \cdots + \frac{1}{x_{n-1}} + \frac{1}{m - 1}$ (on a bien
$m - 1 \geqslant 1$, car $m \geqslant x_1 \geqslant 2$). Comme $(\star)$ est fausse, $s < 1$.
L'égalité demandée équivaut à $\frac{1}{b} = 1 - s$, qui est un rationnel strictement positif :
il y a une unique solution, $b = \frac{1}{1 - s}$, rationnelle et strictement positive.

**1. b)** L'égalité de $\mathcal{H}_n$ et celle de la question a ont la même partie
$\frac{1}{x_1} + \cdots + \frac{1}{x_{n-1}}$, donc
$$\frac{1}{m - 1} + \frac{1}{b} = \frac{1}{m} + \frac{1}{a}, \qquad \text{d'où} \qquad \frac{1}{b} = \frac{1}{a} - \left(\frac{1}{m - 1} - \frac{1}{m}\right) = \frac{1}{a} - \frac{1}{K},$$
où l'on note $K = m(m - 1)$. Comme $\frac{1}{b} > 0$, on a $a < K$, et
$$b = \frac{aK}{K - a}.$$
On a $(m - 1)(b + 1) - m(a + 1) = (m - 1)\,b - ma - 1$. Il s'agit donc de montrer que
$(m - 1)\,b \geqslant ma + 1$, c'est-à-dire, en multipliant par $K - a > 0$,
$$a\,m\,(m - 1)^2 \geqslant (ma + 1)(K - a).$$
Développons le membre de droite : $(ma + 1)(K - a) = maK - ma^2 + K - a$, avec
$maK = a\,m^2(m - 1)$. Comme $a\,m(m - 1)^2 - a\,m^2(m - 1) = a\,m(m - 1)(m - 1 - m) = -aK$,
l'inégalité à montrer devient
$$-aK \geqslant -ma^2 + K - a, \qquad \text{soit} \qquad ma^2 + a \geqslant m(m - 1)(a + 1).$$
Or $a \geqslant x_n = m$, donc $a - (m - 1) \geqslant 1$ et
$$ma^2 - m(m - 1)\,a = ma\,\left(a - (m - 1)\right) \geqslant ma \geqslant m^2 > m(m - 1).$$
Donc $ma^2 > m(m - 1)\,a + m(m - 1)$, et a fortiori $ma^2 + a \geqslant m(m - 1)(a + 1)$.

**Conclusion :** $(m - 1)(b + 1) \geqslant m(a + 1)$.

**1. c)** On a $\frac{1}{b} = \frac{1}{a} - \frac{1}{K} < \frac{1}{a}$, donc $b > a$.

**2.** *Un pas de remplacement.* Soient $x_1, \ldots, x_n$ et $a$ qui vérifient les hypothèses de
$\mathcal{H}_n$ mais pas $(\star)$, et $b$ comme à la question 1. Considérons les $n$ entiers
$x_1, \ldots, x_{n-1}, x_n - 1$ et le rationnel $b$.

- Ce sont des entiers strictement positifs, car $x_n - 1 \geqslant 1$.
- Ils sont tous inférieurs ou égaux à $b$, car ils sont inférieurs ou égaux à $x_n \leqslant a < b$.
- La somme de leurs inverses plus $\frac{1}{b}$ vaut $1$ (question 1 a).

Une fois rangés dans l'ordre croissant (si plusieurs des $x_i$ sont égaux à $x_n$, l'entier
$x_n - 1$ passe avant eux ; cela ne change ni la somme des inverses ni le produit), ils
vérifient donc les hypothèses de $\mathcal{H}_n$. Supposons que la conclusion de $\mathcal{H}_n$ soit vraie pour eux :
$$b + 1 \leqslant v_{n+1} \qquad \text{et} \qquad x_1 \cdots x_{n-1}\,(x_n - 1)(b + 1) \leqslant v_1 \cdots v_n\,v_{n+1}.$$
Alors elle est vraie aussi pour les anciens : $a + 1 < b + 1 \leqslant v_{n+1}$, et, avec la
question 1 b,
$$x_1 \cdots x_{n-1}\,x_n\,(a + 1) \leqslant x_1 \cdots x_{n-1}\,(x_n - 1)(b + 1) \leqslant v_1 \cdots v_n\,v_{n+1}.$$

*Conclusion par l'absurde.* Supposons que $\mathcal{H}_n$ soit fausse : il existe des
$x_1, \ldots, x_n$ et $a$ qui vérifient les hypothèses de $\mathcal{H}_n$ mais pas sa
conclusion. Parmi tous ces contre-exemples, choisissons-en un pour lequel la somme
$x_1 + \cdots + x_n$, qui est un entier positif, est la plus petite possible.

- Il ne vérifie pas $(\star)$, sinon le résultat admis donnerait la conclusion.
- On peut donc lui appliquer le pas de remplacement. Les nouveaux entiers ont pour somme
  $x_1 + \cdots + x_n - 1$, plus petite : par le choix du contre-exemple, ce n'est pas un
  contre-exemple, donc la conclusion de $\mathcal{H}_n$ est vraie pour eux.
- D'après le pas de remplacement, elle est alors vraie pour notre contre-exemple : c'est
  absurde.

Donc $\mathcal{H}_n$ est vraie.

**3.** La propriété $\mathcal{H}_1$ est vraie, et la question 2 montre que, pour tout
$n \geqslant 2$, si $\mathcal{H}_{n-1}$ est vraie alors $\mathcal{H}_n$ l'est aussi. De proche en
proche, $\mathcal{H}_2$, $\mathcal{H}_3$, … sont vraies : $\mathcal{H}_n$ est vraie pour tout
$n \geqslant 1$.

Soient $n \geqslant 3$ et $p$ un entier jovial d'ordre $n$ :
$\frac{1}{a_1} + \cdots + \frac{1}{a_{n-1}} + \frac{1}{p} = 1$ avec
$2 \leqslant a_1 < \cdots < a_{n-1} < p$. Les entiers $x_i = a_i$ pour $i \leqslant n - 1$ et le
rationnel $a = p$ vérifient les hypothèses de $\mathcal{H}_{n-1}$. Donc
$p + 1 \leqslant v_n = u_n + 1$, c'est-à-dire $p \leqslant u_n$.

Comme $u_n$ est lui-même jovial d'ordre $n$, **$u_n$ est le plus grand entier jovial d'ordre
$n$**.

**Bilan.** On a montré que, si $\mathcal{H}_{n-1}$ est vraie, alors $\mathcal{H}_n$ est vraie,
en admettant le cas où $(\star)$ est vraie et en ramenant l'autre cas à celui-là par des
remplacements successifs. Avec $\mathcal{H}_1$, la propriété $\mathcal{H}_n$ est vraie pour
tout $n$. Conséquence : pour $n \geqslant 3$, dans une écriture de $1$ comme somme de $n$
fractions distinctes de numérateur $1$, le plus grand dénominateur vaut au plus $u_n$, et la
valeur $u_n$ est atteinte ; le plus grand dénominateur possible est donc $6$, $42$, $1806$, …

## Going further

- Le cas où $(\star)$ est vraie a été traité dans les exercices 40685 ($x_n > x_{n-1}$) et
  40686 ($x_n = x_{n-1}$).
- Vérifier que $\frac{1}{2} + \frac{1}{3} + \frac{1}{7} + \frac{1}{43} + \frac{1}{1806} = 1$.
  Montrer que, pour ces entiers et $a = 1806$, les deux inégalités de $\mathcal{H}_4$ sont des
  égalités : la borne de $\mathcal{H}_n$ ne peut pas être améliorée.
