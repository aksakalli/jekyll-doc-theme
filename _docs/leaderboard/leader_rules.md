---
title: Rules for the Experimental Protocol
permalink: /docs/leader_rules/
---

----

### Preamble
Here we present the rules of how we expect the community to use train/validation/test labels for the leaderboard submissions. 
The rules are designed to enforce the standardized experimental protocol for easy and direct model comparison. We acknowledge that these rules are by no means perfect in evaluating advanced models (e.g., time-series models, and models that take explicit advantage of validation labels) as well as advanced methods that use validation labels to learn to extrapolate to test data.
We strongly encourage the community to explore these research directions by setting up their own experimental protocols.
Besides, we are working towards datasets with hidden test sets so that models can be evaluated in a way closer to their realistic use case. We will keep the community updated.

---
### Rules

The general rules are as follows.
- **Training labels**: Training model parameters (can be used in whatever ways, e.g., for gradient-descent, model input). <br/>
- **Validation labels**: Meant for standard hyper-parameters tuning (not allowed: gradient-based search, use as model input). <br/>
- **Test labels**: Final model evaluation.
<!-- 
**The only exception is the [`ogbl-collab`](../linkprop/#ogbl-collab) dataset**, where the task is to predict author collaborations at a particular year given all the past collaborations. For this dataset only, we allow validation labels to be used both for model training and as model input, **after all the model hyper-parameters are fixed using the validation labels.** -->

##### **Remarks**
- For link property prediction datasets (`ogbl-*`), "labels" should be interpreted as "edges."
- Some ML models might want to utilize validation labels more directly. For the sake of leaderboard submissions, we enforce the above rules, i.e., do not allow the validation labels to be used beyond the standard hyper-parameter tuning. See our rationale and discussion [here](https://github.com/snap-stanford/ogb/issues/73#issuecomment-707258886).

