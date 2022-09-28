
job ('jib_dsl_example')
{
  Description("esto es una semilla que usa git!")
  scm {
    git('https://github.com/macloujulian/jenkins.job.parametrizado.git', 'main') { node ->
      node / gitConfigName('ExampleUser')
      node / gitConfigEmail('exampleUser@gmail.com')
      }
    }
}