node 'standalone' {
  include jenkins

  jenkins::plugin {
    "blink1" : ;
    "build-name-setter" : ;
    "build-pipeline-plugin" : ;
    "build-with-parameters" : ;
    "disk-usage" : ;
    "git" : ;
    "git-client" : ;
    "github" : ;
    "gitlab-plugin" : ;
    "gradle" : ;
    "sonar" : ;
    "workflow-aggregator" : ;
    "workflow-api" : ;
    "workflow-basic-steps" : ;
    "workflow-cps-global-lib" : ;
    "workflow-cps" : ;
    "workflow-durable-task-step" : ;
    "workflow-job" : ;
    "workflow-scm-step" : ;
    "workflow-step-api" : ;
    "workflow-support" : ;
  }
}
