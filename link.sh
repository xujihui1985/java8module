rm -rf image && \

jlink --module-path jars/:$JAVA_HOME/jmods \
      --add-modules easytext.cli \
      --add-modules easytext.analysis.coleman \
	  --launcher easycli=easytext.cli/javamodularity.easytext.ci.Main \
	  --strip-debug \
	  --compress=2 \
	  --output image
