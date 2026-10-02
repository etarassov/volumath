---
id: "11073"
title: "Une infinité de couples qui donnent deux carrés"
grade: 10
theme: arithmetic
difficulty: 5
duration_min: 75
tags: [carre-parfait, encadrement, tiroirs, divisibilite, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 3 (arithmétique)"
  reference: "2025-01_Sujet-envoi-3-2024-2025.pdf, Exercices Juniors, exercice 9 ; corrigé 2025-03_Corrige-envoi-3-2024-2025.pdf. Dans le corrigé, le carré manque dans « m² + an + b = (m + c) », la majoration est écrite « m² + 2bam + a²b · b = (m + ab)² » et l'encadrement « 1 < c » doit se lire 1 ⩽ c. La fin du corrigé passe par les valuations p-adiques ; la solution ci-dessous la remplace par un calcul direct qui donne b = a'(t + c − a')."
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Sujet-envoi-3-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-01_Sujet-envoi-3-2024-2025.pdf"
---

## Statement

Soient $a$ et $b$ deux entiers strictement positifs. On suppose qu'il existe une infinité de couples $(m, n)$ d'entiers strictement positifs tels que
$$m^2 + an + b \qquad \text{et} \qquad n^2 + am + b$$
soient tous les deux des carrés parfaits.

Montrer que $a$ divise $2b$.

## Hints

1. Les deux conditions jouent le même rôle : tu peux supposer $m \geqslant n$. Montre qu'alors $m^2 + an + b$ est coincé entre $m^2$ et un carré un peu plus grand, et qu'il s'écrit $(m + c)^2$ avec $1 \leqslant c \leqslant \frac{a}{2}$.
2. Le nombre $c$ n'a qu'un nombre fini de valeurs possibles. Fixe une valeur de $c$ qui revient une infinité de fois, et exprime $m$ en fonction de $n$.
3. Remplace $m$ dans $n^2 + am + b = k^2$, et multiplie par une constante bien choisie pour faire apparaître $(4ck)^2 = (4cn + a^2)^2 + E$, où $E$ ne dépend que de $a$, $b$, $c$.
4. Deux carrés distincts de nombres plus grands que $n$ sont éloignés d'au moins $n$. Que peux-tu en déduire pour $E$ ? Termine par le calcul.

## Solution

Appelons **bon couple** un couple $(m, n)$ d'entiers strictement positifs pour lequel les deux nombres sont des carrés.

**Étape 1 : on peut supposer $m \geqslant n$ et $m \geqslant b$.**

Si $(m, n)$ est un bon couple, alors $(n, m)$ en est un aussi : échanger $m$ et $n$ échange les deux nombres. Il y a donc une infinité de bons couples avec $m \geqslant n$. Pour une valeur donnée de $m$, il n'y a qu'un nombre fini de tels couples, car $1 \leqslant n \leqslant m$. Donc $m$ prend une infinité de valeurs, et il y a une infinité de bons couples avec $m \geqslant n$ et $m \geqslant b$. Dans la suite, on ne garde que ceux-là.

**Étape 2 : $m^2 + an + b = (m + c)^2$ avec $1 \leqslant c \leqslant \frac{a}{2}$.**

Comme $n \leqslant m$, on a
$$m^2 < m^2 + an + b \leqslant m^2 + am + b .$$
Le carré $m^2 + an + b$ est plus grand que $m^2$, donc il s'écrit $(m + c)^2$ avec $c \geqslant 1$. Si l'on avait $2c \geqslant a + 1$, alors
$$(m + c)^2 = m^2 + 2cm + c^2 \geqslant m^2 + (a + 1)m + 1 > m^2 + am + b,$$
car $m \geqslant b$. C'est impossible, donc $2c \leqslant a$.

**Étape 3 : on fixe $c$.**

Le nombre $c$ est un entier entre $1$ et $\frac{a}{2}$ : il n'a qu'un nombre fini de valeurs possibles. Comme il y a une infinité de bons couples, l'une de ces valeurs revient pour une infinité d'entre eux (principe des tiroirs). On fixe cette valeur de $c$, et on ne garde que les bons couples correspondants. Pour chacun d'eux, $m^2 + an + b = m^2 + 2cm + c^2$, c'est-à-dire
$$2cm = an + b - c^2 . \qquad (1)$$
D'après $(1)$, la valeur de $n$ détermine celle de $m$. Comme il reste une infinité de couples, $n$ prend une infinité de valeurs : **il existe des bons couples avec $n$ aussi grand qu'on veut.**

**Étape 4 : une identité.**

Pour un tel couple, écrivons $n^2 + am + b = k^2$ avec $k$ entier positif. On multiplie par $2c$ et on utilise $(1)$ :
$$2ck^2 = 2cn^2 + a \cdot 2cm + 2bc = 2cn^2 + a^2 n + ab - ac^2 + 2bc .$$
On multiplie encore par $8c$ :
$$16c^2k^2 = 16c^2n^2 + 8a^2 c\, n + 8c\,(ab - ac^2 + 2bc) .$$
Or $(4cn + a^2)^2 = 16c^2n^2 + 8a^2c\,n + a^4$. On obtient donc
$$(4ck)^2 = (4cn + a^2)^2 + E \qquad \text{avec} \qquad E = 8c\,(ab - ac^2 + 2bc) - a^4 .$$
Le nombre $E$ ne dépend que de $a$, $b$ et $c$, pas du couple choisi.

**Étape 5 : $E = 0$.**

Posons $X = 4ck$ et $Y = 4cn + a^2$, deux entiers positifs, de sorte que $X^2 - Y^2 = E$. Si $E \neq 0$, alors $X \neq Y$, donc $|X - Y| \geqslant 1$ et
$$|E| = |X - Y| \times (X + Y) \geqslant X + Y > Y > n .$$
Il suffit alors de prendre un bon couple avec $n \geqslant |E|$ pour obtenir une contradiction. Donc $E = 0$, et alors $X = Y$ pour tous ces couples :
$$4ck = 4cn + a^2 . \qquad (2)$$

**Étape 6 : le calcul final.**

D'après $(2)$, $a^2 = 4c\,(k - n)$. Donc $a^2$ est pair, $a$ est pair, et en écrivant $a = 2a'$ et $t = k - n$, on obtient
$$a'^2 = ct . \qquad (3)$$
Ensuite, $E = 0$ s'écrit $a^4 = 8c\,(ab - ac^2 + 2bc)$. Avec $a = 2a'$, cela donne $16a'^4 = 16c\,(a'b - a'c^2 + bc)$, donc
$$bc\,(a' + c) = a'^4 + a'c^3 = a'\,(a'^3 + c^3) = a'\,(a' + c)\,(a'^2 - a'c + c^2) .$$
On divise par $a' + c > 0$, puis on remplace $a'^2$ par $ct$ grâce à $(3)$ :
$$bc = a'\,(ct - a'c + c^2) = a'c\,(t - a' + c) .$$
En divisant par $c$, on trouve $b = a'\,(t + c - a')$, donc
$$2b = 2a' \times (t + c - a') = a \times (t + c - a') .$$
Comme $t + c - a'$ est un entier, **$a$ divise $2b$**.

## Going further

1. Vérifier que pour $a = 6$ et $b = 21$, tous les couples $(m, n) = (3n + 10,\ n)$ conviennent : $m^2 + 6n + 21 = (3n + 11)^2$ et $n^2 + 6m + 21 = (n + 9)^2$. Ici $a$ divise $2b = 42$ mais pas $b$ : on ne peut donc pas remplacer $2b$ par $b$ dans l'énoncé.
2. Plus généralement, pour tout entier impair $a'$, les valeurs $a = 2a'$ et $b = a'\,(a'^2 - a' + 1)$ conviennent, avec les couples $\left(a'n + \frac{b - 1}{2},\ n\right)$.
