---
title: Leaderboards for Dynamic Link Property Prediction
permalink: /docs/leader_linkprop/
---

### Check leaderboards for
#### - [tgbl-wiki-v2](#tgbl-wiki-v2)
#### - [tgbl-review-v2](#tgbl-review-v2)
#### - [tgbl-coin](#tgbl-coin)
#### - [tgbl-comment](#tgbl-comment)
#### - [tgbl-flight](#tgbl-flight)

The **bold** method name indicates that the implementation is **official** (by the author of the original paper). <br/>
**Package** denotes the required package version for each dataset to be eligible for the leaderboard.


<a name="tgbl-wiki-v2"/>
-------

### Leaderboard for [tgbl-wiki-v2](../linkprop/#tgbl-wiki-v2)
##### **Please update your package >= `0.7.5`**. In version 2 of `tgbl-wiki`, we have included all possible negative destinations for each positive edge thus increasing the task difficulty.  For submissions, please submit to this version.  Previous version of the dataset leaderboard is [tgbl-wiki-v1](../leader_linkprop_old/#tgbl-wiki-v1). The MRR score on the test and validation sets. The higher, the better.

#### Package: >=0.7.5

| Rank  | Method | Test MRR | Validation MRR | Contact | References | Date 
|:----:|:-----:|:------:|:-----:|:-----:|:-----:|-----:|
|  1  |  **DyGFormer**  | 0.798 ± 0.004   | 0.816 ± 0.005 | [Le Yu (Beihang University)](mailto:yule@buaa.edu.cn) | [Paper](https://arxiv.org/abs/2307.12510), [Code](https://github.com/yule-BUAA/DyGLib_TGB) | August 22nd, 2023 |
|  2  |  **NAT**  | 0.749 ± 0.010   | 0.773 ± 0.011 | [TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/pdf?id=EPUtNe7a9ta), [Code](https://github.com/shenyangHuang/TGB) | August 22nd, 2023 |
|  3  |  **CAWN**  | 0.711 ± 0.006   | 0.743 ± 0.004 | [TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](http://snap.stanford.edu/caw/), [Code](https://github.com/shenyangHuang/TGB) | July 27th, 2023 |
|  4  |  **EdgeBank(tw)**  | 0.571   | 0.600 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=1GVpwr2Tfdg), [Code](https://github.com/shenyangHuang/TGB) | July 27th, 2023 |
|  5  |  **EdgeBank(unlimited)**  |  0.495   |  0.527 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=1GVpwr2Tfdg), [Code](https://github.com/shenyangHuang/TGB) | July 27th, 2023 |
|  6  |  **TGN**  | 0.396 ± 0.060   | 0.435 ± 0.069 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://arxiv.org/abs/2006.10637), [Code](https://github.com/shenyangHuang/TGB) | August 7th, 2023 |
|  7  |  **TCL**  | 0.207 ± 0.025   | 0.198 ± 0.016 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://arxiv.org/abs/2105.07944), [Code](https://github.com/shenyangHuang/TGB) | July 27th, 2023 |
|  8  |  **TGAT**  | 0.141 ± 0.007   | 0.131 ± 0.008 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://arxiv.org/pdf/2002.07962.pdf), [Code](https://github.com/shenyangHuang/TGB) | August 22th, 2023 |
|  9  |  **GraphMixer**  | 0.118 ± 0.002   | 0.113 ± 0.003 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=ayPPc0SyLv1), [Code](https://github.com/shenyangHuang/TGB) | August 7th, 2023 |
|  10  |  **DyRep**  | 0.050 ± 0.017   | 0.072 ± 0.009 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=HyePrhR5KX), [Code](https://github.com/shenyangHuang/TGB) | July 27th, 2023 |


<a name="tgbl-review-v2"/>
-------

### Leaderboard for [tgbl-review-v2](../linkprop/#tgbl-review-v2)
##### **Please update your package >= `0.7.5`**. In version 2 of `tgbl-review`, we have included 100 negative destinations for each positive edge thus increasing the task difficulty. For submissions, please submit to this version.  Previous version of the dataset leaderboard is [tgbl-review-v1](../leader_linkprop_old/#tgbl-review-v1). The MRR score on the test and validation sets. The higher, the better. 

#### Package: >=0.7.5

| Rank  | Method | Test MRR | Validation MRR | Contact | References | Date 
|:----:|:-----:|:------:|:-----:|:-----:|:-----:|-----:|
|  1  |  **GraphMixer**  | 0.521 ± 0.015   | 0.428 ± 0.019 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=ayPPc0SyLv1), [Code](https://github.com/shenyangHuang/TGB) | July 27th, 2023 |
|  2  |  **TGAT**  | 0.355 ± 0.012   | 0.324 ± 0.006 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://arxiv.org/pdf/2002.07962.pdf), [Code](https://github.com/shenyangHuang/TGB) | August 22th, 2023 |
|  3  |  **TGN**  | 0.349 ± 0.020   | 0.313 ± 0.012 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://arxiv.org/abs/2006.10637), [Code](https://github.com/shenyangHuang/TGB) | July 27th, 2023 |
|  4  |  **NAT**  | 0.341 ± 0.020   | 0.302 ± 0.011 | [TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/pdf?id=EPUtNe7a9ta), [Code](https://github.com/shenyangHuang/TGB) | August 22nd, 2023 |
|  5  |  **DyRep**  | 0.220 ± 0.030   | 0.216 ± 0.031 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=HyePrhR5KX), [Code](https://github.com/shenyangHuang/TGB) | July 27th, 2023 |
|  6  |  **CAWN**  | 0.193 ± 0.001   | 0.200 ± 0.001 | [TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](http://snap.stanford.edu/caw/), [Code](https://github.com/shenyangHuang/TGB) | July 27th, 2023 |
|  7  |  **TCL**  | 0.193 ± 0.009   | 0.199 ± 0.007 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://arxiv.org/abs/2105.07944), [Code](https://github.com/shenyangHuang/TGB) | July 27th, 2023 |
|  8  |  **EdgeBank(tw)**  | 0.025   | 0.024 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=1GVpwr2Tfdg), [Code](https://github.com/shenyangHuang/TGB) | July 27th, 2023 |
|  9  |  **EdgeBank(unlimited)**  | 0.023   | 0.023 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=1GVpwr2Tfdg), [Code](https://github.com/shenyangHuang/TGB) | July 27th, 2023 |


<a name="tgbl-coin"/>
-------

### Leaderboard for [tgbl-coin](../linkprop/#tgbl-coin)
##### The MRR score on the test and validation sets. The higher, the better.

#### Package: >=0.7.5

| Rank  | Method | Test MRR | Validation MRR | Contact | References | Date 
|:----:|:-----:|:------:|:-----:|:-----:|:-----:|-----:|
|  1  |  **DyGFormer**  | 0.749 ± 0.001   | 0.729 ± 0.001 | [Le Yu (Beihang University)](mailto:yule@buaa.edu.cn) | [Paper](https://arxiv.org/abs/2307.12510), [Code](https://github.com/yule-BUAA/DyGLib_TGB) | August 22nd, 2023 |
|  2  |  **TGN**  | 0.583 ± 0.050   | 0.594 ± 0.023 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://arxiv.org/abs/2006.10637), [Code](https://github.com/shenyangHuang/TGB) | June 7th, 2023 |
|  3  |  **EdgeBank(tw)**  | 0.580   |   0.492 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=1GVpwr2Tfdg), [Code](https://github.com/shenyangHuang/TGB) | June 7th, 2023 |
|  4  |  **DyRep**  | 0.434 ± 0.038   | 0.507 ± 0.029 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=HyePrhR5KX), [Code](https://github.com/shenyangHuang/TGB) | June 7th, 2023 |
|  5  |  **EdgeBank(unlimited)**  | 0.359   |  0.315 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=1GVpwr2Tfdg), [Code](https://github.com/shenyangHuang/TGB) | June 7th, 2023 |


<a name="tgbl-comment"/>
-------

### Leaderboard for [tgbl-comment](../linkprop/#tgbl-comment)
##### The MRR score on the test and validation sets. The higher, the better.

#### Package: >=0.7.5

| Rank  | Method | Test MRR | Validation MRR | Contact | References | Date 
|:----:|:-----:|:------:|:-----:|:-----:|:-----:|-----:|
|  1  |  **TGN**  | 0.379 ± 0.021  | 0.356 ± 0.019 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://arxiv.org/abs/2006.10637), [Code](https://github.com/shenyangHuang/TGB) | June 7th, 2023 |
|  2  |  **DyRep**  | 0.289 ± 0.033   | 0.291 ± 0.028 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=HyePrhR5KX), [Code](https://github.com/shenyangHuang/TGB) | June 7th, 2023 |
|  3  |  **EdgeBank(tw)**  | 0.149   |  0.124 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=1GVpwr2Tfdg), [Code](https://github.com/shenyangHuang/TGB) | June 7th, 2023 |
|  4  |  **EdgeBank(unlimited)**  | 0.129  |  0.109 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=1GVpwr2Tfdg), [Code](https://github.com/shenyangHuang/TGB) | June 7th, 2023 |



<a name="tgbl-flight"/>
-------

### Leaderboard for [tgbl-flight](../linkprop/#tgbl-flight)
##### The MRR score on the test and validation sets. The higher, the better.

#### Package: >=0.7.5

| Rank  | Method | Test MRR | Validation MRR | Contact | References | Date 
|:----:|:-----:|:------:|:-----:|:-----:|:-----:|-----:|
|  1  |  **TGN**  | 0.706 ± 0.016  | 0.739 ± 0.012 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://arxiv.org/abs/2006.10637), [Code](https://github.com/shenyangHuang/TGB) | June 7th, 2023 |
|  2  |  **DyRep**  | 0.543 ± 0.024   | 0.528 ± 0.022 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=HyePrhR5KX), [Code](https://github.com/shenyangHuang/TGB) | June 7th, 2023 |
|  3  |  **EdgeBank(tw)**  | 0.364   |  0.388 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=1GVpwr2Tfdg), [Code](https://github.com/shenyangHuang/TGB) | June 7th, 2023 |
|  4  |  **EdgeBank(unlimited)**  | 0.167  |  0.166 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=1GVpwr2Tfdg), [Code](https://github.com/shenyangHuang/TGB) | June 7th, 2023 |