---
id: "2406"
title: "Les anagrammes d'un très long mot"
grade: 12
theme: combinatorics
difficulty: 2
duration_min: 20
tags: [denombrement, permutations, anagrammes, lettres-repetees, factorielle]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced Circle, Combinatorics"
  reference: "Handout-467-565.pdf, exercice 3 (réponses dans Handout-468-565.pdf) ; mots adaptés au français"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-467-565.pdf"
---

## Statement

On appelle *anagramme* d'un mot toute suite de lettres obtenue en réarrangeant ses lettres. On compte toutes les suites de lettres, y compris celles qui ne veulent rien dire, et on compte aussi le mot de départ.

1. Combien le mot $\mathrm{NOTE}$ a-t-il d'anagrammes ?
2. Combien le mot $\mathrm{ELLE}$ a-t-il d'anagrammes ?
3. Combien le mot $\mathrm{NOTE}$ a-t-il d'anagrammes qui ne commencent pas par un $\mathrm{E}$ ?
4. Combien le mot $\mathrm{ANTICONSTITUTIONNELLEMENT}$, qui compte $25$ lettres, a-t-il d'anagrammes ?

## Hints

1. Pour un mot dont toutes les lettres sont différentes, une anagramme est simplement un ordre des lettres.
2. Dans $\mathrm{ELLE}$, échanger les deux $\mathrm{L}$ entre eux ne change rien au résultat écrit. Combien de rangements des quatre lettres donnent-ils le même mot écrit ?
3. À la question 3, il est plus rapide de compter les anagrammes **interdites**, celles qui commencent par $\mathrm{E}$, puis de les retrancher.
4. Pour la question 4, compte d'abord combien de fois apparaît chaque lettre. Le total doit faire $25$.

## Solution

**1. Le mot $\mathrm{NOTE}$.** Ses quatre lettres sont toutes différentes. Une anagramme est donc un ordre des quatre lettres, et il y en a

$$4! = 24 .$$

**2. Le mot $\mathrm{ELLE}$.** Faisons comme si les lettres étaient toutes différentes, en les marquant : $\mathrm{E}_1 \mathrm{L}_1 \mathrm{L}_2 \mathrm{E}_2$. Il y a alors $4! = 24$ rangements.

Mais deux rangements donnent le même mot écrit dès qu'ils ne diffèrent que par l'ordre des deux $\mathrm{E}$ ou par l'ordre des deux $\mathrm{L}$. Chaque mot écrit est donc obtenu $2! \times 2! = 4$ fois, et le nombre d'anagrammes vaut

$$\frac{4!}{2!\,2!} = \frac{24}{4} = 6 .$$

Ce sont $\mathrm{ELLE}$, $\mathrm{ELEL}$, $\mathrm{EELL}$, $\mathrm{LELE}$, $\mathrm{LEEL}$, $\mathrm{LLEE}$.

**3. Les anagrammes de $\mathrm{NOTE}$ ne commençant pas par $\mathrm{E}$.** Celles qui commencent par $\mathrm{E}$ sont obtenues en rangeant librement les trois lettres restantes $\mathrm{N}$, $\mathrm{O}$, $\mathrm{T}$ : il y en a $3! = 6$. D'où

$$4! - 3! = 24 - 6 = 18 .$$

**4. Le mot $\mathrm{ANTICONSTITUTIONNELLEMENT}$.** Comptons les lettres :

| lettre | A | C | E | I | L | M | N | O | S | T | U |
|---|---|---|---|---|---|---|---|---|---|---|---|
| nombre | $1$ | $1$ | $3$ | $3$ | $2$ | $1$ | $5$ | $2$ | $1$ | $5$ | $1$ |

Le total vaut bien $1+1+3+3+2+1+5+2+1+5+1 = 25$.

Comme à la question 2 : il y a $25!$ rangements des $25$ lettres marquées, et chaque mot écrit est obtenu une fois pour chaque façon de permuter les lettres identiques entre elles, soit

$$3!\ (\text{les E}) \times 3!\ (\text{les I}) \times 2!\ (\text{les L}) \times 5!\ (\text{les N}) \times 2!\ (\text{les O}) \times 5!\ (\text{les T})$$

fois. Le nombre d'anagrammes est donc

$$\frac{25!}{5!\,5!\,3!\,3!\,2!\,2!} = 7\,480\,328\,917\,501\,440\,000 ,$$

soit environ $\text{7,5} \times 10^{18}$.

**La règle générale.** Un mot de $n$ lettres, dont une lettre apparaît $n_1$ fois, une autre $n_2$ fois, et ainsi de suite, possède

$$\frac{n!}{n_1!\,n_2!\cdots n_r!}$$

anagrammes.

## Going further

1. Combien le mot $\mathrm{ANAGRAMME}$ a-t-il d'anagrammes ?
2. Combien le mot $\mathrm{MISSISSIPPI}$ a-t-il d'anagrammes ? Et combien commencent et finissent par un $\mathrm{I}$ ?
3. Retrouver la formule des anagrammes à partir des coefficients binomiaux : pour placer les lettres, on choisit d'abord les positions des $\mathrm{N}$, puis celles des $\mathrm{T}$ parmi les positions restantes, etc.
