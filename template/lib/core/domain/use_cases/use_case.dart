abstract class UseCase<OutputType, InputType> {
  OutputType call(InputType params);
}
