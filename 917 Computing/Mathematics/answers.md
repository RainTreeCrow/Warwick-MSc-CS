### CS917 – Maths and Stats Assignment



##### 1. Discrete Mathematics

1. (i) $\neg(p\Rightarrow q) = \neg(\neg p \or q)$

   | $p$  | $q$  | $p\Rightarrow q$ | $\neg(p\Rightarrow q)$ | $\neg p$ | $\neg p \or q$ | $\neg(\neg p \or q)$ |
   | :--: | :--: | :--------------: | :--------------------: | :------: | :------------: | :------------------: |
   | *F*  | *F*  |       *T*        |        ***F***         |   *T*    |      *T*       |       ***F***        |
   | *F*  | *T*  |       *T*        |        ***F***         |   *T*    |      *T*       |       ***F***        |
   | *T*  | *F*  |       *F*        |        ***T***         |   *F*    |      *F*       |       ***T***        |
   | *T*  | *T*  |       *T*        |        ***F***         |   *F*    |      *T*       |       ***F***        |

   

   (ii) $((p\and q)\or r) = \neg(\neg p \or \neg q)\or r$

   | $p$  | $q$  | $r$  | $p\and q$ | $((p\and q)\or r)$ |
   | :--: | :--: | :--: | :-------: | :----------------: |
   | *F*  | *F*  | *F*  |    *F*    |      ***F***       |
   | *F*  | *F*  | *T*  |    *F*    |      ***T***       |
   | *F*  | *T*  | *F*  |    *F*    |      ***F***       |
   | *F*  | *T*  | *T*  |    *F*    |      ***T***       |
   | *T*  | *F*  | *F*  |    *F*    |      ***F***       |
   | *T*  | *F*  | *T*  |    *F*    |      ***T***       |
   | *T*  | *T*  | *F*  |    *T*    |      ***T***       |
   | *T*  | *T*  | *T*  |    *T*    |      ***T***       |

   | $p$  | $q$  | $r$  | $\neg p$ | $\neg q$ | $\neg p\or \neg q$ | $\neg(\neg p\or \neg q)$ | $\neg(\neg p\or \neg q)\or r)$ |
   | :--: | :--: | :--: | :------: | :------: | :----------------: | :----------------------: | :----------------------------: |
   | *F*  | *F*  | *F*  |   *T*    |   *T*    |        *T*         |           *F*            |            ***F***             |
   | *F*  | *F*  | *T*  |   *T*    |   *T*    |        *T*         |           *F*            |            ***T***             |
   | *F*  | *T*  | *F*  |   *T*    |   *F*    |        *T*         |           *F*            |            ***F***             |
   | *F*  | *T*  | *T*  |   *T*    |   *F*    |        *T*         |           *F*            |            ***T***             |
   | *T*  | *F*  | *F*  |   *F*    |   *T*    |        *T*         |           *F*            |            ***F***             |
   | *T*  | *F*  | *T*  |   *F*    |   *T*    |        *T*         |           *F*            |            ***T***             |
   | *T*  | *T*  | *F*  |   *F*    |   *F*    |        *F*         |           *T*            |            ***T***             |
   | *T*  | *T*  | *T*  |   *F*    |   *F*    |        *F*         |           *T*            |            ***T***             |

   

   (iii) $\neg((p \and q)\Leftrightarrow r) = \neg(((p\and q)\and r)\or(\neg(p\and q)\and \neg r))$

   ​	$= \neg(\neg(\neg(p \and q)\or \neg r)\or\neg((p\and q)\or r))$

   ​	$= \neg(\neg(\neg p \or \neg q \or \neg r)\or \neg(\neg(\neg p\or \neg q) \or r))$

   | $p$  | $q$  | $r$  | $p\and q$ | $(p\and q)\Leftrightarrow r$ | $\neg((p\and q)\Leftrightarrow r)$ |
   | :--: | :--: | :--: | :-------: | :--------------------------: | :--------------------------------: |
   | *F*  | *F*  | *F*  |    *F*    |             *T*              |              ***F***               |
   | *F*  | *F*  | *T*  |    *F*    |             *F*              |              ***T***               |
   | *F*  | *T*  | *F*  |    *F*    |             *T*              |              ***F***               |
   | *F*  | *T*  | *T*  |    *F*    |             *F*              |              ***T***               |
   | *T*  | *F*  | *F*  |    *F*    |             *T*              |              ***F***               |
   | *T*  | *F*  | *T*  |    *F*    |             *F*              |              ***T***               |
   | *T*  | *T*  | *F*  |    *T*    |             *F*              |              ***T***               |
   | *T*  | *T*  | *T*  |    *T*    |             *T*              |              ***F***               |

   | $\neg$  | $(\neg(\neg p \or \neg q \or \neg r)$ | $\or$ | $\neg($ | $\neg$ | $(\neg p$ | $\or$ | $\neg q)$ | $\or$ | $r))$ |
   | :-----: | :-----------------------------------: | :---: | :-----: | :----: | :-------: | :---: | :-------: | :---: | :---: |
   | ***F*** |                  *F*                  |  *T*  |   *T*   |  *F*   |    *T*    |  *T*  |    *T*    |  *F*  |  *F*  |
   | ***T*** |                  *F*                  |  *F*  |   *F*   |  *F*   |    *T*    |  *T*  |    *T*    |  *T*  |  *T*  |
   | ***F*** |                  *F*                  |  *T*  |   *T*   |  *F*   |    *T*    |  *T*  |    *F*    |  *F*  |  *F*  |
   | ***T*** |                  *F*                  |  *F*  |   *F*   |  *F*   |    *T*    |  *T*  |    *F*    |  *T*  |  *T*  |
   | ***F*** |                  *F*                  |  *T*  |   *T*   |  *F*   |    *F*    |  *T*  |    *T*    |  *F*  |  *F*  |
   | ***T*** |                  *F*                  |  *F*  |   *F*   |  *F*   |    *F*    |  *T*  |    *T*    |  *T*  |  *T*  |
   | ***T*** |                  *F*                  |  *F*  |   *F*   |  *T*   |    *F*    |  *F*  |    *F*    |  *T*  |  *F*  |
   | ***F*** |                  *T*                  |  *T*  |   *F*   |  *T*   |    *F*    |  *F*  |    *F*    |  *T*  |  *T*  |



