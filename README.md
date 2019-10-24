# Jekyll Doc Theme

Go to [the website](https://aksakalli.github.io/jekyll-doc-theme/) for detailed information and demo.

## Running locally

You need Ruby and gem before starting, then:

```bash
# install bundler
gem install bundler

# clone the project
git clone https://github.com/aksakalli/jekyll-doc-theme.git
cd jekyll-doc-theme

# install dependencies
bundle install

# run jekyll with dependencies
bundle exec jekyll serve
```

## Docker

Alternatively, you can deploy it using the multi-stage [Dockerfile](Dockerfile)
that serves files from Nginx for better performance in production.

Build the image for your site's `JEKYLL_BASEURL`:

```
docker build --build-arg JEKYLL_BASEURL="/your-base/url" -t jekyll-doc-theme .
```

(or leave it empty for root: `JEKYLL_BASEURL=""`) and serve it:

```
docker run -p 8080:80 jekyll-doc-theme
```

## Projects using Jekyll Doc Theme

* http://teavm.org/
* https://su2code.github.io/
* https://launchany.github.io/mvd-template/
* https://knowit.github.io/kubernetes-workshop/
* https://rec.danmuji.org/
* https://nethesis.github.io/icaro/
* http://ai.cs.ucl.ac.uk/
* http://tizonia.org
* https://lakka-switch.github.io/documentation/
* https://cs.anu.edu.au/cybersec/issisp2018/
* http://www.channotation.org/
* http://nemo.apache.org/
* https://csuf-acm.github.io/
* https://extemporelang.github.io/
* https://media-ed-online.github.io/intro-web-dev-2018spr/
* https://midlevel.github.io/MLAPI/
* https://pulp-platform.github.io/ariane/docs/home/
* https://koopjs.github.io/
* https://developer.apiture.com/
* https://contextmapper.github.io/
* https://www.bruttin.com/CosmosDbExplorer/
* http://mosaic-lopow.github.io/dash7-ap-open-source-stack/
* http://www.vstream.ml/
* http://docs.fronthack.com/
* https://repaircafeportsmouth.org.uk/
* http://brotherskeeperkenya.com/
* https://hschne.at/Fluentast/
* https://zoe-analytics.eu/
* https://uli.kmz-brno.cz/
* https://lime.software/
* https://weft.aka.farm
* https://microros.github.io/
* https://citystoriesucla.github.io/citystories-LA-docs
* http://lessrt.org/
* http://kivik.io/
* https://www.iot-kit.nl/
* http://justindietz.com/
* https://universalsplitscreen.github.io/
* https://docs.oneflowcloud.com/
* https://actlist.silentsoft.org/
* https://teevid.github.io
* https://developer.ipums.org
* https://osmpersia.github.io (right-to-left)
* https://ecmlpkdd2019.org
* https://idle.land
* https://mqless.com
* https://muict-seru.github.io/
* https://www.invoice-x.org
* https://www.devops.geek.nz

## License

Released under [the MIT license](LICENSE).
