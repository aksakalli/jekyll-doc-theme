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
##### **Please update your package to `0.7.5`**. In version 2 of `tgbl-wiki`, we have included all possible negative destinations for each positive edge thus increasing the task difficulty.  For submissions, please submit to this version.  Previous version of the dataset leaderboard is [tgbl-wiki-v1](../leader_linkprop_old/#tgbl-wiki-v1). The MRR score on the test and validation sets. The higher, the better.

#### Package: >=0.7.5

| Rank  | Method | Test MRR | Validation MRR | Contact | References | Date 
|:----:|:-----:|:------:|:-----:|:-----:|:-----:|-----:|
|  1  |  **CAWN**  | 0.711 ± 0.006   | 0.743 ± 0.004 | [TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](http://snap.stanford.edu/caw/), [Code](https://github.com/shenyangHuang/TGB) | July 27th, 2023 |
|  2  |  **EdgeBank(tw)**  | 0.571   | 0.600 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=1GVpwr2Tfdg), [Code](https://github.com/shenyangHuang/TGB) | July 27th, 2023 |
|  3  |  **EdgeBank(unlimited)**  |  0.495   |  0.527 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=1GVpwr2Tfdg), [Code](https://github.com/shenyangHuang/TGB) | July 27th, 2023 |
|  4  |  **TGN**  | 0.394 ± 0.049   | 0.435 ± 0.057 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://arxiv.org/abs/2006.10637), [Code](https://github.com/shenyangHuang/TGB) | July 27th, 2023 |
|  5  |  **TCL**  | 0.207 ± 0.025   | 0.198 ± 0.016 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://arxiv.org/abs/2105.07944), [Code](https://github.com/shenyangHuang/TGB) | July 27th, 2023 |\
|  6  |  **GraphMixer**  | 0.120 ± 0.004   | 0.116 ± 0.006 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=ayPPc0SyLv1), [Code](https://github.com/shenyangHuang/TGB) | July 27th, 2023 |
|  7  |  **DyRep**  | 0.050 ± 0.017   | 0.072 ± 0.009 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=HyePrhR5KX), [Code](https://github.com/shenyangHuang/TGB) | July 27th, 2023 |


<a name="tgbl-review-v2"/>
-------

### Leaderboard for [tgbl-review-v2](../linkprop/#tgbl-review-v2)
##### **Please update your package to `0.7.5`**. In version 2 of `tgbl-review`, we have included 100 negative destinations for each positive edge thus increasing the task difficulty. For submissions, please submit to this version.  Previous version of the dataset leaderboard is [tgbl-review-v1](../leader_linkprop_old/#tgbl-review-v1). The MRR score on the test and validation sets. The higher, the better. 

#### Package: >=0.7.5

| Rank  | Method | Test MRR | Validation MRR | Contact | References | Date 
|:----:|:-----:|:------:|:-----:|:-----:|:-----:|-----:|
|  1  |  **GraphMixer**  | 0.521 ± 0.015   | 0.428 ± 0.019 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=ayPPc0SyLv1), [Code](https://github.com/shenyangHuang/TGB) | July 27th, 2023 |
|  2  |  **TGN**  | 0.349 ± 0.020   | 0.313 ± 0.012 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://arxiv.org/abs/2006.10637), [Code](https://github.com/shenyangHuang/TGB) | July 27th, 2023 |
|  3  |  **DyRep**  | 0.220 ± 0.030   | 0.216 ± 0.031 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=HyePrhR5KX), [Code](https://github.com/shenyangHuang/TGB) | July 27th, 2023 |
|  5  |  **CAWN**  | 0.193 ± 0.001   | 0.200 ± 0.001 | [TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](http://snap.stanford.edu/caw/), [Code](https://github.com/shenyangHuang/TGB) | July 27th, 2023 |
|  4  |  **TCL**  | 0.193 ± 0.009   | 0.199 ± 0.007 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://arxiv.org/abs/2105.07944), [Code](https://github.com/shenyangHuang/TGB) | July 27th, 2023 |
|  6  |  **EdgeBank(tw)**  | 0.0253   | 0.0242 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=1GVpwr2Tfdg), [Code](https://github.com/shenyangHuang/TGB) | July 27th, 2023 |
|  7  |  **EdgeBank(unlimited)**  | 0.0229   | 0.0229 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=1GVpwr2Tfdg), [Code](https://github.com/shenyangHuang/TGB) | July 27th, 2023 |


<a name="tgbl-coin"/>
-------

### Leaderboard for [tgbl-coin](../linkprop/#tgbl-coin)
##### The MRR score on the test and validation sets. The higher, the better.

#### Package: >=0.7.5

| Rank  | Method | Test MRR | Validation MRR | Contact | References | Date 
|:----:|:-----:|:------:|:-----:|:-----:|:-----:|-----:|
|  1  |  **TGN**  | 0.583 ± 0.050   | 0.594 ± 0.023 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://arxiv.org/abs/2006.10637), [Code](https://github.com/shenyangHuang/TGB) | June 7th, 2023 |
|  2  |  **EdgeBank(tw)**  | 0.580   |   0.492 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=1GVpwr2Tfdg), [Code](https://github.com/shenyangHuang/TGB) | June 7th, 2023 |
|  3  |  **DyRep**  | 0.434 ± 0.038   | 0.507 ± 0.029 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=HyePrhR5KX), [Code](https://github.com/shenyangHuang/TGB) | June 7th, 2023 |
|  4  |  **EdgeBank(unlimited)**  | 0.359   |  0.315 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=1GVpwr2Tfdg), [Code](https://github.com/shenyangHuang/TGB) | June 7th, 2023 |


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