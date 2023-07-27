---
title: Leaderboards for Dynamic Node Property Prediction
permalink: /docs/leader_nodeprop/
---

#### Check leaderboards for
#### - [tgbn-trade](#tgbn-trade)
#### - [tgbn-genre](#tgbn-genre)
#### - [tgbn-reddit](#tgbn-reddit)

The **bold** method name indicates that the implementation is **official** (by the author of the original paper). <br/>
**Package** denotes the required package version for each dataset to be eligible for the leaderboard.

<a name="tgbn-trade"/>
-------

### Leaderboard for [tgbn-trade](../nodeprop/#tgbn-trade)
##### The MRR score on the test and validation sets. The higher, the better.

#### Package: >=0.7.5

| Rank  | Method | Test NDCG@10 (%) | Validation NDCG@10 (%) | Contact | References | Date 
|:----:|:-----:|:------:|:-----:|:-----:|:-----:|-----:|
|  1  |  **Persistent Forecast**  | 0.386  |   0.405 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=qG7IkQ7IBO), [Code](https://github.com/shenyangHuang/TGB) | June 7th, 2023 |
|  2  |  **Moving Average**  | 0.371  |  0.396 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=qG7IkQ7IBO), [Code](https://github.com/shenyangHuang/TGB) | June 7th, 2023 |
|  3  |  **DyRep**  | 0.169 ± 0.001   | 0.186 ± 0.001 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=HyePrhR5KX), [Code](https://github.com/shenyangHuang/TGB) | June 7th, 2023 |
|  4  |  **TGN**  | 0.168 ± 0.001  | 0.185 ± 0.002 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://arxiv.org/abs/2006.10637), [Code](https://github.com/shenyangHuang/TGB) | June 7th, 2023 |


<a name="tgbn-genre"/>
-------

### Leaderboard for [tgbn-genre](../nodeprop/#tgbn-genre)
##### The MRR score on the test and validation sets. The higher, the better.

#### Package: >=0.7.5

| Rank  | Method | Test NDCG@10 (%) | Validation NDCG@10 (%) | Contact | References | Date 
|:----:|:-----:|:------:|:-----:|:-----:|:-----:|-----:|
|  1  |  **TGN**  | 0.196 ± 0.011  | 0.176 ± 0.005 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://arxiv.org/abs/2006.10637), [Code](https://github.com/shenyangHuang/TGB) | June 7th, 2023 |
|  2  |  **Moving Average**  | 0.193  |  0.164 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=qG7IkQ7IBO), [Code](https://github.com/shenyangHuang/TGB) | June 7th, 2023 |
|  3  |  **DyRep**  | 0.181 ± 0.001   | 0.159 ± 0.001 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=HyePrhR5KX), [Code](https://github.com/shenyangHuang/TGB) | June 7th, 2023 |
|  4  |  **Persistent Forecast**  | 0.126  |   0.107 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=qG7IkQ7IBO), [Code](https://github.com/shenyangHuang/TGB) | June 7th, 2023 |


<a name="tgbn-reddit"/>
-------

### Leaderboard for [tgbn-reddit](../nodeprop/#tgbn-reddit)
##### The MRR score on the test and validation sets. The higher, the better.

#### Package: >=0.7.5

| Rank  | Method | Test NDCG@10 (e-4) | Validation NDCG@10 (e-4) | Contact | References | Date 
|:----:|:-----:|:------:|:-----:|:-----:|:-----:|-----:|
|  1  |  **Moving Average**  | 0.831  |  0.847  |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=qG7IkQ7IBO), [Code](https://github.com/shenyangHuang/TGB) | June 7th, 2023 |
|  2  |  **Persistent Forecast**  | 0.548 |   0.561 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=qG7IkQ7IBO), [Code](https://github.com/shenyangHuang/TGB) | June 7th, 2023 |
|  3  |  **DyRep**  | 0.464 ± 0.001   | 0.508 ± 0.001 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=HyePrhR5KX), [Code](https://github.com/shenyangHuang/TGB) | June 7th, 2023 |
|  4  |  **TGN**  | 0.446 ± 0.078  | 0.559 ± 0.005 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://arxiv.org/abs/2006.10637), [Code](https://github.com/shenyangHuang/TGB) | June 7th, 2023 |