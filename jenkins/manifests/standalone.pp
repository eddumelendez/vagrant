node 'standalone' {
  include jenkins

  jenkins::plugin {
    "artifactdeployer" : ;
    "blink1" : ;
    "build-name-setter" : ;
    "build-pipeline-plugin" : ;
    "build-with-parameters" : ;
    "disk-usage" : ;
    "durable-task" : ;
    "parameterized-trigger" : ;
    "mailer" :
      version => 'latest';
    "jquery" : ;
    "scm-api" : ;
    "matrix-project" : ;
    "ssh-credentials" : ;
    "credentials" :
      version => 'latest';
    "git" : ;
    "github-api" : ;
    "multiple-scms" : ;
    "git-client" : ;
    "git-server" : ;
    "subversion" :
      version => 'latest';
    "mapdb-api" : ;
    "github" : ;
    "gitlab-plugin" : ;
    "gradle" : ;
    "maven-plugin" :
      version => 'latest';
    "sonar" : ;
    "view-job-filters" : ;
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
