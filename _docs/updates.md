---
title: Version Update for TGB
permalink: /docs/update/
---
##### **Please update your package to [0.9.2](https://pypi.org/project/py-tgb/)** (December 5th, 2023).
- fix the time conversion error in `tgbl-flight`, now the edgelist directly contain the converted unix timestamps. 
- if you have older download of this datasets, please remove `TGB/tgb/datasets/tgbl_flight` folder and do a clean redownload. 
- no negative samples or dataset edges are changed, only now that the provided edges now have unix timestamps instead of date.



##### package version [0.9.0](https://pypi.org/project/py-tgb/) (September 27th, 2023).
- add a novel large scale dataset `tgbn-token` with 72 million edges.
- leaderboard for `tgbn-token` is added to [`tgbn` leaderboards](https://tgb.complexdatalab.com/docs/leader_nodeprop/).
- fixed an error where a small percentage of edges in `tgbl-flight` and `tgbl-coin` is not sorted chronologically. Updated `tgbl-flight` and `tgbl-coin` to version 2. 
- `tgbl-flight` and `tgbl-coin` version 2 leaderboards are updated accordingly. 


##### package version [0.8.0](https://pypi.org/project/py-tgb/) (August 6th, 2023).
- addressed issues pointed out by the authors in a [recent paper](https://arxiv.org/abs/2307.12510), thanks for the suggestions! Happy to incorporate more community feedbacks in the future. 
- addressed metric computation error in the `nodeproppred` task, specially computing the average over the number of label batches now, please refer to the [`examples/nodeproppred/`](https://github.com/shenyangHuang/TGB/tree/main/examples/nodeproppred) folder to see corrected metric computations.
- no longer applys log softmax at the [`NodePredictor`](https://github.com/shenyangHuang/TGB/blob/main/modules/decoder.py), no significant numerical difference between applying or not
- update to version 2 of [`tgbn` leaderboards](https://tgb.complexdatalab.com/docs/leader_nodeprop/) with the updated metric computation.


##### package version [0.7.5](https://pypi.org/project/py-tgb/) (July 27th, 2023).
- updated `tgbl-wiki` and `tgbl-review` to version 2, the number of negative samples have been increased for both datasets
- `tgbl-wiki` and `tgbl-review` leaderboards have been updated accordingly
- added [leaderboard submission form](https://forms.gle/SEsXvN1QHo9tSFwx9)



##### package version [0.7.0](https://pypi.org/project/py-tgb/) (July 21th, 2023).
- fixed inconsistency between `dataset.edge_feat` and `dataset.full_data['edge_feat']`
- fixed off by one batch error in `tgb.nodeproppred.dataset.py`
- thanks to the feedbacks from the community


##### package version [0.6.0](https://pypi.org/project/py-tgb/) (June 30th, 2023).
- initial release of TGB 



##### package version [0.1.2](https://pypi.org/project/py-tgb/) (June 12th, 2023).


