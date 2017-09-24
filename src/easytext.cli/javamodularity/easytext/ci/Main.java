package javamodularity.easytext.ci;

import java.util.ServiceLoader;
import javamodularity.easytext.analysis.api.Analyzer;
import javamodularity.easytext.analysis.FleschKincaid;


public class Main {

  public static void main(String... args) {
    if (args.length == 0) {
      System.out.println("Please provide a filename as input argument");
      return;
    }

    System.out.println(new FleschKincaid().analysis());

    Iterable<Analyzer> analyzers = ServiceLoader.load(Analyzer.class);
    for (Analyzer analyzer : analyzers) {
      System.out.println(analyzer.getName());
    }
  }

}
