rm -rf jars && mkdir -p jars

jar --create --file jars/easytext.analysis.api.jar -C out/easytext.analysis.api .
jar --create --file jars/easytext.analysis.jar -C out/easytext.analysis .
jar --create --file jars/easytext.analysis.coleman.jar -C out/easytext.analysis.coleman .
jar --create --file jars/easytext.cli.jar --main-class=javamodularity.easytext.ci.Main  -C out/easytext.cli .
