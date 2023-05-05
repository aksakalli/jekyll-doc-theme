---
title: Leaderboards for Graph Property Prediction
permalink: /docs/leader_graphprop/
---

##### Check leaderboards for
###### - [ogbg-molhiv](#ogbg-molhiv)
###### - [ogbg-molpcba](#ogbg-molpcba)
###### - [ogbg-ppa](#ogbg-ppa)
###### - [ogbg-code2](#ogbg-code2)

The **bold** method name indicates that the implementation is **official** (by the author of the original paper). <br/>
**Package** denotes the required package version for each dataset to be eligible for the leaderboard.

<a name="ogbg-molhiv"/>

-------------

### Leaderboard for [ogbg-molhiv](../graphprop/#ogbg-mol)
##### The ROC-AUC score on the test and validation sets. The higher, the better. 

#### Package: >=1.1.1

| Rank  | Method | Ext. data | Test ROC-AUC | Validation ROC-AUC | Contact | References | #Params | Hardware | Date 
|:----:|:-----:|:------:|:-----:|:-----:|:-----:|-----:|:-----:|:-----:|
|  1  |  **PAS+FPs**  | No | 0.8420 ± 0.0015   | 0.8238 ± 0.0028 |[Xu Wang(4Paradigm)](mailto:wangxu01@4paradigm.com) | [Paper](https://github.com/AutoML-Research/PAS-OGB/tree/main/report), [Code](https://github.com/AutoML-Research/PAS-OGB) | 26,706,953 | RTX3090 | Feb 22, 2022 |
|  2  |  **HIG**  | No | 0.8403 ± 0.0021   | 0.8176 ± 0.0034 |[Yan Wang (Tencent Youtu Lab)](mailto:yanneswang@tencent.con) | [Paper](https://github.com/TencentYoutuResearch/HIG-GraphClassification/blob/main/report/Report_HIG_OGB.pdf), [Code](https://github.com/TencentYoutuResearch/HIG-GraphClassification) | 1,019,408 | Tesla V100 (32GB) | Dec 28, 2021 |
|  3  |  **DeepAUC**  | No | 0.8352 ± 0.0054   | 0.8238 ± 0.0061 |[Zhuoning Yuan (UIowa)](mailto:yzhuoning@gmail.com) | [Paper](https://arxiv.org/abs/2012.03173), [Code](https://github.com/yzhuoning/DeepAUC_OGB_Challenge) | 3,444,509 | Tesla V100 (32GB) | Oct 10, 2021 |
|  4  |  FingerPrint+GMAN  | No | 0.8244 ± 0.0033   | 0.8329 ± 0.0039 | [Jiaxin Gu](mailto:jxgu1016@gmail.com) | [Paper](https://github.com/PierreHao/YouGraph/blob/main/report/GMAN%20and%20bag%20of%20tricks%20for%20graph%20classification.pdf), [Code](https://github.com/PierreHao/YouGraph) | 1,444,110 | Tesla V100 (32GB) | Jul 8, 2021 |
|  5  |  **Neural FingerPrints**  | No | 0.8232 ± 0.0047   | 0.8331 ± 0.0054 |[Shanzhuo Zhang (PaddleHelix & PGL)](mailto:zhangshanzhuo@baidu.com) | [Paper](https://github.com/PaddlePaddle/PaddleHelix/blob/dev/competition/ogbg_molhiv/Molecule_Representation_Learning_by_Leveraging_Chemical_Information.pdf), [Code](https://github.com/PaddlePaddle/PaddleHelix/tree/dev/competition/ogbg_molhiv) | 2,425,102 | Tesla V100 (32GB) | Mar 15, 2021 |
|  6  |  Graphormer + FPs  | No | 0.8225 ± 0.0001   | 0.8396 ± 0.0001 | [Huixuan Chi (AML@ByteDance)](mailto:1520655940@qq.com) | [Paper](https://arxiv.org/pdf/2106.05234.pdf), [Code](https://github.com/ytchx1999/Graphormer/tree/main/examples/ogb) | 47,085,378 | Tesla V100 (32GB) | Aug 5, 2021 |
|  7  |  Molecular FP + Random Forest  | No | 0.8208 ± 0.0037   | 0.8036 ± 0.0059 | [Luca Hagemeyer](mailto:l.hagemeyer@uni-muenster.de) | [Paper](https://doi.org/10.1021/ci100050t), [Code](https://github.com/LucaHage/OGBComp-MOL-HIV.git) | 5,782 | CPU | Mar 18, 2022 |
|  8  |  **CIN**  | No | 0.8094 ± 0.0057   | 0.8277 ± 0.0099 |[Fabrizio Frasca (Twitter)](mailto:ffrasca@twitter.com) | [Paper](https://arxiv.org/abs/2106.12575), [Code](https://github.com/twitter-research/cwn) | 239,745 | Tesla V100 (16GB) | Aug 31, 2021 |
|  9  |  **GSAT**  | No | 0.8067 ± 0.0950   | 0.8347 ± 0.0031 |[Siqi Miao (Purdue)](mailto:miao61@purdue.edu) | [Paper](https://arxiv.org/abs/2201.12987), [Code](https://github.com/Graph-COM/GSAT) | 249,602 | Quadro RTX 6000 | May 15, 2022 |
|  10  |  **MorganFP+Rand. Forest**  | No | 0.8060 ± 0.0010   | 0.8420 ± 0.0030 |[Cyrus Maher](mailto:cmaher@vir.bio) | [Paper](https://pubs.acs.org/doi/10.1021/ci100050t), [Code](https://github.com/cyrusmaher/ogb-molecule-comp) | 230,000 | CPU | Sep 21, 2020 |
|  11  |  **CIN-small**  | No | 0.8055 ± 0.0104   | 0.8310 ± 0.0102 |[Fabrizio Frasca (Twitter)](mailto:ffrasca@twitter.com) | [Paper](https://arxiv.org/abs/2106.12575), [Code](https://github.com/twitter-research/cwn) | 138,337 | Tesla V100 (16GB) | Aug 31, 2021 |
|  12  |  **Graphormer (pre-trained on PCQM4M)**  | Yes | 0.8051 ± 0.0053   | 0.8310 ± 0.0089 |[Shuxin Zheng (Microsoft Research)](mailto:shuz@microsoft.com) | [Paper](https://arxiv.org/pdf/2106.05234.pdf), [Code](https://github.com/Microsoft/Graphormer) | 47,183,040 | NVIDIA Tesla V100 (16GB GPU) | Aug 2, 2021 |
|  13  |  P-WL  | No | 0.8039 ± 0.0040   | 0.8279 ± 0.0059 | [Daniel Marcos Mendoza](mailto:dmendo@stanford.edu) | [Paper](http://proceedings.mlr.press/v97/rieck19a/rieck19a.pdf), [Code](https://github.com/dmmendo/OGBMolhiv_PWL) | 4,600,000 | CPU | Mar 29, 2021 |
|  13  |  **directional GSN**  | No | 0.8039 ± 0.0090   | 0.8473 ± 0.0096 |[Giorgos Bouritsas (Imperial College)](mailto:g.bouritsas@imperial.ac.uk) | [Paper](https://arxiv.org/pdf/2006.09252.pdf), [Code](https://github.com/gbouritsas/graph-substructure-networks) | 114,211 | Tesla V100 (32GB) | Jul 28, 2021 |
|  14  |  **DGN**  | No | 0.7970 ± 0.0097   | 0.8470 ± 0.0047 |[Saro Passaro](mailto:sp976@cam.ac.uk) | [Paper](https://arxiv.org/pdf/2010.02863.pdf), [Code](https://github.com/Saro00/DGN) | 114,065 | NVIDIA Tesla T4 (15GB GPU) | Nov 20, 2020 |
|  15  |  **DeeperGCN+FLAG**  | No | 0.7942 ± 0.0120   | 0.8425 ± 0.0061 |[Kezhi Kong](mailto:kong@cs.umd.edu) | [Paper](https://arxiv.org/abs/2010.09891), [Code](https://github.com/devnkong/FLAG) | 531,976 | NVIDIA Tesla V100 (32GB GPU) | Oct 20, 2020 |
|  16  |  **PHC-GNN**  | No | 0.7934 ± 0.0116   | 0.8217 ± 0.0089 |[Tuan Le](mailto:tuan.le2@bayer.com) | [Paper](https://arxiv.org/abs/2103.16584), [Code](https://github.com/bayer-science-for-a-better-life/phc-gnn) | 110,909 | Tesla V100 (32GB) | Apr 14, 2021 |
|  17  |  **PNA**  | No | 0.7905 ± 0.0132   | 0.8519 ± 0.0099 |[Gabriele Corso](mailto:gc579@cam.ac.uk) | [Paper](https://arxiv.org/abs/2004.05718), [Code](https://github.com/lukecavabarrett/pna) | 326,081 | NVIDIA Tesla T4 (15GB GPU) | Nov 25, 2020 |
|  18  |  **GCN+GraphNorm**  | No | 0.7883 ± 0.0100   | 0.7904 ± 0.0115 |[Shengjie Luo](mailto:shengjie.luo@outlook.com) | [Paper](https://arxiv.org/abs/2009.03294), [Code](https://github.com/lsj2408/GraphNorm) | 526,201 | NVIDIA Tesla P100 (16GB GPU) | Sep 16, 2020 |
|  19  |  **HIMP**  | No | 0.7880 ± 0.0082   | [Please tell us](mailto:ogb@cs.stanford.edu) |[Matthias Fey](mailto:matthias.fey@tu-dortmund.de) | [Paper](https://arxiv.org/abs/2006.12179), [Code](https://github.com/rusty1s/himp-gnn) | 153,029 | GeForce RTX 2080 (11GB GPU) | Jun 22, 2020 |
|  20  |  **DeeperGCN**  | No | 0.7858 ± 0.0117   | 0.8427 ± 0.0063 |[Guohao Li - DeepGCNs.org](mailto:guohao.li@kaust.edu.sa) | [Paper](https://arxiv.org/abs/2006.07739), [Code](https://github.com/lightaime/deep_gcns_torch/tree/master/examples/ogb) | 531,976 | NVIDIA Tesla V100 (32GB GPU) | Jun 16, 2020 |
|  21  |  **EGC-M (No Edge Features)**  | No | 0.7818 ± 0.0153   | 0.8396 ± 0.0097 |[Shyam Tailor](mailto:sat62@cam.ac.uk) | [Paper](https://arxiv.org/abs/2104.01481), [Code](https://github.com/shyam196/egc) | 317,265 | GTX1080Ti/RTX2080Ti | Apr 6, 2021 |
|  22  |  **GSN**  | No | 0.7799 ± 0.0100   | 0.8658 ± 0.0084 |[Giorgos Bouritsas](mailto:g.bouritsas@imperial.ac.uk) | [Paper](https://arxiv.org/abs/2006.09252), [Code](https://github.com/gbouritsas/graph-substructure-networks) | 3,338,701 | NVIDIA Tesla V100-SXM2 (16GB) | Jan 5, 2021 |
|  23  |  GIN  | No | 0.7778 ± 0.0130   | 0.8325 ± 0.0151 | [Yunxin Sang(SJTU)](mailto:sangyunxin@gmail.com) | [Paper](https://arxiv.org/pdf/1810.00826.pdf), [Code](https://github.com/sangyx/gtrick/tree/main/benchmark/pyg) | 7 | Tesla T4 | Apr 30, 2022 |
|  24  |  **WEGL**  | No | 0.7757 ± 0.0111   | 0.8101 ± 0.0097 |[Navid Naderializadeh](mailto:nnaderializadeh@hrl.com) | [Paper](https://arxiv.org/abs/2006.09430), [Code](https://github.com/navid-naderi/WEGL) | 361,064 | NVIDIA Tesla P100 (16GB GPU) | Jun 26, 2020 |
|  25  |  **GIN+virtual node+FLAG**  | No | 0.7748 ± 0.0096   | 0.8438 ± 0.0128 |[Kezhi Kong](mailto:kong@cs.umd.edu) | [Paper](https://arxiv.org/abs/2010.09891), [Code](https://github.com/devnkong/FLAG) | 3,336,306 | GeForce RTX 2080 Ti (11GB GPU) | Oct 20, 2020 |
|  26  |  **EGC-S (No Edge Features)**  | No | 0.7721 ± 0.0110   | 0.8366 ± 0.0074 |[Shyam Tailor](mailto:sat62@cam.ac.uk) | [Paper](https://arxiv.org/abs/2104.01481), [Code](https://github.com/shyam196/egc) | 317,013 | GTX1080Ti/RTX2080T | Apr 6, 2021 |
|  27  |  **GIN+virtual node**  | No | 0.7707 ± 0.0149   | 0.8479 ± 0.0068 |[Weihua Hu -- OGB team](mailto:weihuahu@cs.stanford.edu) | [Paper](https://arxiv.org/abs/1810.00826), [Code](https://github.com/snap-stanford/ogb/tree/master/examples/graphproppred/mol) | 3,336,306 | GeForce RTX 2080 (11GB GPU) | May 1, 2020 |
|  28  |  **GCN+FLAG**  | No | 0.7683 ± 0.0102   | 0.8176 ± 0.0087 |[Kezhi Kong](mailto:kong@cs.umd.edu) | [Paper](https://arxiv.org/abs/2010.09891), [Code](https://github.com/devnkong/FLAG) | 527,701 | GeForce RTX 2080 Ti (11GB GPU) | Oct 20, 2020 |
|  29  |  **GIN+FLAG**  | No | 0.7654 ± 0.0114   | 0.8225 ± 0.0155 |[Kezhi Kong](mailto:kong@cs.umd.edu) | [Paper](https://arxiv.org/abs/2010.09891), [Code](https://github.com/devnkong/FLAG) | 1,885,206 | GeForce RTX 2080 Ti (11GB GPU) | Oct 20, 2020 |
|  30  |  GCN  | No | 0.7606 ± 0.0097   | 0.8204 ± 0.0141 | [Weihua Hu -- OGB team](mailto:weihuahu@cs.stanford.edu) | [Paper](https://arxiv.org/abs/1609.02907), [Code](https://github.com/snap-stanford/ogb/tree/master/examples/graphproppred/mol) | 527,701 | GeForce RTX 2080 (11GB GPU) | May 1, 2020 |
|  31  |  GCN+virtual node  | No | 0.7599 ± 0.0119   | 0.8384 ± 0.0091 | [Weihua Hu -- OGB team](mailto:weihuahu@cs.stanford.edu) | [Paper](https://arxiv.org/abs/1609.02907), [Code](https://github.com/snap-stanford/ogb/tree/master/examples/graphproppred/mol) | 1,978,801 | GeForce RTX 2080 (11GB GPU) | May 1, 2020 |
|  32  |  **GIN**  | No | 0.7558 ± 0.0140   | 0.8232 ± 0.0090 |[Weihua Hu -- OGB team](mailto:weihuahu@cs.stanford.edu) | [Paper](https://arxiv.org/abs/1810.00826), [Code](https://github.com/snap-stanford/ogb/tree/master/examples/graphproppred/mol) | 1,885,206 | GeForce RTX 2080 (11GB GPU) | May 1, 2020 |
|  33  |  GCN (in Julia)  | No | 0.7549 ± 0.0163   | 0.8042 ± 0.0107 | [Irhum Shafkat (Minerva)](mailto:irhum@minerva.kgi.edu) | [Paper](https://arxiv.org/abs/1609.02907), [Code](https://github.com/irhum/GraphFlux.jl/blob/main/examples/ogbghiv.ipynb) | 527,701 | Tesla T4 (16GB) | Jun 28, 2021 |


<a name="ogbg-molpcba"/>

-----------------

### Leaderboard for [ogbg-molpcba](../graphprop/#ogbg-mol)
##### The Average Precision (AP) score on the test and validation sets. The higher, the better. 
**Note: The evaluation metric has been changed from PRC-AUC (Aug 11, 2020).**

#### Package: >=1.2.2

| Rank  | Method | Ext. data | Test AP | Validation AP | Contact | References | #Params | Hardware | Date 
|:----:|:-----:|:------:|:-----:|:-----:|:-----:|-----:|:-----:|:-----:|
|  1  |  **HIG(pre-trained on PCQM4M)**  | Yes | 0.3167 ± 0.0034   | 0.3252 ± 0.0043 |[Yan Wang (Tencent Youtu Lab)](mailto:yanneswang@tencent.com) | [Paper](https://github.com/TencentYoutuResearch/HIG-GraphClassification/blob/main/report/Report_HIG_OGB.pdf), [Code](https://github.com/TencentYoutuResearch/HIG-GraphClassification) | 119,529,665 |  Tesla V100 (32GB)  | Dec 28, 2021 |
|  2  |  **Graphormer (pre-trained on PCQM4M)**  | Yes | 0.3140 ± 0.0032   | 0.3227 ± 0.0024 |[Shuxin Zheng (Microsoft)](mailto:shuz@microsoft.com) | [Paper](https://arxiv.org/abs/2106.05234), [Code](https://github.com/microsoft/Graphormer) | 119,529,664 | NVIDIA Tesla V100 (16GB GPU) | Aug 2, 2021 |
|  3  |  **PAS**  | No | 0.3012 ± 0.0039   | 0.3151 ± 0.0047 |[Xu Wang(4Paradigm)](mailto:wangxu01@4paradigm.com) | [Paper](https://github.com/AutoML-Research/PAS-OGB/tree/main/report), [Code](https://github.com/AutoML-Research/PAS-OGB) | 5,560,960 | RTX3090 | Apr 1, 2022 |
|  4  |  **Nested GIN+virtual node (ensemble)**  | No | 0.3007 ± 0.0037   | 0.3059 ± 0.0056 |[Muhan Zhang](mailto:muhan.zhang@hotmail.com) | [Paper](https://arxiv.org/pdf/2110.13197.pdf), [Code](https://github.com/muhanzhang/NestedGNN) | 44,187,480 | NVIDIA Tesla V100 (32GB GPU) | Nov 21, 2021 |
|  5  |  GINE+bot  | No | 0.2994 ± 0.0019   | 0.3094 ± 0.0023 | [Hao Zhang](mailto:hao529good@163.com) | [Paper](https://github.com/PierreHao/YouGraph/blob/main/report/GMAN%20and%20bag%20of%20tricks%20for%20graph%20classification.pdf), [Code](https://github.com/PierreHao/YouGraph) | 5,511,680 | Tesla V100(32GB GPU) | Jul 21, 2021 |
|  6  |  **CRaWl**  | No | 0.2986 ± 0.0025   | 0.3075 ± 0.0020 |[Jan Tönshoff (RWTH Aachen University)](mailto:toenshoff@informatik.rwth-aachen.de) | [Paper](https://arxiv.org/abs/2102.08786), [Code](https://github.com/toenshoff/CRaWl) | 6,115,728 | Nvidia Tesla V100 (16GB)  | Mar 27, 2022 |
|  7  |  GINE+ w/ APPNP  | No | 0.2979 ± 0.0030   | 0.3126 ± 0.0023 | [Weibin Li (PaddleHelix & PGL)](mailto:liweibin02@baidu.com) | [Paper](https://arxiv.org/pdf/2011.15069.pdf), [Code](https://github.com/PaddlePaddle/PGL/tree/main/ogb_examples/graphproppred/ogbg_molpcba) | 6,147,029 | Tesla V100 (32GB) | Mar 15, 2021 |
|  8  |  **PHC-GNN**  | No | 0.2947 ± 0.0026   | 0.3068 ± 0.0025 |[Tuan Le](mailto:tuan.le2@bayer.com) | [Paper](https://arxiv.org/abs/2103.16584), [Code](https://github.com/bayer-science-for-a-better-life/phc-gnn) | 1,690,328 | Tesla V100 (32GB) | Apr 14, 2021 |
|  9  |  **GIN-AK**  | No | 0.2930 ± 0.0044   | 0.3047 ± 0.0007 |[Lingxiao Zhao](mailto:lingxiao@cmu.edu) | [Paper](https://arxiv.org/pdf/2110.03753v1.pdf), [Code](https://github.com/GNNAsKernel/GNNAsKernel) | 3,081,029 | RTX 3090 | Oct 11, 2021 |
|  10  |  **GINE+ w/ virtual nodes**  | No | 0.2917 ± 0.0015   | 0.3065 ± 0.0030 |[Rémy Brossard](mailto:remy@anotherbrain.ai) | [Paper](https://arxiv.org/abs/2011.15069), [Code](https://github.com/RBrossard/GINEPLUS) | 6,147,029 | GeForce GTX 1080 Ti | Dec 1, 2020 |
|  11  |  **DGN**  | No | 0.2885 ± 0.0030   | 0.2970 ± 0.0021 |[Dominique Beaini](mailto:dominique@valencediscovery.com) | [Paper](https://arxiv.org/pdf/2010.02863.pdf), [Code](https://github.com/Saro00/DGN) | 6,732,696 | NVIDIA T4 GPU (16 GB) | Mar 4, 2021 |
|  12  |  **RandomGIN-vn+FLAG**  | No | 0.2881 ± 0.0028   | 0.3035 ± 0.0047 |[Giulia Fracastoro (Polito)](mailto:giulia.fracastoro@polito.it) | [Paper](https://arxiv.org/pdf/2103.15565.pdf), [Code](https://github.com/diegovalsesia/ran-gnn-molpcba) | 5,572,026 | Titan Xp (12GB GPU) | Jul 29, 2021 |
|  13  |  **DeeperGCN+virtual node+FLAG**  | No | 0.2842 ± 0.0043   | 0.2952 ± 0.0029 |[Kezhi Kong](mailto:kong@cs.umd.edu) | [Paper](https://arxiv.org/abs/2010.09891), [Code](https://github.com/devnkong/FLAG) | 5,550,208 | NVIDIA Tesla V100 (32GB GPU) | Oct 21, 2020 |
|  14  |  **PNA**  | No | 0.2838 ± 0.0035   | 0.2926 ± 0.0026 |[Dominique Beaini](mailto:dominique@valencediscovery.com) | [Paper](https://arxiv.org/pdf/2004.05718.pdf), [Code](https://github.com/Saro00/DGN) | 6,550,839 | NVIDIA T4 GPU (16 GB) | Mar 4, 2021 |
|  15  |  **GIN+virtual node+FLAG**  | No | 0.2834 ± 0.0038   | 0.2912 ± 0.0026 |[Kezhi Kong](mailto:kong@cs.umd.edu) | [Paper](https://arxiv.org/abs/2010.09891), [Code](https://github.com/devnkong/FLAG) | 3,374,533 | GeForce RTX 2080 Ti (11GB GPU) | Oct 21, 2020 |
|  16  |  **DeeperGCN+virtual node**  | No | 0.2781 ± 0.0038   | 0.2920 ± 0.0025 |[Guohao Li - DeepGCNs.org](mailto:guohao.li@kaust.edu.sa) | [Paper](https://arxiv.org/abs/2006.07739), [Code](https://github.com/lightaime/deep_gcns_torch/tree/master/examples/ogb) | 5,550,208 | NVIDIA Tesla V100 (32GB GPU) | Aug 11, 2020 |
|  17  |  **GIN+virtual node**  | No | 0.2703 ± 0.0023   | 0.2798 ± 0.0025 |[Weihua Hu -- OGB team](mailto:weihuahu@cs.stanford.edu) | [Paper](https://arxiv.org/abs/1810.00826), [Code](https://github.com/snap-stanford/ogb/tree/master/examples/graphproppred/mol) | 3,374,533 | GeForce RTX 2080 (11GB GPU) | Aug 11, 2020 |
|  18  |  **GCN+virtual node+FLAG**  | No | 0.2483 ± 0.0037   | 0.2556 ± 0.0040 |[Kezhi Kong](mailto:kong@cs.umd.edu) | [Paper](https://arxiv.org/abs/2010.09891), [Code](https://github.com/devnkong/FLAG) | 2,017,028 | GeForce RTX 2080 Ti (11GB GPU) | Oct 21, 2020 |
|  19  |  GCN+virtual node  | No | 0.2424 ± 0.0034   | 0.2495 ± 0.0042 | [Weihua Hu -- OGB team](mailto:weihuahu@cs.stanford.edu) | [Paper](https://arxiv.org/abs/1609.02907), [Code](https://github.com/snap-stanford/ogb/tree/master/examples/graphproppred/mol) | 2,017,028 | GeForce RTX 2080 (11GB GPU) | Aug 11, 2020 |
|  20  |  **GIN+FLAG**  | No | 0.2395 ± 0.0040   | 0.2451 ± 0.0042 |[Kezhi Kong](mailto:kong@cs.umd.edu) | [Paper](https://arxiv.org/abs/2010.09891), [Code](https://github.com/devnkong/FLAG) | 1,923,433 | GeForce RTX 2080 Ti (11GB GPU) | Oct 21, 2020 |
|  21  |  ChebNet  | No | 0.2306 ± 0.0016   | 0.2372 ± 0.0018 | [Axel Nilsson](mailto:contact@xelnilsson.com) | [Paper](https://arxiv.org/abs/1606.09375), [Code](https://github.com/Axeln78/Transferability-of-spectral-gnns) | 1,475,003 | GeForce RTX 2070 8GB | Dec 28, 2020 |
|  22  |  **GIN**  | No | 0.2266 ± 0.0028   | 0.2305 ± 0.0027 |[Weihua Hu -- OGB team](mailto:weihuahu@cs.stanford.edu) | [Paper](https://arxiv.org/abs/1810.00826), [Code](https://github.com/snap-stanford/ogb/tree/master/examples/graphproppred/mol) | 1,923,433 | GeForce RTX 2080 (11GB GPU) | Aug 11, 2020 |
|  23  |  **GCN+FLAG**  | No | 0.2116 ± 0.0017   | 0.2150 ± 0.0022 |[Kezhi Kong](mailto:kong@cs.umd.edu) | [Paper](https://arxiv.org/abs/2010.09891), [Code](https://github.com/devnkong/FLAG) | 565,928 | GeForce RTX 2080 Ti (11GB GPU) | Oct 21, 2020 |
|  24  |  **MorganFP+Rand. Forest**  | No | 0.2054 ± 0.0004   | 0.2226 ± 0.0002 |[Cyrus Maher](mailto:cmaher@vir.bio) | [Paper](https://pubs.acs.org/doi/10.1021/ci100050t), [Code](https://github.com/cyrusmaher/ogb-molecule-comp) | 29,440,000 | CPU | Sep 21, 2020 |
|  25  |  GCN  | No | 0.2020 ± 0.0024   | 0.2059 ± 0.0033 | [Weihua Hu -- OGB team](mailto:weihuahu@cs.stanford.edu) | [Paper](https://arxiv.org/abs/1609.02907), [Code](https://github.com/snap-stanford/ogb/tree/master/examples/graphproppred/mol) | 565,928 | GeForce RTX 2080 (11GB GPU) | Aug 11, 2020 |


<a name="ogbg-ppa"/>

---------------------

### Leaderboard for [ogbg-ppa](../graphprop/#ogbg-ppa)
##### The multi-class classification accuracy on the test and validation sets. The higher, the better. 

#### Package: >=1.1.1

| Rank  | Method | Ext. data | Test Accuracy | Validation Accuracy | Contact | References | #Params | Hardware | Date 
|:----:|:-----:|:------:|:-----:|:-----:|:-----:|-----:|:-----:|:-----:|
|  1  |  **PAS+F2GNN**  | No | 0.8201 ± 0.0019   | 0.7720 ± 0.0023 |[Xu Wang(4Paradigm && EE Tsinghua)](mailto:wangxu01@4paradigm.com) | [Paper](https://github.com/AutoML-Research/PAS-OGB/tree/main/report), [Code](https://github.com/AutoML-Research/PAS-OGB) | 16,346,166 | RTX 3090 | Apr 28, 2022 |
|  2  |  **ExpC*+bag of tricks**  | No | 0.8140 ± 0.0028   | 0.7811 ± 0.0012 |[Hao Zhang](mailto:hao529good@163.com) | [Paper](https://github.com/PierreHao/YouGraph/blob/main/report/GMAN%20and%20bag%20of%20tricks%20for%20graph%20classification.pdf), [Code](https://github.com/PierreHao/YouGraph) | 3,758,642 | Tesla V100(32GB GPU) | Jun 21, 2021 |
|  3  |  **ExpC**  | No | 0.7976 ± 0.0072   | 0.7518 ± 0.0080 |[Mingqi Yang](mailto:yangmq@mail.dlut.edu.cn) | [Paper](https://arxiv.org/abs/2012.07219), [Code](https://github.com/qslim/epcb-gnns) | 1,369,397 | NVIDIA Tesla V100 (32GB GPU) | Dec 14, 2020 |
|  4  |  **PAS**  | No | 0.7828 ± 0.0024   | 0.7523 ± 0.0028 |[Xu Wang(4Paradigm)](mailto:wangxu01@4paradigm.com) | [Paper](https://github.com/AutoML-Research/PAS-OGB/tree/main/report), [Code](https://github.com/AutoML-Research/PAS-OGB) | 3,717,160 | RTX 3090 | Mar 29, 2022 |
|  5  |  **DeeperGCN+FLAG**  | No | 0.7752 ± 0.0069   | 0.7484 ± 0.0052 |[Kezhi Kong](mailto:kong@cs.umd.edu) | [Paper](https://arxiv.org/abs/2010.09891), [Code](https://github.com/devnkong/FLAG) | 2,336,421 | NVIDIA Tesla V100 (32GB GPU) | Oct 21, 2020 |
|  6  |  **DeeperGCN**  | No | 0.7712 ± 0.0071   | 0.7313 ± 0.0078 |[Guohao Li - DeepGCNs.org](mailto:guohao.li@kaust.edu.sa) | [Paper](https://arxiv.org/abs/2006.07739), [Code](https://github.com/lightaime/deep_gcns_torch/tree/master/examples/ogb) | 2,336,421 | NVIDIA Tesla V100 (32GB GPU) | Jun 16, 2020 |
|  7  |  **GC-T+MCL(6.0)**  | No | 0.7432 ± 0.0033   | 0.6989 ± 0.0037 |[Shuai Wang(SCMZU)](mailto:wbpws@163.com) | [Paper](https://github.com/SCMZU-WS/GT-C/blob/master/report/GCT.pd), [Code](https://github.com/SCMZU-WS/GT-C) | 4,006,704 | RTX 3090 | Jul 31, 2022 |
|  8  |  **GIN+virtual node+FLAG**  | No | 0.7245 ± 0.0114   | 0.6789 ± 0.0079 |[Kezhi Kong](mailto:kong@cs.umd.edu) | [Paper](https://arxiv.org/abs/2010.09891), [Code](https://github.com/devnkong/FLAG) | 3,288,042 | GeForce RTX 2080 Ti (11GB GPU) | Oct 21, 2020 |
|  9  |  **GIN+virtual node**  | No | 0.7037 ± 0.0107   | 0.6678 ± 0.0105 |[Weihua Hu -- OGB team](mailto:weihuahu@cs.stanford.edu) | [Paper](https://arxiv.org/abs/1810.00826), [Code](https://github.com/snap-stanford/ogb/tree/master/examples/graphproppred/ppa) | 3,288,042 | GeForce RTX 2080 (11GB GPU) | May 1, 2020 |
|  10  |  **GCN+virtual node+FLAG**  | No | 0.6944 ± 0.0052   | 0.6638 ± 0.0055 |[Kezhi Kong](mailto:kong@cs.umd.edu) | [Paper](https://arxiv.org/abs/2010.09891), [Code](https://github.com/devnkong/FLAG) | 1,930,537 | GeForce RTX 2080 Ti (11GB GPU) | Oct 21, 2020 |
|  11  |  **GIN+FLAG**  | No | 0.6905 ± 0.0092   | 0.6465 ± 0.0070 |[Kezhi Kong](mailto:kong@cs.umd.edu) | [Paper](https://arxiv.org/abs/2010.09891), [Code](https://github.com/devnkong/FLAG) | 1,836,942 | GeForce RTX 2080 Ti (11GB GPU) | Oct 21, 2020 |
|  12  |  **GIN**  | No | 0.6892 ± 0.0100   | 0.6562 ± 0.0107 |[Weihua Hu -- OGB team](mailto:weihuahu@cs.stanford.edu) | [Paper](https://arxiv.org/abs/1810.00826), [Code](https://github.com/snap-stanford/ogb/tree/master/examples/graphproppred/ppa) | 1,836,942 | GeForce RTX 2080 (11GB GPU) | May 1, 2020 |
|  13  |  GCN+virtual node  | No | 0.6857 ± 0.0061   | 0.6511 ± 0.0048 | [Weihua Hu -- OGB team](mailto:weihuahu@cs.stanford.edu) | [Paper](https://arxiv.org/abs/1609.02907), [Code](https://github.com/snap-stanford/ogb/tree/master/examples/graphproppred/ppa) | 1,930,537 | GeForce RTX 2080 (11GB GPU) | May 1, 2020 |
|  14  |  GCN  | No | 0.6839 ± 0.0084   | 0.6497 ± 0.0034 | [Weihua Hu -- OGB team](mailto:weihuahu@cs.stanford.edu) | [Paper](https://arxiv.org/abs/1609.02907), [Code](https://github.com/snap-stanford/ogb/tree/master/examples/graphproppred/ppa) | 479,437 | GeForce RTX 2080 (11GB GPU) | May 1, 2020 |



<a name="ogbg-code2"/>

---------------------

### Leaderboard for [ogbg-code2](../graphprop/#ogbg-code2)
##### The F1 score on the test and validation sets. The higher, the better. 

#### Package: >=1.2.5
###### Deprecated `ogbg-code` leaderboard can be found [here](../leader_deprecated/#ogbg-code).

| Rank  | Method | Ext. data | Test F1 score | Validation F1 score | Contact | References | #Params | Hardware | Date 
|:----:|:-----:|:------:|:-----:|:-----:|:-----:|-----:|:-----:|:-----:|
|  1  |  **SAT++ with Magnetic Laplacian**  | No | 0.2222 ± 0.0032   | 0.2044 ± 0.0020 |[Simon Geisler (TU Munich)](mailto:geisler@in.tum.de) | [Paper](https://www.cs.cit.tum.de/fileadmin/w00cfj/daml/code-transformer/TransformersMeetDirectedGraphs_DLG-AAAI23_paper_477.pdf), [Code](https://arxiv.org/abs/2302.00049) | 14,378,069 | 4 Google Cloud TPUv4 | Jan 13, 2023 |
|  2  |  **DAGformer**  | No | 0.1982 ± 0.0010   | 0.1821 ± 0.0013 |[anonymous (anonymous)](mailto:luoyk@buaa.edu.cn) | [Paper](https://arxiv.org/abs/2210.13148), [Code](https://github.com/LUOyk1999/DAGformer) | 14,952,882 | GeForce RTX 3090 | Oct 25, 2022 |
|  3  |  **SAT**  | No | 0.1937 ± 0.0028   | 0.1773 ± 0.0023 |[Dexiong Chen (ETH Zürich)](mailto:dexiong.chen@bsse.ethz.ch) | [Paper](https://arxiv.org/abs/2202.03036), [Code](https://github.com/BorgwardtLab/SAT) | 15,734,000 | 1 Titan RTX | Jun 20, 2022 |
|  4  |  **GraphTrans (GCN-Virtual)**  | No | 0.1830 ± 0.0024   | 0.1661 ± 0.0012 |[Zhanghao Wu (UC Berkeley)](mailto:zhwu@berkeley.edu) | [Paper](https://openreview.net/pdf?id=nYz2_BbZnYk), [Code](https://github.com/ucbrise/graphtrans) | 9,053,246 | Tesla V100 (32GB GPU) | Jan 15, 2022 |
|  5  |  GMAN+bag of tricks  | No | 0.1770 ± 0.0012   | 0.1631 ± 0.0090 | [Hao Zhang](mailto:hao529good@163.com) | [Paper](https://github.com/PierreHao/YouGraph/blob/main/report/GMAN%20and%20bag%20of%20tricks%20for%20graph%20classification.pdf), [Code](https://github.com/PierreHao/YouGraph) | 63,684,290 | Tesla V100 (32GB GPU) | Jun 21, 2021 |
|  6  |  **DAGNN**  | No | 0.1751 ± 0.0049   | 0.1607 ± 0.0040 |[Veronika Thost](mailto:veronika.thost@ibm.com) | [Paper](https://openreview.net/pdf?id=JbuYF437WB6), [Code](https://github.com/vthost/DAGNN) | 35,246,814 | 2 GPUs, Tesla V100 PCIe 16GB | Apr 8, 2021 |
|  6  |  **GraphTrans (GCN)**  | No | 0.1751 ± 0.0015   | 0.1599 ± 0.0009 |[Zhanghao Wu (UC Berkeley)](mailto:zhwu@berkeley.edu) | [Paper](https://openreview.net/pdf?id=nYz2_BbZnYk), [Code](https://github.com/ucbrise/graphtrans) | 7,563,746 | Tesla V100 (32GB GPU) | Jan 15, 2022 |
|  7  |  GCN+virtual node  | No | 0.1595 ± 0.0018   | 0.1461 ± 0.0013 | [Weihua Hu -- OGB team](mailto:weihuahu@cs.stanford.edu) | [Paper](https://arxiv.org/abs/1609.02907), [Code](https://github.com/snap-stanford/ogb/tree/master/examples/graphproppred/code2) | 12,484,310 | GeForce RTX 2080 (11GB GPU) | Feb 24, 2021 |
|  7  |  **EGC-M (No Edge Features)**  | No | 0.1595 ± 0.0019   | 0.1464 ± 0.0021 |[Shyam Tailor](mailto:sat62@cam.ac.uk) | [Paper](https://arxiv.org/abs/2104.01481), [Code](https://github.com/shyam196/egc) | 10,986,002 | GTX1080Ti/RTX2080Ti | Apr 6, 2021 |
|  8  |  **GIN+virtual node**  | No | 0.1581 ± 0.0026   | 0.1439 ± 0.0020 |[Weihua Hu -- OGB team](mailto:weihuahu@cs.stanford.edu) | [Paper](https://arxiv.org/abs/1810.00826), [Code](https://github.com/snap-stanford/ogb/tree/master/examples/graphproppred/code2) | 13,841,815 | GeForce RTX 2080 (11GB GPU) | Feb 24, 2021 |
|  9  |  PNA (No Edge Features)  | No | 0.1570 ± 0.0032   | 0.1453 ± 0.0025 | [Shyam Tailor](mailto:sat62@cam.ac.uk) | [Paper](https://arxiv.org/abs/2104.01481), [Code](https://github.com/shyam196/egc) | 10,992,050 | V100 | Apr 6, 2021 |
|  10  |  GAT  | No | 0.1569 ± 0.0010   | 0.1442 ± 0.0017 | [Yuankai Luo (BUAA)](mailto:luoyk@buaa.edu.cn) | [Paper](https://arxiv.org/abs/1710.10903), [Code](https://github.com/LUOyk1999/ogb/tree/master/examples/graphproppred/code2) | 11,030,210 | GeForce RTX 3090 | Jan 15, 2023 |
|  11  |  MPNN-Max (No Edge Features)  | No | 0.1552 ± 0.0022   | 0.1441 ± 0.0016 | [Shyam Tailor](mailto:sat62@cam.ac.uk) | [Paper](https://arxiv.org/abs/2104.01481), [Code](https://github.com/shyam196/egc) | 10,971,506 | GTX1080Ti/RTX2080Ti | Apr 6, 2021 |
|  12  |  **EGC-S (No Edge Features)**  | No | 0.1528 ± 0.0025   | 0.1427 ± 0.0020 |[Shyam Tailor](mailto:sat62@cam.ac.uk) | [Paper](https://arxiv.org/abs/2104.01481), [Code](https://github.com/shyam196/egc) | 11,156,530 | GTX1080Ti/RTX2080Ti | Apr 6, 2021 |
|  13  |  GCN  | No | 0.1507 ± 0.0018   | 0.1399 ± 0.0017 | [Weihua Hu -- OGB team](mailto:weihuahu@cs.stanford.edu) | [Paper](https://arxiv.org/abs/1609.02907), [Code](https://github.com/snap-stanford/ogb/tree/master/examples/graphproppred/code2) | 11,033,210 | GeForce RTX 2080 (11GB GPU) | Feb 24, 2021 |
|  14  |  **GIN**  | No | 0.1495 ± 0.0023   | 0.1376 ± 0.0016 |[Weihua Hu -- OGB team](mailto:weihuahu@cs.stanford.edu) | [Paper](https://arxiv.org/abs/1810.00826), [Code](https://github.com/snap-stanford/ogb/tree/master/examples/graphproppred/code2) | 12,390,715 | GeForce RTX 2080 (11GB GPU) | Feb 24, 2021 |
