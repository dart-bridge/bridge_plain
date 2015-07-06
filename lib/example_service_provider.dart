part of app;

class ExampleServiceProvider implements ServiceProvider {
  Program program;

  Future setUp() async {
    // Set up service
  }
  
  Future load(Program program) async {
    this.program = program;
    program.addCommand(say_hello_to);
    // Interact with other services
  }
  
  Future run() async {
    // React to the interactions made to this service by other services
  }
  
  Future tearDown() async {
    // Tear down service
  }

  @Command('Say hello to someone')
  @Option(#name, 'Who to say hello to')
  say_hello_to(String name) {
    program.printInfo('Hello, $name');
  }
}
