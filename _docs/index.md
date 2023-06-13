---
title: Get Started
permalink: /docs/home/
redirect_from: /docs/index.html
---
### pypi Installation

```
pip install py-tgb
```
see our [pypi page](https://pypi.org/project/py-tgb/)



### Manually Install Dependency
Our implementation works with python >= 3.9 and can be installed as follows

1. set up virtual environment (conda should work as well)
```
python -m venv ~/tgb_env/
source ~/tgb_env/bin/activate
```

2. install external packages
```
pip install pandas==1.5.3
pip install matplotlib==3.7.1
pip install clint==0.5.1
```

install Pytorch and PyG dependencies (needed to run the examples)
```
pip install torch==2.0.0 --index-url https://download.pytorch.org/whl/cu117
pip install torch_geometric==2.3.0
pip install pyg_lib torch_scatter torch_sparse torch_cluster torch_spline_conv -f https://data.pyg.org/whl/torch-2.0.0+cu117.html
```

3. install local dependencies under root directory `/TGB`
```
pip install -e .
```




<!-- 
## Getting started

[GitHub Pages](https://pages.github.com) can automatically generate and serve the website for you.
Let's say you have a username/organisation `my-org` and project `my-proj`; if you locate Jekyll source under `docs` folder of master branch in your repo `github.com/my-org/my-proj`, the website will be served on `my-org.github.io/my-proj`.
The good thing about coupling your documentation with the source repo is, whenever you merge features with regarding content to master branch, it will also be published on the webpage instantly.

1. Just [download the source](https://github.com/aksakalli/jekyll-doc-theme/archive/gh-pages.zip) into your repo under `docs` folder.
2. Edit site settings in  `_config.yml` file according to your project. !!! `baseurl` should be your website's relative URI like `/my-proj` !!!
3. Replace `favicon.ico` and `assets/img/TGB_nav.png` with your own logo.

## Writing content

### Docs

Docs are [collections](https://jekyllrb.com/docs/collections/) of pages stored under `_docs` folder. To create a new page:

**1.** Create a new Markdown as `_docs/my-page.md` and write [front matter](https://jekyllrb.com/docs/frontmatter/) & content such as:

```
---
title: My Page
permalink: /docs/my-page/
---

Hello World!
```

**2.** Add the pagename to `_data/docs.yml` file in order to list in docs navigation panel:

```
- title: My Group Title
  docs:
  - my-page
```

### Blog posts

Add a new Markdown file such as `2017-05-09-my-post.md` and write the content similar to other post examples.

### Pages

The homepage is located under `index.html` file. You can change the content or design completely different welcome page for your taste. (You can use [bootstrap components](http://getbootstrap.com/components/))

In order to add a new page, create a new `.html` or `.md` (markdown) file under root directory and link it in `_includes/topnav.html`. -->
