---
id: "1204"
title: "Encadrer le logarithme d'une factorielle"
grade: 12
theme: functions-analysis
difficulty: 4
duration_min: 40
tags: [logarithme, integrale, comparaison-somme-integrale, factorielle, encadrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 1, «Irrational Numbers Part II: The Number e»"
  reference: "Handout-4425-4240.pdf, problèmes 17 et 18 (réponses dans Handout-4426-4240.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4425-4240.pdf"
---

## Statement

Pour un entier $n \geqslant 1$, on rappelle que $n! = 1 \times 2 \times 3 \times \dots \times n$.

1. Écrire $\ln(n!)$ comme une somme.
2. Vérifier que la fonction $F : t \mapsto t\ln t - t$ est une primitive de $t \mapsto \ln t$ pour $t > 0$, puis calculer $\displaystyle\int_1^n \ln t \,\mathrm{d}t$.
3. Démontrer que, pour tout entier $n \geqslant 2$,

$$n\ln n - n \;<\; \ln(n!) \;<\; n \ln n.$$

4. En déduire un encadrement de $n!$ lui-même.
5. Application numérique : encadrer $\ln(1000!)$, puis donner un ordre de grandeur du nombre de chiffres de $1000!$ en écriture décimale.

## Hints

1. Le logarithme transforme un produit en somme.
2. Pour la majoration, il n'y a pas besoin d'intégrale : dans la somme $\ln 1 + \ln 2 + \dots + \ln n$, chaque terme se compare à $\ln n$.
3. Pour la minoration, comparer chaque terme $\ln k$ à l'aire d'un rectangle et la somme à une aire sous la courbe de $\ln$.
4. La fonction $\ln$ est croissante : pour $t$ compris entre $k-1$ et $k$, on a $\ln t \leqslant \ln k$. Intégrer cette inégalité entre $k-1$ et $k$.
5. Additionner ces inégalités pour $k = 2, 3, \dots, n$ : à gauche les intégrales se recollent en une seule.
6. Pour la question 5, le nombre de chiffres de $A$ en écriture décimale vaut $\lfloor \log_{10} A \rfloor + 1$, et $\log_{10} A = \dfrac{\ln A}{\ln 10}$.

## Solution

**1. Une somme au lieu d'un produit.**

Le logarithme transforme les produits en sommes, donc

$$\ln(n!) = \ln(1 \times 2 \times \dots \times n) = \ln 1 + \ln 2 + \dots + \ln n = \sum_{k=1}^{n} \ln k.$$

**2. Une primitive de $\ln$.**

Pour $t > 0$, en dérivant $F(t) = t\ln t - t$ comme un produit :

$$F'(t) = 1 \times \ln t + t \times \frac{1}{t} - 1 = \ln t + 1 - 1 = \ln t.$$

Donc $F$ est bien une primitive de $\ln$ sur l'ensemble des réels strictement positifs, et

$$\int_1^n \ln t \,\mathrm{d}t = F(n) - F(1) = (n\ln n - n) - (1 \times 0 - 1) = n \ln n - n + 1.$$

**3. L'encadrement.**

*La majoration.* Pour $n \geqslant 2$ et pour tout $k$ compris entre $1$ et $n$, on a $k \leqslant n$ donc $\ln k \leqslant \ln n$. En additionnant ces $n$ inégalités :

$$\ln(n!) = \sum_{k=1}^n \ln k \leqslant n \ln n.$$

L'inégalité est même **stricte**, car pour $k = 1$ on a $\ln 1 = 0 < \ln n$ (puisque $n \geqslant 2$). Donc

$$\ln(n!) < n\ln n.$$

*La minoration.* La fonction $\ln$ est croissante. Donc, pour tout entier $k \geqslant 2$ et tout réel $t \in [k-1\,;k]$,

$$\ln t \leqslant \ln k.$$

En intégrant cette inégalité sur l'intervalle $[k-1\,;k]$, qui est de longueur $1$ :

$$\int_{k-1}^{k} \ln t \,\mathrm{d}t \;\leqslant\; \ln k.$$

*(Géométriquement : l'aire sous la courbe du logarithme entre $k-1$ et $k$ est inférieure à l'aire du rectangle de largeur $1$ et de hauteur $\ln k$.)*

Additionnons pour $k = 2, 3, \dots, n$. À gauche, les intégrales se recollent bout à bout en une seule intégrale de $1$ à $n$ ; à droite on retrouve la somme des $\ln k$ :

$$\int_{1}^{n} \ln t \,\mathrm{d}t \;\leqslant\; \sum_{k=2}^{n} \ln k = \ln(n!) \quad (\text{car } \ln 1 = 0).$$

D'après la question 2, le membre de gauche vaut $n\ln n - n + 1$. Donc

$$\ln(n!) \;\geqslant\; n \ln n - n + 1 \;>\; n\ln n - n.$$

En réunissant les deux inégalités, pour tout $n \geqslant 2$ :

$$\boxed{\;n\ln n - n \;<\; \ln(n!) \;<\; n \ln n.\;}$$

**4. L'encadrement de $n!$.**

La fonction exponentielle est strictement croissante, donc on peut appliquer $\exp$ aux trois membres sans changer les inégalités :

$$e^{n\ln n - n} < n! < e^{n \ln n}, \qquad \text{c'est-à-dire} \qquad \frac{n^n}{e^n} < n! < n^n.$$

La majoration $n! < n^n$ est d'ailleurs évidente directement : dans le produit $1 \times 2 \times \dots \times n$, chacun des $n$ facteurs est au plus $n$, et le premier est strictement plus petit.

**5. Le cas $n = 1000$.**

$\ln 1000 = 3\ln 10 \approx \text{6,9078}$, donc $1000\ln 1000 \approx \text{6907,8}$ et

$$\text{5907,8} < \ln(1000!) < \text{6907,8}.$$

Le nombre de chiffres de $1000!$ est $\left\lfloor \dfrac{\ln(1000!)}{\ln 10} \right\rfloor + 1$, donc il est compris entre

$$\frac{\text{5907,8}}{\text{2,3026}} \approx 2566 \qquad \text{et} \qquad \frac{\text{6907,8}}{\text{2,3026}} = 3000.$$

$1000!$ s'écrit donc avec un nombre de chiffres compris entre $2566$ et $3001$. *(La vraie valeur est $2568$ : la minoration est très bonne, la majoration beaucoup moins.)*

**Conclusion.** Pour tout $n \geqslant 2$, $n\ln n - n < \ln(n!) < n\ln n$, autrement dit $\left(\dfrac{n}{e}\right)^{n} < n! < n^n$. La borne de gauche est de très loin la plus utile : c'est elle qui donne le bon ordre de grandeur de $n!$.

## Going further

1. La formule de Stirling précise ce résultat : $\ln(n!) \approx n \ln n - n + \frac{1}{2}\ln(2\pi n)$, soit $n! \approx \sqrt{2\pi n}\left(\dfrac{n}{e}\right)^{n}$. Vérifier sur $n = 10$ que cette approximation est bien meilleure que l'encadrement précédent.
2. Reprendre la méthode des rectangles dans l'autre sens ($\ln k \leqslant \int_k^{k+1} \ln t\,\mathrm{d}t$) pour obtenir une majoration plus fine que $n\ln n$.
