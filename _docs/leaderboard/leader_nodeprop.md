---
title: Leaderboards for Dynamic Node Property Prediction
permalink: /docs/leader_nodeprop/
---

#### Check leaderboards for
#### - [tgbn-trade](#tgbn-trade)
#### - [tgbn-genre](#tgbn-genre)
#### - [tgbn-reddit](#tgbn-reddit)
#### - [tgbn-token](#tgbn-token)


The **bold** method name indicates that the implementation is **official** (by the author of the original paper). <br/>
**Package** denotes the required package version for each dataset to be eligible for the leaderboard.

**Note that the evaluation metric computation has been updated in versioin `0.8.0`, please refer to the [`examples/nodeproppred/`](https://github.com/shenyangHuang/TGB/tree/main/examples/nodeproppred) folder to see corrected metric computations.**

For previous version of leaderboards, please see [the link](../leader_nodeprop_old/)

<a name="tgbn-trade"/>
-------

### Leaderboard for [tgbn-trade](../nodeprop/#tgbn-trade)
##### The MRR score on the test and validation sets. The higher, the better.

#### Package: >=0.8.0

| Rank  | Method | Test NDCG@10  | Validation NDCG@10  | Contact | References | Date 
|:----:|:-----:|:------:|:-----:|:-----:|:-----:|-----:|
|  1  |  **Persistent Forecast**  | 0.855  | 0.860 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://arxiv.org/abs/2307.01026), [Code](https://github.com/shenyangHuang/TGB) | August 6th, 2023 |
|  2  |  **Moving Average**  | 0.823  | 0.841 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://arxiv.org/abs/2307.01026), [Code](https://github.com/shenyangHuang/TGB) | August 6th, 2023 |
|  3  |  **DyGFormer**  | 0.388 ± 0.006   | 0.408 ± 0.006 | [Le Yu (Beihang University)](mailto:yule@buaa.edu.cn) | [Paper](https://openreview.net/forum?id=xHNzWHbklj), [Code](https://github.com/yule-BUAA/DyGLib_TGB) | August 22nd, 2023 |
|  4  |  **TGN**  | 0.374 ± 0.001  | 0.395 ± 0.002 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://arxiv.org/abs/2006.10637), [Code](https://github.com/shenyangHuang/TGB) | August 6th, 2023 |
|  5  |  **DyRep**  | 0.374 ± 0.001   | 0.394 ± 0.001 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=HyePrhR5KX), [Code](https://github.com/shenyangHuang/TGB) | August 6th, 2023 |



<a name="tgbn-genre"/>
-------

### Leaderboard for [tgbn-genre](../nodeprop/#tgbn-genre)
##### The MRR score on the test and validation sets. The higher, the better.

#### Package: >=0.8.0

| Rank  | Method | Test NDCG@10 | Validation NDCG@10 | Contact | References | Date 
|:----:|:-----:|:------:|:-----:|:-----:|:-----:|-----:|
|  1  |  **Moving Average**  | 0.509  |  0.499 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://arxiv.org/abs/2307.01026), [Code](https://github.com/shenyangHuang/TGB) | August 6th, 2023 |
|  2  |  **TGN**  | 0.367 ± 0.058  | 0.403 ± 0.010 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://arxiv.org/abs/2006.10637), [Code](https://github.com/shenyangHuang/TGB) | August 6th, 2023 |
|  3  |  **DyGFormer**  | 0.365 ± 0.002   | 0.371 ± 0.001 | [Le Yu (Beihang University)](mailto:yule@buaa.edu.cn) | [Paper](https://openreview.net/forum?id=xHNzWHbklj), [Code](https://github.com/yule-BUAA/DyGLib_TGB) | August 22nd, 2023 |
|  4  |  **Persistent Forecast**  | 0.357  | 0.350 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://arxiv.org/abs/2307.01026), [Code](https://github.com/shenyangHuang/TGB) | August 6th, 2023 |
|  5  |  **DyRep**  | 0.351 ± 0.001   | 0.357 ± 0.001 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=HyePrhR5KX), [Code](https://github.com/shenyangHuang/TGB) | August 6th, 2023 |




<a name="tgbn-reddit"/>
-------

### Leaderboard for [tgbn-reddit](../nodeprop/#tgbn-reddit)
##### The MRR score on the test and validation sets. The higher, the better.

#### Package: >=0.8.0

| Rank  | Method | Test NDCG@10 | Validation NDCG@10 | Contact | References | Date 
|:----:|:-----:|:------:|:-----:|:-----:|:-----:|-----:|
|  1  |  **Moving Average**  | 0.559  |  0.574  |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://arxiv.org/abs/2307.01026), [Code](https://github.com/shenyangHuang/TGB) | August 6th, 2023 |
|  2  |  **Persistent Forecast**  |  0.369 |   0.380 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://arxiv.org/abs/2307.01026), [Code](https://github.com/shenyangHuang/TGB) | August 6th, 2023 |
|  3  |  **DyGFormer**  | 0.316 ± 0.001   | 0.348 ± 0.001 | [Le Yu (Beihang University)](mailto:yule@buaa.edu.cn) | [Paper](https://openreview.net/forum?id=xHNzWHbklj), [Code](https://github.com/yule-BUAA/DyGLib_TGB) | August 22nd, 2023 |
|  4  |  **TGN**  | 0.315 ± 0.020  | 0.379 ± 0.004 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://arxiv.org/abs/2006.10637), [Code](https://github.com/shenyangHuang/TGB) | August 6th, 2023 |
|  5  |  **DyRep**  | 0.312 ± 0.001   | 0.344 ± 0.001 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=HyePrhR5KX), [Code](https://github.com/shenyangHuang/TGB) | August 6th, 2023 |






<a name="tgbn-token"/>
-------

### Leaderboard for [tgbn-token](../nodeprop/#tgbn-token)
##### The MRR score on the test and validation sets. The higher, the better.

#### Package: >=0.9.0

| Rank  | Method | Test NDCG@10 | Validation NDCG@10 | Contact | References | Date 
|:----:|:-----:|:------:|:-----:|:-----:|:-----:|-----:|
|  1  |  **Moving Average**  | 0.508  |  0.491   |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://arxiv.org/abs/2307.01026), [Code](https://github.com/shenyangHuang/TGB) | September 27th, 2023 |
|  2  |  **Persistent Forecast**  |  0.430 |   0.403 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://arxiv.org/abs/2307.01026), [Code](https://github.com/shenyangHuang/TGB) | September 27th, 2023 |
|  3  |  **TGN**  | 0.169 ± 0.006  | 0.189 ±  0.005 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://arxiv.org/abs/2006.10637), [Code](https://github.com/shenyangHuang/TGB) | September 27th, 2023 |
|  4  |  **DyRep**  | 0.141 ±  0.006   | 0.151 ±  0.006 |[TGB team](mailto:shenyang.huang@mail.mcgill.ca) | [Paper](https://openreview.net/forum?id=HyePrhR5KX), [Code](https://github.com/shenyangHuang/TGB) | September 27th, 2023 |