2. Suppose there is a set of rings $R$ and a set of humans (both ordinary or not) $H$.

   (i) Frodo has a ring:  $\exist\ r \in R: has(Frodo, r)$

   ​	There exists a ring (or more than one rings) that is possessed by Frodo.

   

   (ii) Sauron does not have any rings:  $\neg \exist\ r \in R : has(Sauron, r)$

   ​	There does not exist a ring that is possessed by Sauron.

   

   (iii) The One Ring rules all the other rings:

   ​	$One\ Ring \in R \and\forall\ r \in R: (r\neq One\ Ring \Rightarrow rules(One\ Ring, r))$

   ​	The One Ring belongs to the set of all rings, and for all rings in the set, if it is not the One Ring (so we are excluding itself), then we know it is ruled by the One Ring.

   

   (iv) The ring that Frodo has is the One Ring:  $has(Frodo, One\ Ring)$

   ​	Frodo has/is in possession of The One Ring.

   

   (v) Whoever wears the ring, becomes invisible:

   ​	$\forall\ h \in H: (wears(h,One\ Ring) \Rightarrow \\ \forall\ o \in H: (o \neq h \and ordinary(o) \Rightarrow \neg sees(o, h))$

   ​	For any human (represented by $h$), wearing the One Ring entails that for any other human (represented by $o$ and excluding $h$), if $o$ is ordinary than they cannot see $h$. Here $o \neq h$ is added for we assume there is no such thing as seeing oneself, that is to say, statement $sees(h, h)$ would not be either true or false, let's just consider it meaningless...

   

   (vi) Bombadil Tom can see the ring-wearer, hence he is no ordinary human

   ​	$((\forall\ h \in H: (wears(h,One\ Ring) \Rightarrow \\ \forall\ o \in H: (o \neq h \and ordinary(o) \Rightarrow \neg sees(o, h)))\\ \and\ (\exist\ w \in H: (wears(w, One\ Ring) \and sees(Bombadil\ Tom, w)))) \\ \Rightarrow \neg ordinary(Bombadil\ Tom)$

   ​	Basically we are trying to say that combining the statement from (v) (that whoever wears the One Ring is invisible) and the existential statement that there is some human $w$ who wears the Ring and can be seen by Tom) will entail that Tom is not an ordinary human.



3.  (i) $R_{x,y}$ is irreflexive:  $\exist\ a \in A: (a, a)\notin R_{x,y}$

   

   (ii) $R_{x,y}$ is intransitive:  $\exist\ a, b, c \in A: ((a, b) \in R_{x,y} \and (b, c) \in R_{x,y} \and (a, c) \notin R_{x, y})$

   

   (iii) $R_{x,y}$ is not a partial order if it is irreflexive, not antisymmetric or intransitive:

   ​	$(\exist\ a \in A: (a, a)\notin R_{x,y}) \or (\exist\ a, b \in A: (a \neq b \and (a, b) \in R_{x,y} \and (b, a) \in R_{x, y})) \\ \or\ (\exist\ a, b, c \in A: ((a, b) \in R_{x,y} \and (b, c) \in R_{x,y} \and (a, c) \notin R_{x, y}))$



4. (i) $f$ is injective but not surjective, because each element $n$ in $Z$ would map to a different $n^{2022}+1$, but not all natural numbers in $N$ can be broken down to some $n^{2022} +1$. For many $m$'s in $N$ $\sqrt[2022] {m-1}$    would not be in $Z$, and for $0$ $\sqrt[2022] {-1}$    does not even exist.

   

   (ii) $g$ is injective but not surjective, each pair of $(n,k)$ in $N \times N$ would map to a different $2^n3^k5^{n+k}$, but not all natural numbers in $N$ can be broken down to some $2^n3^k5^{n+k}$.

   

   (iii) $h$ is both injective and surjective. It is a function that takes a subset of all natural numbers $N$ and output its complement. In other words, $h(A) = \{a\ |\ a\in N \and a\notin A\}$, so each $A$ in $P(N)$ would map to a different $h(A)$. It can also be observed that $h(h(A)) = A$, so for any $B$ in $P(N)$ we can always find the $A = h(B)$ in $N$ so that $h(A) = B$.

   

   (iv) $k$ is neither injective nor surjective. All even numbers in $N$ would map to the same $(-1)^n = 1$, and all odd numbers in $N$ maps to the same $(-1)^n = -1$. Besides, any number $z$ in $Z$ except for $1$ and $-1$ cannot find a corresponding $n$ in $N$ so that $(-1)^n = z$. 



##### 2. Statistical Analysis

1. Sample space for a fair coin is tossed twice: $S=\{HH,HT,TH,TT\}$

   (i) Let event $E_1$ denote "one toss yields H and the other toss yields T", $E_1=\{HT,TH\}$, $P(E_1)={1\over2}$, event $E_2$ denotes "first toss yields H", $E_2=\{HH,HT\}$, $P(E_2) = {1\over2}$, $P(E_1\cap E_2)=P(\{HT\})={1\over4}$, $P(E_1|E_2)={P(E_1\cap E_2)\over P(E_2)} = {1/4\over1/2} = {1\over2}$.

   

   (ii) Let event $E_3$ denote "both tosses yield H", $E_3=\{HH\}$, $P(E_3)={1\over4}$, event $E_4$ denotes "at least one the tosses yield H", $E_4=\{HH,HT,TH\}$, $P(E_4) = {3\over4}$, $P(E_3\cap E_4)=P(\{HH\})={1\over4}$, $P(E_3|E_4)={P(E_3\cap E_4)\over P(E_4)} = {1/4\over3/4} = {1\over3}$.



2. Probability of a computer to be provided by a specific company:

   ​	$P(A)=40\%$, $P(B) = 30\%$, $P(C)=30\%$

   Probability of a computer to be defective given it is provided by a company:

   ​	$P(d|A) = 5\%$, $P(d|B)=3\%$, $P(d|C)=2.5\%$

   Probability for a randomly chosen computer to be defective:

   ​	$P(d)=P(d|A)P(A)+P(d|B)P(B)+P(d|C)P(C)\\=5\%\times40\%+3\%\times30\%+2.5\%\times30\%=3.65\%$

   Probability of a defective computer to be supplied by company A:

   ​	$P(A|d)={P(d\cap A)\over P(d)}={P(d|A)P(A)\over P(d)}={5\%\times40\%\over3.65\%}=54.79\%$



3. All possible cases transferred to the vessel:

   ​	3 white 1 black:  $P(3W1B)=\begin{pmatrix}3\\3\end{pmatrix}\times\begin{pmatrix}5\\1\end{pmatrix}\div\begin{pmatrix}8\\4\end{pmatrix}=1\times5\div70={1\over14}$

   ​	2 white 2 black:  $P(2W2B)=\begin{pmatrix}3\\2\end{pmatrix}\times\begin{pmatrix}5\\2\end{pmatrix}\div\begin{pmatrix}8\\4\end{pmatrix}=3\times10\div70={3\over7}$

   ​	1 white 3 black:  $P(1W3B)=\begin{pmatrix}3\\1\end{pmatrix}\times\begin{pmatrix}5\\3\end{pmatrix}\div\begin{pmatrix}8\\4\end{pmatrix}=3\times10\div70={3\over7}$

   ​	4 black:  $P(4B)=\begin{pmatrix}5\\4\end{pmatrix}\div\begin{pmatrix}8\\4\end{pmatrix}=5\div70={1\over14}$

   Probability of drawing a white ball for each case:

   ​	$P(dB|3W1B)={3\over4}$, $P(dB|2W2B)={1\over2}$, $P(dB|1W3B)={1\over4}$, $P(dB|4B)=0$

   Probability of drawing a white ball:

   ​	$P(dB)=P(db|3W1B)P(3W1B)+P(db|2W2B)P(2W2B)\\+P(dB|1W3B)P(1W3B)+P(dB|4B)P(4B)\\={3\over4}\times{1\over14}+{1\over2}\times{3\over7}+{1\over4}\times{3\over7}+0\times{1\over14}={3\over8}$

   Probability that 3 white 1 black are transferred given a white ball is drawn:

   ​	$P(3W1B|dB)={P(dB|3W1B)P(3W1B)\over P(dB)}={3\over4}\times{1\over14}\div{3\over8}={1\over7}$



4. Given sample size $n = 12$, sample mean $\bar X = 20.175$ gm, Sample standard deviation $S = 3.0211$ gm,  form the null hypothesis $H_0$ and the alternative hypothesis $H_a$.

   ​	$H_0$: population mean $\mu \leq 20$

   ​	$H_a$: population mean $\mu \gt 20$

   The test statistics $t = {\bar X−\mu\over S/\sqrt n} = {20.175-20\over3.0211/\sqrt{12}} = 0.2007$. Refer to the t-Distribution table, go to the 11-th row, find where the absolute value of $t = 0.2007$ resides. We see that $0.2007 < 1.3634$. This is a one-sided test, so $p\textendash value > 0.1$. Since $p\textendash value \not\lt 0.05$, we cannot reject $H_0$, and we assume there isn't enough evidence to accept this claim.